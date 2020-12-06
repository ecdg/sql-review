SELECT COUNT(*)
FROM fake_apps;

SELECT COUNT(*)
FROM fake_apps
WHERE price = 0;

SELECT COUNT(*)
FROM fake_apps
WHERE price = 0.0;
/* COUNT(): count the number of rows */

SELECT SUM(downloads)
FROM fake_apps;
/* SUM(): the sum of the values in a column */

SELECT MAX(downloads)
FROM fake_apps;

SELECT MIN(downloads)
FROM fake_apps;

SELECT MAX(price)
FROM fake_apps;
/* MAX()/MIN(): the largest/smallest value */

SELECT AVG(downloads)
FROM fake_apps;

SELECT AVG(price)
FROM fake_apps;
/* AVG(): the average of the values in a column */

SELECT name, ROUND(price, 0)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
FROM fake_apps;
/* ROUND(): round the values in the column */
