/* Instead of: */
SELECT AVG(imdb_rating) 
FROM movies 
WHERE year = 1999; 

SELECT AVG(imdb_rating) 
FROM movies 
WHERE year = 2000; 

SELECT AVG(imdb_rating) 
FROM movies 
WHERE year = 2001;

/* Do this: */
SELECT year, AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;
/* GROUP BY comes after any WHERE statements */

SELECT price, COUNT(*)
FROM fake_apps
GROUP BY price;

SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category
ORDER BY SUM(downloads) DESC;

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY 1
ORDER BY 2 DESC;

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;
/* 1 refers to the first column in our SELECT statement, 
ROUND(imdb_rating). */

SELECT category, price, AVG(downloads)
FROM fake_apps
GROUP BY category, price;

SELECT category, price, AVG(downloads)
FROM fake_apps
GROUP BY 1,2;

SELECT year, genre, COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10;
/* limit the results of a query based 
on values of the individual rows, use WHERE */

/* limit the results of a query based 
on an aggregate property, use HAVING */

/* HAVING statement always comes after GROUP BY,
 but before ORDER BY and LIMIT */
 
SELECT price, ROUND(AVG(downloads)), COUNT(*)
FROM fake_apps
GROUP BY price
HAVING COUNT(*) > 10;