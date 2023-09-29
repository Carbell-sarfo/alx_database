-- Script: list_cities_with_states.sql
-- Description: This script lists all cities with their corresponding state names from the 'hbtn_0d_usa' database.

-- Use the specified database (e.g., hbtn_0d_usa)
USE hbtn_0d_usa;

-- List cities with state names using subqueries
SELECT
    cities.id,
    cities.name,
    (SELECT name FROM states WHERE id = cities.state_id) AS state_name
FROM cities
ORDER BY cities.id;