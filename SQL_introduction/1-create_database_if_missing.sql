#!/bin/bash

# MySQL credentials
MYSQL_USER="your_mysql_username"
MYSQL_PASSWORD="your_mysql_password"

# Database name to create
DATABASE_NAME="hbtn_0c_0"

# Create a connection to MySQL with the specified database name
mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" <<EOF
-- This script creates the database hbtn_0c_0 if it doesn't exist.
-- If the database already exists, it will connect to it.

-- Create the database if it doesn't exist (ignore any errors)
CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;

-- Use the specified database for subsequent queries
USE $DATABASE_NAME;

-- Your SQL queries and commands can go here.
-- For example:
-- CREATE TABLE IF NOT EXISTS my_table (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255)
-- );

-- Remember to end your script with 'EOF'.
EOF