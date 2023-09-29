-- Script: create_id_not_null_table.sql
-- Description: This script creates the 'id_not_null' table with the specified schema, including a default value for the 'id' column.

-- Create the 'id_not_null' table if it doesn't exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- Use the specified database (e.g., hbtn_0d_2)
USE hbtn_0d_2;