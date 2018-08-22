-- sakila_homework_7f.sql

use sakila;

-- 7f. Write a query to display how much business, in dollars, each store brought in.


SELECT	st.store_id,
		SUM(p.amount) AS 'total revenue'
FROM	payment		p
JOIN	staff		sf
	ON 	p.staff_id = sf.staff_id
JOIN 	store		st
	ON 	sf.store_id = st.store_id
GROUP BY st.store_id;
