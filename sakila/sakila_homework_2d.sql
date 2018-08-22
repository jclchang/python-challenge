-- sakila_homework_2d.sql

use sakila;

--2d. Using `IN`, display the `country_id` and `country` columns of the following countries: 
--    Afghanistan, Bangladesh, and China:


SELECT	country_id, 
		country
FROM 	country 
WHERE	country IN ( 'Afghanistan', 'Bangladesh', 'China');
