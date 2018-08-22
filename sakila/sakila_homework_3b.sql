-- sakila_homework_3b.sql

use sakila;

-- 3b. Very quickly you realize that entering descriptions for each actor is too much effort. 
--     Delete the `description` column.

ALTER TABLE actor
	DROP COLUMN description;
	