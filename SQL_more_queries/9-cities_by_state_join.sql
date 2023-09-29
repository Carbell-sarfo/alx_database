-- Script: list_cities_with_states.sql
-- Description: This script lists all cities in the 'hbtn_0d_usa' database with their IDs, names, and corresponding state names.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- List cities with their IDs, names, and corresponding state names
SELECT cities.id, cities.name, states.name AS state_name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id;