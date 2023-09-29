-- Script: list_all_cities.sql
-- Description: This script lists all cities from the 'hbtn_0d_usa' database along with their respective state names.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- List all cities with their state names
SELECT cities.id, cities.name, states.name
FROM cities
INNER JOIN states ON cities.state_id = states.id
ORDER BY cities.id;