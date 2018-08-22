-- sakila_homework_7c.sql

use sakila;

-- 7c. You want to run an email marketing campaign in Canada, for which you will need the 
--     names and email addresses of all Canadian customers. Use joins to retrieve this 
--     information.


SELECT	cus.customer_id,
		cus.first_name, 
        cus.last_name,
        cus.email,
        country.country
FROM	customer  cus
JOIN 	address	  addr
	ON 	cus.address_id = addr.address_id
JOIN	city
	ON 	addr.city_id = city.city_id
JOIN	country
	ON 	city.country_id = country.country_id
WHERE	UPPER(country.country) = 'CANADA';
 
 