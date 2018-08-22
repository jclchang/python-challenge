-- sakila_homework_8a.sql

use sakila;


-- 8a. In your new role as an executive, you would like to have an easy way of viewing the 
--     Top five genres by gross revenue. Use the solution from the problem above to create 
--     a view. If you haven't solved 7h, you can substitute another query to create a view.

CREATE VIEW top_five_genre_by_gross_revenue
AS (
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
	LIMIT 5
	);