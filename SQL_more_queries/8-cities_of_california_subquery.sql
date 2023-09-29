-- Script: list_california_cities.sql
-- Description: This script lists all the cities of California from the 'hbtn_0d_usa' database without using the JOIN keyword.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- Find the state ID for California
SELECT id FROM states WHERE name = 'California';

-- List the cities of California
SELECT * FROM cities WHERE state_id = (SELECT id FROM states WHERE name = 'California') ORDER BY id;