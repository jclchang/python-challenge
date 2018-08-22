-- sakila_homework_7h.sql

use sakila;

-- 7h. List the top five genres in gross revenue in descending order. 
--     (**Hint**: you may need to use the following tables: category, film_category, 
--      inventory, payment, and rental.)

SELECT	c.name, 
		SUM(amount) AS 'Gross Revenue'
FROM	payment	p
JOIN	rental	r
	ON 	p.rental_id = r.rental_id
JOIN	inventory	i
	ON 	r.inventory_id = i.inventory_id
JOIN 	film_category 	fc
	ON 	i.film_id = fc.film_id
JOIN 	category c
	ON 	fc.category_id = c.category_id
GROUP BY c.name
ORDER BY SUM(amount) DESC
LIMIT 5;
