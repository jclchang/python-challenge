-- sakila_homework_4a.sql

use sakila;


--  4a. List the last names of actors, as well as how many actors have that last name.

SELECT	last_name, COUNT(*)
FROM 	actor
GROUP BY last_name
ORDER BY last_name;

