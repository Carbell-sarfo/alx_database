-- Script: create_read_user.sql
-- Description: This script creates the MySQL database 'hbtn_0d_2', user 'user_0d_2', and grants SELECT privilege on 'hbtn_0d_2' to 'user_0d_2'.

-- Create or update the 'hbtn_0d_2' database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Create or update the 'user_0d_2' user with the password 'user_0d_2_pwd'
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant SELECT privilege on 'hbtn_0d_2' to 'user_0d_2'
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';

-- Reload privileges to apply the changes
FLUSH PRIVILEGES;