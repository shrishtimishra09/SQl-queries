CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 120.00, 101),
(2, '2023-01-20', 250.00, 102),
(3, '2023-02-10', 100.00, 103),
(4, '2023-02-18', 300.00, 101),
(5, '2023-03-05', 500.00, 104),
(6, '2023-03-25', 200.00, 105),
(7, '2023-04-12', 350.00, 106),
(8, '2023-04-20', 150.00, 102),
(9, '2023-05-02', 180.00, 107),
(10,'2023-05-15', 220.00, 108);
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;


