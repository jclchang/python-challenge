-- sakila_homework_6a.sql

use sakila;

-- 6a. Use `JOIN` to display the first and last names, as well as the address, of each staff 
--     member. Use the tables `staff` and `address`:


SELECT	s.first_name, 
		s.last_name, 
        a.address, 
        a.address2,
        a.district
FROM	staff 	s
JOIN 	address a
	ON 	s.address_id  =  a.address_id;
	