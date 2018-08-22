-- sakila_homework_7b.sql

use sakila;

-- 7b. Use subqueries to display all actors who appear in the film `Alone Trip`.

SELECT	actor_id, 
		first_name, 
        last_name
FROM	actor
WHERE	actor_id IN (SELECT	actor_id
					FROM	film_actor  
					WHERE	film_id IN (SELECT	film_id
										FROM	film 	
										WHERE	title = 'Alone Trip'));
										