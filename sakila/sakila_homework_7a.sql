-- sakila_homework_7a.sql

use sakila;


-- 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. 
--     As an unintended consequence, films starting with the letters `K` and `Q` have 
--     also soared in popularity. Use subqueries to display the titles of movies starting 
--     with the letters `K` and `Q` whose language is English.

SELECT	title
FROM	film
WHERE	title LIKE 'Q%' 
OR 		title LIKE 'K%'
AND 	language_id IN (SELECT	language_id
						FROM 	language
                        WHERE	name = 'English');
						