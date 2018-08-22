-- sakila_homework_4d.sql

use sakila;


-- 4d. Perhaps we were too hasty in changing `GROUCHO` to `HARPO`. It turns out that `GROUCHO` 
--     was the correct name after all! In a single query, if the first name of the actor is 
--     currently `HARPO`, change it to `GROUCHO`.


SET SQL_SAFE_UPDATES = 0;

UPDATE	actor
SET		first_name = 'GROUCHO'
WHERE	first_name = 'HARPO';
