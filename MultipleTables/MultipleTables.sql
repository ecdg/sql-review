SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
JOIN subscriptions
    ON orders.subscription_id = subscriptions.subscription_id;

SELECT *
FROM orders
JOIN subscriptions
    ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';

SELECT COUNT(*)
FROM newspaper
JOIN online
      ON newspaper.id = online.id;

SELECT *
FROM newspaper
LEFT JOIN online
    ON newspaper.id = online.id;

SELECT *
FROM newspaper
LEFT JOIN online
    ON newspaper.id = online.id
WHERE online.id IS NULL;

SELECT shirts.shirt_color,
   pants.pants_color
FROM shirts
CROSS JOIN pants;
/* Combine all rows of one table with all rows of another table */

SELECT shirts.shirt_color, pants.pants_color, socks.sock_color
FROM shirts
CROSS JOIN pants
CROSS JOIN socks;
/* 3 shirts, 2 pants, 6 socks = 36 c */

SELECT *
FROM newspaper
CROSS JOIN months;

SELECT *
FROM newspaper
CROSS JOIN months
WHERE start_month <= month
    AND end_month >= month;
/* This will select all months where a user was subscribed */

SELECT month, COUNT(*)
FROM newspaper
CROSS JOIN months
WHERE start_month <= month
    AND end_month >= month
GROUP BY month;
/* Aggregate over each month to count the number of subscribers */

SELECT *
FROM newspaper
UNION
SELECT *
FROM online;
/* Stack one dataset on top of the other *
* Tables must have the same number of columns *
* The columns must have the same data types in the same order as the first table *
* Duplicate rows will be excluded */

WITH previous_query AS (
    SELECT customer_id, COUNT(subscription_id) AS 'subscriptions'
FROM orders
GROUP BY customer_id
)
SELECT customers.customer_name,
	previous_query.subscriptions
FROM previous_query
JOIN customers
    ON previous_query.customer_id = customers.customer_id;