# Overview
- This SQL query analyzes online sales data to provide insights into monthly revenue and order volume.

- Schema
Calculates Monthly Revenue and Order Volume: It groups sales data by year and month, calculating the sum of the amount (monthly revenue) and the count of distinct order_id (monthly order volume) for each month.
Orders Results: The results are ordered chronologically by year and month.
Identifies Top 3 Months by Revenue: A second query identifies the top 3 months with the highest revenue.
- Usage
- order_id: Unique identifier for each order (INT).
- order_date: Date of the order (DATE).
- amount: The total amount of the order (DECIMAL).
- product_id: Identifier for the product purchased (INT).
