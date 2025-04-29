# TASK_6
# Sales Trend Analysis Using SQL – Flipkart Dataset

## Task Overview

This project is part of a Data Analyst internship (Task 6), focused on performing **sales trend analysis** using SQL aggregation functions. The main goal is to analyze **monthly revenue and order volume** from a Flipkart-style e-commerce dataset.

## Tools Used
- MySQL (can also use PostgreSQL or SQLite)
- SQL Aggregation Functions

## Dataset Summary

Table: `flipkart`  
Columns:
- `order_id` – Order identifier
- `customer_name` – Name of the buyer
- `product_name` – Product purchased
- `product_id` – Product identifier
- `order_date` – Date of order (DATE)
- `amount` – Transaction amount (INR)
- `address` – Shipping address

## Objective

Analyze the dataset to derive:
- Total monthly **revenue** (using `SUM(amount)`)
- Monthly **order volume** (using `COUNT(DISTINCT order_id)`)

## SQL Hints

```sql
-- Extracting month and year for grouping
SELECT 
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM flipkart
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

Use EXTRACT() to pull out year and month.

Aggregate using SUM() for revenue.

Use COUNT(DISTINCT order_id) to count unique orders.

Apply ORDER BY for chronological sorting.

Use LIMIT to get top N months by revenue.

## Sample Analysis Questions
What is the revenue trend over the months?

Which month had the highest number of orders?

What are the top 3 revenue-generating months?

How do sales vary across the year?

## Deliverables
flipkart_sales_output.sql – Contains schema creation, data insertion, and query base.

Query results (you can export from MySQL Workbench)

README.md – This file explaining the task and approach.

## Interview Prep Insights
COUNT(*) vs COUNT(DISTINCT col) – All rows vs unique values.

Aggregate Functions – SUM, COUNT, AVG, MIN, MAX.

Handling NULLs – Use COALESCE() to handle missing values in aggregates.

GROUP BY vs ORDER BY – Grouping data for aggregation vs sorting output
