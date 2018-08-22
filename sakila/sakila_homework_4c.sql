-- sakila_homework_4c.sql

use sakila;


-- 4c. The actor `HARPO WILLIAMS` was accidentally entered in the `actor` table as 
--     `GROUCHO WILLIAMS`. Write a query to fix the record.


UPDATE	actor
SET		first_name = 'HARPO'
WHERE	last_name = 'WILLIAMS'
AND		first_name = 'GROUCHO';

