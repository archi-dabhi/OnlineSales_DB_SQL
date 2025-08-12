CREATE DATABASE Online_sales;

Use Online_sales;

CREATE TABLE orders (
	order_id INT,
    order_date DATE,
    amount DECIMAL (10,2),
    product_name VARCHAR(100)
);

INSERT INTO orders(order_id, order_date,amount, product_name) VALUES
-- 2023 Data
(1, '2023-01-05', 250.00, 'Laptop'),
(2, '2023-01-12', 120.50, 'Mouse'),
(3, '2023-01-20', 899.99, 'Smartphone'),
(4, '2023-02-03', 350.00, 'Tablet'),
(5, '2023-02-14', 75.00, 'Keyboard'),
(6, '2023-02-25', 199.99, 'Smartwatch'),
(7, '2023-03-01', 1500.00, 'TV'),
(8, '2023-03-15', 45.00, 'Charger'),
(9, '2023-03-28', 299.99, 'Headphones'),
(10, '2023-04-05', 850.00, 'Laptop'),
(11, '2023-04-18', 60.00, 'Mouse'),
(12, '2023-04-29', 450.00, 'Tablet'),
(13, '2023-05-02', 999.99, 'Smartphone'),
(14, '2023-01-04', 249.99, 'Mouse'),

-- 2024 Data
(15, '2024-01-18', 1200.00, 'Laptop'),
(16, '2024-02-02', 350.00, 'Smartwatch'),
(17, '2024-02-21', 450.00, 'Tablet'),
(18, '2024-03-05', 1500.00, 'TV'),
(19, '2024-03-18', 60.00, 'Mouse'),
(20, '2024-04-08', 850.00, 'Laptop'),
(21, '2024-04-22', 75.00, 'Keyboard'),
(22, '2024-05-03', 999.99, 'Smartphone'),
(23, '2024-05-17', 350.00, 'Smartwatch'),
(24, '2024-06-10', 1200.00, 'Laptop'),
(25, '2024-06-25', 75.00, 'Charger'),
(26, '2024-07-04', 150.00, 'Keyboard'),
(27, '2024-07-21', 899.00, 'Tablet'),
(28, '2024-08-12', 1200.50, 'Laptop'),
(29, '2024-08-29', 65.00, 'Mouse'),
(30, '2024-09-15', 350.00, 'Smartwatch');

-- Use EXTRACT(MONTH FROM order_date) for month.

SELECT EXTRACT(MONTH FROM order_date) AS month, COUNT(*) AS orders
FROM orders
GROUP BY month;




-- GROUP BY year/month.

SELECT YEAR(order_date) AS year, MONTH(order_date) AS month
FROM orders
GROUP BY year, month;



-- Use SUM() for revenue.

SELECT SUM(amount) as total_revenue
FROM orders;




-- COUNT(DISTINCT order_id) for volume.

SELECT COUNT(DISTINCT order_id) as total_orders
FROM orders;


-- Use ORDER BY for sorting.

SELECT * FROM orders
ORDER BY order_date ASC;


-- Limit results for specific time periods

SELECT * FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-06-30';


