-- sakila_homework_4b.sql

use sakila;


-- 4b. List last names of actors and the number of actors who have that last name, 
--     but only for names that are shared by at least two actors

SELECT	last_name, COUNT(*)
FROM 	actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY last_name;
