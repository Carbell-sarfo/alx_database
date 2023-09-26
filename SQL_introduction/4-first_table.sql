-- Script: create_first_table.sql
-- Description: This script creates the 'first_table' table if it does not already exist.

-- Create the 'first_table' table if it does not exist
CREATE TABLE IF NOT EXISTS first_table (
    id INT,
    name VARCHAR(256)
);