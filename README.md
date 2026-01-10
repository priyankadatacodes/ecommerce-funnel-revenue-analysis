# **E-Commerce Funnel & Revenue Leakage Analysis**
![Python](https://img.shields.io/badge/Library-Python-150458)-![SQL](https://img.shields.io/badge/SQL-MySQL-orange)-![Dashboard](https://img.shields.io/badge/Dashboard-Tableau-blue)

## **Executive Summary**
This project analyzes the end-to-end e-commerce order funnel using the Brazilian OLIST dataset, with a focus on order completion, revenue leakage, delivery timelines, and seller performance.  
The analysis shows that the overall funnel is strong, with most orders successfully delivered and minimal revenue loss due to cancellations, while delivery delays vary across sellers and can impact customer experience at scale.  
The findings help identify where the business is performing well and where operational improvements—especially around delivery performance—can improve outcomes without affecting revenue or conversion rates.  

## **Why I Built This Project**
Large e-commerce platforms handle thousands of orders daily across multiple sellers and product categories.  
Even when conversion looks healthy, operational issues after purchase—such as delivery delays or cancellations—can still affect customer trust and long-term business value.  
I built this project to understand:  
- Whether revenue is actually being realized after orders are placed  
- If cancellations or delays are creating hidden business risks  
- Which sellers or categories need closer monitoring  

This mirrors a real-world scenario where a data analyst supports operations and business teams, not just reporting metrics.  

## **Business Context**
In marketplace-based e-commerce:  
- Orders depend on multiple sellers  
- Delivery timelines directly affect customer experience  
- Small inefficiencies can scale into large operational issues  

The business needs clear visibility into:  
- Funnel health after purchase  
- Revenue loss risks  
- Seller-level delivery performance  

This analysis supports data-driven operational decision-making.  

## **Problem Statement**
Analyze order-level e-commerce data to evaluate funnel performance, quantify revenue loss due to cancellations, assess delivery timelines, and identify seller-level operational issues that could impact customer experience and business efficiency.  

## **Hypotheses**
Before starting the analysis, the following hypotheses were framed:  
- Most orders successfully move from purchase to delivery  
- Revenue loss due to cancellations is limited  
- Delivery delays vary significantly by seller  
- A small number of product categories contribute most of the revenue  

These hypotheses helped guide the analysis and keep it focused on business outcomes.  

## **Dataset Overview**
- **Source**: Brazilian OLIST E-commerce Dataset (https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce))  
- **Level of Analysis**: Order-level  
- **Main tables used**:
  - Orders  
  - Order Items  
  - Products  

Only relevant tables were used to keep the analysis aligned with the business objective and avoid unnecessary complexity.  

## **Tools Used**
- **Python**
  - Data cleaning and preparation  
  - Handling missing values and duplicates  
- **MySQL**
  - Funnel analysis  
  - Revenue and cancellation analysis  
  - Delivery timeline calculations  
- **Tableau**
  - KPI dashboards  
  - Operational performance visualization  

## **Data Preparation**
Using Python, I:  
- Cleaned raw CSV files  
- Standardized column names and data types  
- Handled missing values without dropping important records  
- Removed duplicate rows  
- Prepared clean, analysis-ready datasets  

The cleaned data was then loaded into MySQL for analysis.  

## **Analysis Approach**
The analysis followed a clear, step-by-step workflow:  
1. Data cleaning and validation using Python  
2. Loading cleaned data into MySQL  
3. SQL-based analysis of:
   - Order funnel performance  
   - Cancellations and revenue impact  
   - Delivery timelines  
   - Seller-level performance  
4. Creation of a single order-level analytics table  
5. Export of final metrics  
6. Tableau dashboard creation for business reporting  

## **Key KPIs Tracked**
- Total Orders  
- Funnel Conversion Rate  
- Cancellation Rate  
- Total Revenue  
- Revenue Loss Percentage  

These KPIs provide a quick snapshot of overall business and operational health.  

## **Key Insights**
- Most orders are delivered successfully, indicating a strong and stable funnel.  
- Order cancellations are low and do not significantly impact revenue.  
- Revenue loss due to cancellations is minimal.  
- Delivery delays exist but are not strongly linked to cancellations.  
- A small group of sellers consistently takes longer to deliver orders.  
- Revenue is concentrated in a limited number of major product categories.  

## **Business Impact**
- The core order funnel is healthy and reliable.  
- Revenue leakage from cancellations is not a major concern.  
- Delivery performance is the primary area for operational improvement.  
- Seller-level monitoring can improve customer experience without affecting revenue flow.  

## **Recommendations**

### **Short-Term**
- Monitor delivery timelines for slower sellers  
- Review seller performance on a regular basis  

### **Long-Term**
- Introduce delivery SLAs or incentives for timely fulfillment  
- Focus operational improvements on high-revenue categories  
- Use dashboards for continuous seller performance tracking  

## **Dashboard Overview**
The Tableau dashboard provides:  
- Order funnel overview  
- Revenue by order status  
- Delivery performance analysis  
- Revenue contribution by product category  
- Seller-level delivery performance  

The dashboard is designed to be simple, clean, and easy for business teams to interpret.  

## **Final Takeaway**
The business is performing well in terms of order completion and revenue realization.  
The main opportunity lies in improving delivery timelines, particularly by addressing seller-level inefficiencies, to enhance customer experience without impacting conversion or revenue.  

## **What This Project Demonstrates**
- End-to-end data analyst workflow  
- Practical SQL-based business analysis  
- KPI-driven decision-making  
- Clear, business-focused dashboard storytelling  

## **Author**
**Priyanka Lakra**  
Data Analyst (Entry-Level)  
SQL | Python | Tableau  
