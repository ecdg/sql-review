SELECT year, number
FROM babies
WHERE name = 'Lee' AND gender = 'F';

SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%'
LIMIT 20;

SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%'
ORDER BY name ASC
LIMIT 20;

SELECT name, gender, number
FROM babies
WHERE year = 1880
ORDER BY number DESC
LIMIT 10;

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
AND price = '$$$';

SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

SELECT *
FROM nomnom
WHERE health IS NULL;

SELECT *
FROM nomnom
WHERE health IS NULL
ORDER BY review DESC;

SELECT title, publisher
FROM news
ORDER BY title ASC;

SELECT *
FROM news
WHERE title LIKE '%bitcoin%';

SELECT *
FROM news
WHERE category = 'b'
ORDER BY timestamp DESC
LIMIT 20;

SELECT name, review
FROM nomnom
ORDER BY review DESC
LIMIT 5;

SELECT name, review
FROM nomnom
WHERE cuisine = 'Chinese'
ORDER BY review DESC
LIMIT 5;

SELECT *
FROM news
WHERE publisher = 'Wall Street Journal' AND category = 't'
ORDER BY timestamp DESC;