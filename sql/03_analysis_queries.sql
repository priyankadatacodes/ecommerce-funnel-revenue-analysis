USE olist_db;

/* 1. DATA SANITY CHECKS */

-- 1.1 Check total rows in each table
SELECT COUNT(*) AS orders_rows FROM orders_clean;
SELECT COUNT(*) AS items_rows FROM order_items_clean;
SELECT COUNT(*) AS products_rows FROM products_clean;
SELECT COUNT(*) AS payments_rows FROM order_payments_clean;

-- 1.2 Check order funnel distribution
-- Understand order distribution across funnel stages
SELECT
    order_status,
    COUNT(*) AS orders
FROM orders_clean
GROUP BY order_status;

/* 2. FUNNEL ANALYSIS */

-- 2.1 Total unique orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM orders_clean;

-- 2.2 Orders at each funnel stage
-- Count how many orders reached each stage
-- Used later for funnel visualization
SELECT
    order_status,
    COUNT(DISTINCT order_id) AS orders
FROM orders_clean
GROUP BY order_status
ORDER BY orders DESC;

-- 2.3 Funnel conversion rate
-- Percentage of orders that were successfully delivered
SELECT
    ROUND(
        SUM(order_status = 'delivered') * 100.0
        / COUNT(*),
        2
    ) AS funnel_conversion_pct
FROM orders_clean;

/* 3. CANCELLATION ANALYSIS */

-- 3.1 Total cancelled or unavailable orders
-- Count orders that never completed the funnel
SELECT
    COUNT(*) AS cancelled_orders
FROM orders_clean
WHERE order_status IN ('canceled', 'unavailable');

-- 3.2 Cancellation rate
-- Percentage of orders that were cancelled or unavailable
SELECT
    ROUND(
        SUM(order_status IN ('canceled','unavailable')) * 100.0
        / COUNT(*),
        2
    ) AS cancellation_rate_pct
FROM orders_clean;

/* 4. DELIVERY ANALYSIS */

-- 4.1 Average delivery time
-- Calculate average delivery days
-- Only for delivered orders
-- NULL delivery dates are excluded 
SELECT
    ROUND(
        AVG(
            DATEDIFF(
                order_delivered_customer_date,
                order_purchase_timestamp
            )
        ),
        2
    ) AS avg_delivery_days
FROM orders_clean
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL;

-- 4.2 Delayed vs on-time deliveries
SELECT
    CASE
        WHEN DATEDIFF(
            order_delivered_customer_date,
            order_purchase_timestamp
        ) > 10
        THEN 'Delayed'
        ELSE 'On-Time'
    END AS delivery_status,
    COUNT(*) AS orders
FROM orders_clean
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
GROUP BY delivery_status;

/* 5. REVENUE ANALYSIS */

-- 5.1 Order-level revenue
-- Aggregate item prices to get order-level revenue
SELECT
    order_id,
    SUM(price) AS order_value
FROM order_items_clean
GROUP BY order_id;

-- 5.2 Total delivered revenue
-- Revenue generated from successfully delivered orders
SELECT
    ROUND(SUM(oi.price), 2) AS delivered_revenue
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered';

-- 5.3 Revenue lost due to cancellations
-- Revenue potential lost because orders were cancelled
SELECT
    ROUND(SUM(oi.price), 2) AS revenue_lost
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id
WHERE o.order_status IN ('canceled','unavailable');

-- 5.4 Revenue loss percentage
-- Percentage of total revenue lost due to cancellations
SELECT
    ROUND(
        SUM(
            CASE
                WHEN o.order_status IN ('canceled','unavailable')
                THEN oi.price
            END
        ) * 100.0
        / SUM(oi.price),
        2
    ) AS revenue_loss_pct
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id;

/* 6. SELLER AND CATEGORY ANALYSIS */

-- 6.1 Seller-wise average delivery time
-- Identify sellers contributing to delivery delays
SELECT
    oi.seller_id,
    ROUND(
        AVG(
            DATEDIFF(
                o.order_delivered_customer_date,
                o.order_purchase_timestamp
            )
        ),
        2
    ) AS avg_delivery_days
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY oi.seller_id
ORDER BY avg_delivery_days DESC;

-- 6.2 Category-wise revenue loss
SELECT
    p.product_category_name,
    ROUND(SUM(oi.price), 2) AS revenue_lost
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id
JOIN products_clean p
    ON oi.product_id = p.product_id
WHERE o.order_status IN ('canceled','unavailable')
GROUP BY p.product_category_name
ORDER BY revenue_lost DESC;
