-- sakila_homework_7e.sql

use sakila;


-- 7e. Display the most frequently rented movies in descending order.

SELECT	f.film_id, 
		f.title,
        COUNT(r.rental_id) AS 'total rental count'
FROM	rental		r
JOIN	inventory 	i
	ON	r.inventory_id = i.inventory_id
jOIN	film		f
	ON	i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY COUNT(r.rental_id) DESC;
