-- Script: create_tables.sql
-- Description: This script deletes and recreates the 'hbtn_test_db_0' database and creates 3 tables if they do not already exist.

-- Drop the database if it exists
DROP DATABASE IF EXISTS hbtn_test_db_0;

-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS hbtn_test_db_0;

-- Use the 'hbtn_test_db_0' database
USE hbtn_test_db_0;

-- Create the 'holbteron_0' table if it does not exist
CREATE TABLE IF NOT EXISTS holbteron_0 (
    id INT
);

-- Create the 'holbteron_1' table if it does not exist
CREATE TABLE IF NOT EXISTS holbteron_1 (
    name VARCHAR(256)
);

-- Create the 'holbteron_2' table if it does not exist
CREATE TABLE IF NOT EXISTS holbteron_2 (
    id INT,
    name VARCHAR(256)
);