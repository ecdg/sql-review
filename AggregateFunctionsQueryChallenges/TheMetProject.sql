SELECT *
FROM met
LIMIT 10;

SELECT COUNT(*)
FROM met
WHERE department = 'American Decorative Arts';

SELECT COUNT(*)
FROM met
WHERE department LIKE '%American Decorative Arts%';

SELECT COUNT(*)
FROM met;

SELECT COUNT(*)
FROM met
WHERE category LIKE '%celery%';

SELECT MIN(date)
FROM met;

SELECT title, medium, date
FROM met
WHERE date LIKE '%1600%';

SELECT country, COUNT(*)
FROM met
GROUP BY country
ORDER BY 2 DESC
LIMIT 10;

SELECT country, COUNT(*)
FROM met
WHERE country IS NOT NULL
GROUP BY country
ORDER BY 2 DESC
LIMIT 10;

SELECT category, COUNT(*)
FROM met
GROUP BY category
HAVING COUNT(*) > 100
ORDER BY 2 DESC;

SELECT medium, COUNT(*)
FROM met
WHERE medium LIKE '%gold%' OR medium LIKE '%silver%'
GROUP BY 1
ORDER BY 2 DESC;

SELECT CASE
    WHEN medium LIKE '%gold%' THEN 'Gold'
  WHEN medium LIKE '%silver%' THEN 'Silver'
  ELSE NULL
END AS 'Bling',
COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;








