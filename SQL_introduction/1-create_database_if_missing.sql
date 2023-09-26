#!/bin/bash

# MySQL credentials
MYSQL_USER="your_mysql_username"
MYSQL_PASSWORD="your_mysql_password"

# Database name to create
DATABASE_NAME="hbtn_0c_0"

# Create a connection to MySQL with the specified database name
mysql -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$DATABASE_NAME" <<EOF
-- This script creates the database hbtn_0c_0 if it doesn't exist.
-- If the database already exists, it will connect to it.

-- No explicit SQL statement is used to create the database.

-- Your SQL queries and commands can go here.
-- For example:
-- CREATE TABLE IF NOT EXISTS my_table (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255)
-- );

-- Remember to end your script with 'EOF'.
EOF