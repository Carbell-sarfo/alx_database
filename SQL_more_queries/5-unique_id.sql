-- Script: create_unique_id_table.sql
-- Description: This script creates the 'unique_id' table with the specified schema.

-- Create the 'unique_id' table if it doesn't exist
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Use the specified database (e.g., hbtn_0d_2)
USE hbtn_0d_2;