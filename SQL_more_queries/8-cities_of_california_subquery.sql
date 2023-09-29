-- Script: cities_of_california_subquery.sql
-- Description: This script lists all the cities of California from the 'hbtn_0d_usa' database without using the JOIN keyword.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- List the cities of California using subqueries
SELECT cities.id, cities.name
FROM cities
WHERE cities.state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY cities.id;