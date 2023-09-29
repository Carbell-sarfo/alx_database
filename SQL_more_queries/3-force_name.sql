-- Script: create_force_name_table.sql
-- Description: This script creates the 'force_name' table with the specified schema.

-- Create the 'force_name' table if it doesn't exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Use the specified database (e.g., hbtn_0d_2)
USE hbtn_0d_2;