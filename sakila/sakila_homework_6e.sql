-- sakila_homework_6e.sql

use sakila;


-- 6e. Using the tables `payment` and `customer` and the `JOIN` command, 
--     list the total paid by each customer. List the customers alphabetically by last name:

SELECT	c.first_name, 
		c.last_name,
        SUM(p.amount) AS "total amount paid"
FROM	customer	c
JOIN	payment		p
	ON 	c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY c.last_name, c.first_name;

