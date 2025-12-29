# E-Commerce Funnel & Revenue Leakage Analysis 

## Executive Summary
In this project, I analyzed the end-to-end e-commerce order funnel using the Brazilian OLIST dataset.  
The main focus was to understand how orders move from purchase to delivery, how much revenue is lost due to cancellations, and whether delivery or seller performance is impacting the business.

The analysis shows that the funnel is performing very well with a high conversion rate and very low revenue loss.  
However, delivery delays and seller-level performance differences stand out as areas where operational improvements can be made.

---

## Business Context
Large e-commerce platforms handle thousands of orders every day across many sellers and product categories.  
Even small issues like delayed deliveries or cancellations can affect customer experience and revenue when the scale is high.

The business wants answers to simple but important questions:
- Are most orders getting delivered successfully?
- Is revenue being lost due to cancellations?
- Are delivery delays a problem?
- Which sellers and product categories need attention?

This project reflects a real-world task where a data analyst is expected to answer these questions using historical data.

---

## Project Objective
The goal of this project is to:
- Evaluate order funnel performance
- Measure revenue loss due to cancellations
- Analyze delivery performance
- Identify sellers causing delivery delays
- Present insights through a clear and simple dashboard

---

## Dataset
- Source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
- Level of analysis: Order-level
- Main tables used:
  - Orders
  - Order Items
  - Products

Only the required datasets were used to keep the analysis focused on the business problem.

---

## Tools Used
- Python for data cleaning and preparation  
- MySQL for SQL-based analysis  
- Tableau for dashboard creation and visualization  

---

## Data Preparation
- Cleaned raw CSV files using Python
- Standardized column names and data types
- Handled missing values without dropping important records
- Removed duplicate rows
- Prepared clean datasets for analysis
- Loaded cleaned data into MySQL

---

## Analysis Process
1. Cleaned and validated data using Python  
2. Loaded cleaned data into MySQL  
3. Used SQL to analyze:
   - Funnel performance
   - Order cancellations
   - Revenue impact
   - Delivery timelines
   - Seller performance
4. Created a single order-level analytics table
5. Exported the analytics data
6. Built a Tableau dashboard to present insights

---

## Key KPIs
- Total Orders  
- Funnel Conversion Rate  
- Cancellation Rate  
- Total Revenue  
- Revenue Loss Percentage  

These KPIs give a quick view of overall business health.

---

## Key Insights
- Most orders are delivered successfully, showing a strong funnel performance.
- Order cancellations are very low and do not significantly impact revenue.
- Revenue loss due to cancellations is minimal.
- Delivery delays exist but are not leading to high cancellation rates.
- A small group of sellers takes longer to deliver orders.
- Revenue is concentrated in a few major product categories.

---

## Dashboard Overview
The Tableau dashboard includes:
- Order funnel overview
- Revenue by order status
- Delivery performance analysis
- Revenue contribution by product category
- Seller delivery performance

The dashboard is designed to be simple, clean, and easy to understand.

---

## Conclusion
The business is performing well in terms of order conversion and revenue.  
The main opportunity for improvement is reducing delivery delays, especially by working with slower sellers.

---

## What This Project Demonstrates
- End-to-end data analyst workflow
- Practical use of SQL for business analysis
- KPI-driven decision making
- Clear and focused dashboard storytelling

---

## Author
Priyanka Lakra
Data Analyst Fresher 
SQL | Python | Tableau
