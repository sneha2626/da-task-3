CREATE DATABASE superstore;
USE superstore;
CREATE TABLE superstore_orders (
    row_id INT,
    order_id VARCHAR(20),
    order_date VARCHAR(20), 
    ship_date VARCHAR(20),   
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(200),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);
SELECT COUNT(*) FROM superstore_orders;
SELECT * FROM superstore_orders limit 10;
UPDATE superstore_orders
SET order_date = STR_TO_DATE(order_date, '%m/%d/%Y'),
    ship_date = STR_TO_DATE(ship_date, '%m/%d/%Y');
ALTER TABLE superstore_orders
MODIFY order_date DATE,
MODIFY ship_date DATE;
SELECT order_date, ship_date
FROM superstore_orders
LIMIT 5;
-- basic filtering and sorting 
-- find all technology products
SELECT * FROM superstore_orders
WHERE category = 'Technology';
-- top 10 highest sales
SELECT product_name, sales
FROM superstore_orders
ORDER BY sales DESC
LIMIT 10;
-- AGGREGATE REPORTS
-- SALES BY CATEGORY
SELECT category, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category;
-- PROFIT BY REGION
SELECT region, SUM(profit) AS total_profit
FROM superstore_orders
GROUP BY region;
-- COUNT OF ORDERS BY SEGMENT
SELECT segment, COUNT(*) AS total_orders
FROM superstore_orders
GROUP BY segment;
-- APPLY HAVING ON GROUP DATA
SELECT category, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category
HAVING SUM(sales) > 100000;
-- BETWEEN AND LIKE EXAMPLE 
-- SALES IN JAN 2017
SELECT *
FROM superstore_orders
WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';
-- CUSTOMERS WHOSE NAME START WITH A  
SELECT *
FROM superstore_orders
WHERE customer_name LIKE 'A%';
SELECT category, SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY category;