-- sakila_homework_2b.sql

use sakila;


-- 2b. Find all actors whose last name contain the letters `GEN`:

SELECT	*
FROM 	actor
WHERE	UPPER(last_name) LIKE '%GEN%';
