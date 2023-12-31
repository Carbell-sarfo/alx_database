-- Script: cities_of_california_no_join.sql
-- Description: This script lists all the cities of California from the 'hbtn_0d_usa' database without using the JOIN keyword.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- List the cities of California using a subquery
SELECT cities.id, cities.name
FROM cities
WHERE cities.state_id = (SELECT state_id FROM states WHERE name = 'California')
ORDER BY cities.id;