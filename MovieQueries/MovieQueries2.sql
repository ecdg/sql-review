SELECT *
FROM movies
WHERE year > 2014;

SELECT *
FROM movies
WHERE name LIKE 'Se_en';
/* The _ means you can substitute 
any individual character here without breaking the pattern. 
The names Seven and Se7en both match this pattern */

SELECT *
FROM movies
WHERE name LIKE 'A%';
/* A% matches all movies with names that begin with letter 'A' */

SELECT *
FROM movies
WHERE name LIKE '%man%';
/* any movie that contains the word 'man' 
in its name will be returned in the result */

SELECT *
FROM movies
WHERE name LIKE 'The %';
/* There is a space in between The and %,
we don't want words like 'There', 'They', etc */

SELECT name
FROM movies
WHERE imdb_rating IS NOT NULL;
/* To filter for all movies with an IMDb rating */

SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
/* BETWEEN two letters is not inclusive of the 2nd letter */

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;
/* BETWEEN two numbers is inclusive of the 2nd number */

SELECT *
FROM movies
WHERE year < 1985
    AND genre = 'horror';

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
    AND imdb_rating > 8;

SELECT * 
FROM movies WHERE year > 2014
    OR genre = 'action';

SELECT *
FROM movies
WHERE genre = 'romance'
    OR genre = 'comedy';