-- sakila_homework_6b.sql

use sakila;


-- 6b. Use `JOIN` to display the total amount rung up by each staff member in August of 2005. 
--     Use tables `staff` and `payment`.


SELECT	s.staff_id, 
		s.first_name,
        s.last_name,
        sum(p.amount)
FROM	payment 	p
JOIN	staff		s
	ON 	p.staff_id = s.staff_id
WHERE	p.payment_date BETWEEN '2005-08-01' and '2005-08-31'
GROUP BY s.staff_id, s.first_name, s.last_name;
