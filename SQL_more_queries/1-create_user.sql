-- Script: create_user.sql
-- Description: This script creates the MySQL user 'user_0d_1' with all privileges and sets the password.

-- Create or update the 'user_0d_1' user with the password 'user_0d_1_pwd'
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Grant all privileges to 'user_0d_1' on all databases
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Reload privileges to apply the changes
FLUSH PRIVILEGES;