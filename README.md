# da-task-3
Verify Import & Data View
Query:

SELECT * FROM superstore_orders LIMIT 10;

Meaning: Shows first 10 rows to confirm data loaded correctly.

Count Total Records
Query:

SELECT COUNT(*) FROM superstore_orders;

Meaning: Confirms total rows imported match CSV file row count.

Filter Records (WHERE Clause)
Query:

SELECT * FROM superstore_orders WHERE category = 'Technology';

Meaning: Filters all records belonging to the Technology category.

Sort Data (ORDER BY Clause)
Query:

SELECT product_name, sales FROM superstore_orders ORDER BY sales DESC LIMIT 10;

Meaning: Shows top 10 products with highest sales.

Grouping & Aggregation (GROUP BY + SUM & COUNT)
Query 1: Total Sales by Category

SELECT category, SUM(sales) AS total_sales FROM superstore_orders GROUP BY category;

Meaning: Summarizes total revenue per category.

Query 2: Profit by Region

SELECT region, SUM(profit) AS total_profit FROM superstore_orders GROUP BY region;

Meaning: Shows which regions are most profitable.

Query 3: Order Count by Segment

SELECT segment, COUNT(*) AS total_orders FROM superstore_orders GROUP BY segment;

Meaning: Shows number of orders from each market segment.

Filtered Aggregation (HAVING Clause)
Query:

SELECT category, SUM(sales) AS total_sales FROM superstore_orders GROUP BY category HAVING SUM(sales) > 100000;

Meaning: Displays only categories generating more than 100K revenue.

Date Range Filtering (BETWEEN Clause)
Query:

SELECT * FROM superstore_orders WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';

Meaning: Returns orders placed in January 2017.

Pattern Search (LIKE Clause)
Query:

SELECT * FROM superstore_orders WHERE customer_name LIKE 'A%';

Meaning: Finds customers whose names start with ‘A’.
