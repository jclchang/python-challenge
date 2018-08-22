-- sakila_homework_6d.sql

use sakila;

-- 6d. How many copies of the film `Hunchback Impossible` exist in the inventory system?


SELECT	f.title, count(*) AS copy
FROM 	film  f
JOIN 	inventory i
	ON 	f.film_id = i.film_id
WHERE	f.title = 'Hunchback Impossible'
GROUP BY f.title;
