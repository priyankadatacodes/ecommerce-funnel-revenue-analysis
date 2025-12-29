use olist_db;
CREATE TABLE olist_orders_analytics AS
SELECT
    o.order_id,
    o.order_status,
    DATE(o.order_purchase_timestamp) AS order_date,

    CASE
        WHEN o.order_status = 'delivered'
        THEN DATEDIFF(
            o.order_delivered_customer_date,
            o.order_purchase_timestamp
        )
        ELSE NULL
    END AS delivery_days,

    oi.seller_id,
    p.product_category_name,
    SUM(oi.price) AS order_value
FROM orders_clean o
JOIN order_items_clean oi
    ON o.order_id = oi.order_id
JOIN products_clean p
    ON oi.product_id = p.product_id
GROUP BY
    o.order_id,
    o.order_status,
    order_date,
    delivery_days,
    oi.seller_id,
    p.product_category_name;






SELECT COUNT(*) FROM olist_orders_analytics;
SELECT * FROM olist_orders_analytics LIMIT 5;
