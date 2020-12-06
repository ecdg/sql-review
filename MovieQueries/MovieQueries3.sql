SELECT *
FROM movies
ORDER BY name;

SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;

SELECT *
FROM movies 
ORDER BY imdb_rating DESC 
LIMIT 3;

SELECT name, 
CASE 
	WHEN imdb_rating > 8 THEN 'Fantastic' 
	WHEN imdb_rating > 6 THEN 'Poorly Received' 
	ELSE 'Avoid at All Costs' 
END AS 'Review' 
FROM movies;

SELECT name,
CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy' THEN 'Chill'
  ELSE 'Intense'
END AS 'Mood'
FROM movies;