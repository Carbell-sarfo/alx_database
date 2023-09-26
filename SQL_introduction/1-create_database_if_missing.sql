-- This SQL file contains a set of queries to retrieve customer information.

-- Query 1: Retrieve the list of customers who made a purchase in the last 30 days.
SELECT first_name, last_name, email
FROM customers
WHERE purchase_date >= DATE_SUB(NOW(), INTERVAL 30 DAY);

-- Query 2: Retrieve the total revenue generated from these customers.
SELECT SUM(order_total) AS total_revenue
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE purchase_date >= DATE_SUB(NOW(), INTERVAL 30 DAY)
);

-- Query 3: Find the most active customer based on the number of orders.
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 1;

-- Feel free to add more queries and comments as needed.