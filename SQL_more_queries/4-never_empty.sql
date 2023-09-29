-- Script: create_id_not_null_table.sql
-- Description: This script creates the 'id_not_null' table with the specified schema, including a default value for the 'id' column.

-- Check if the 'id_not_null' table exists
SELECT COUNT(*) INTO @table_exists
FROM information_schema.tables
WHERE table_schema = 'hbtn_0d_2' AND table_name = 'id_not_null';

-- If the table doesn't exist, create it
IF @table_exists = 0 THEN
    CREATE TABLE id_not_null (
        id INT DEFAULT 1,
        name VARCHAR(256)
    );
END IF;

-- Use the specified database (e.g., hbtn_0d_2)
USE hbtn_0d_2;

-- Insert data into the 'id_not_null' table
INSERT INTO id_not_null (id, name) VALUES
    (89, 'Holberton School'),
    (NULL, 'Holberton');  -- This will result in the default value being used for 'id'

-- Select all records from the 'id_not_null' table
SELECT * FROM id_not_null;