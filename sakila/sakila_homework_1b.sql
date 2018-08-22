-- sakila_homework_1b.sql

use sakila;

-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`

SELECT	UPPER(CONCAT(first_name, ' ',  last_name))
FROM	actor;