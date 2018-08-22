-- sakila_homework_7d.sql

use sakila;


-- 7d. Sales have been lagging among young families, and you wish to target all family 
--     movies for a promotion. Identify all movies categorized as family films.

 SELECT	f.film_id,
		f.title
 FROM	film			f
 JOIN 	film_category	fc
	ON 	f.film_id = fc.film_id
 JOIN 	category		cat
	ON 	fc.category_id = cat.category_id
 WHERE	UPPER(cat.name) = 'FAMILY';
 
 