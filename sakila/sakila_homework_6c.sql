-- sakila_homework_6c.sql

use sakila;


-- 6c. List each film and the number of actors who are listed for that film. 
--     Use tables `film_actor` and `film`. Use inner join.


SELECT	f.film_id,
		f.title,
        COUNT(DISTINCT(fa.actor_id))
FROM 	film 		f
JOIN 	film_actor	fa
	ON 	f.film_id = fa.film_id
GROUP BY f.film_id, f.title;
