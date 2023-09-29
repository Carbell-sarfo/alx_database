-- Script: create_hbtn_0d_usa_database_and_states_table.sql
-- Description: This script creates the 'hbtn_0d_usa' database (if it doesn't exist) and the 'states' table (if it doesn't exist) within the database.

-- Create the database 'hbtn_0d_usa' if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Create the 'states' table if it doesn't exist
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);