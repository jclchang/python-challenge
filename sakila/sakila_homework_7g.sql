-- sakila_homework_7g.sql

use sakila;

-- 7g. Write a query to display for each store its store ID, city, and country.

SELECT	st.store_id,
		city.city,
        country.country
FROM 	store 	st
JOIN	address addr
	ON 	st.address_id = addr.address_id
JOIN 	city 
	ON 	addr.city_id = city.city_id
JOIN	country
	ON 	city.country_id = country.country_id;
	