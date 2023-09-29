-- Script: privileges.sql
-- Description: This script lists privileges for MySQL users 'user_0d_1' and 'user_0d_2' on localhost.

-- Check and display privileges for 'user_0d_1'
IF EXISTS (SELECT 1 FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost') THEN
    SHOW GRANTS FOR 'user_0d_1'@'localhost';
ELSE
    SELECT "There is no such grant defined for user 'user_0d_1' on host 'localhost'" AS Grant_Description;
END IF;

-- Check and display privileges for 'user_0d_2'
IF EXISTS (SELECT 1 FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost') THEN
    SHOW GRANTS FOR 'user_0d_2'@'localhost';
ELSE
    SELECT "There is no such grant defined for user 'user_0d_2' on host 'localhost'" AS Grant_Description;
END IF;