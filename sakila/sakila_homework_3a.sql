-- sakila_homework_3a.sql

use sakila;

-- 3a. You want to keep a description of each actor. You don't think you will be performing 
--     queries on a description, so create a column in the table `actor` named `description` and use the data type `BLOB` 
--     (Make sure to research the type `BLOB`, as the difference between it and `VARCHAR` are significant).


ALTER TABLE actor ADD	
	description BLOB;
	