-- Script: create_and_insert_force_name.sql
-- Description: This script creates the 'force_name' table with the specified schema if it doesn't exist and performs regular inserts.

-- Check if the 'force_name' table exists
SELECT COUNT(*) INTO @table_exists
FROM information_schema.tables
WHERE table_schema = 'hbtn_0d_2' AND table_name = 'force_name';

-- If the table doesn't exist, create it
IF @table_exists = 0 THEN
    CREATE TABLE force_name (
        id INT PRIMARY KEY,
        name VARCHAR(256) NOT NULL
    );
END IF;

-- Use the specified database (e.g., hbtn_0d_2)
USE hbtn_0d_2;

-- Insert data into the 'force_name' table
INSERT INTO force_name (id, name) VALUES
    (1, 'Holberton School'),
    (1, 'Python is cool'),  -- This will result in a duplicate key error
    (2, 'Holberton'),
    (3, 'School'),
    (4, 'C is fun');

-- Select all records from the 'force_name' table
SELECT * FROM force_name;