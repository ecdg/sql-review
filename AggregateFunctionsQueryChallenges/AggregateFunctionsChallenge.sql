SELECT COUNT(*)
FROM users
WHERE email LIKE '%.com';

SELECT first_name, COUNT(*)
FROM users
GROUP BY first_name
ORDER BY COUNT(*) DESC;

SELECT ROUND(watch_duration_in_minutes,0) AS 'duration', COUNT(*) AS 'count'
FROM watch_history
GROUP BY duration
ORDER BY duration;
/* Using 'AS' is optional */

SELECT user_id, SUM(amount)'total'
FROM payments
WHERE status = 'paid'
GROUP BY 1
ORDER BY 2 DESC;

SELECT user_id, SUM(watch_duration_in_minutes)
FROM watch_history
GROUP BY 1
HAVING SUM(watch_duration_in_minutes) > 400;

SELECT user_id, SUM(watch_duration_in_minutes)'total_duration'
FROM watch_history
GROUP BY 1
HAVING total_duration > 400;

SELECT ROUND(SUM(watch_duration_in_minutes), 0)'total_duration'
FROM watch_history;

SELECT pay_date, SUM(amount)
FROM payments
WHERE status = 'paid'
GROUP BY pay_date
ORDER BY 2 DESC;

SELECT ROUND(AVG(amount),2)'average payment'
FROM payments
WHERE status = 'paid';

SELECT MAX(watch_duration_in_minutes), MIN(watch_duration_in_minutes)
FROM watch_history;




