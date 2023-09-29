-- Script: privileges.sql
-- Description: This script lists privileges for MySQL users 'user_0d_1' and 'user_0d_2' on localhost.

-- Check and display privileges for 'user_0d_1'
SELECT IF(
    (SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost') > 0,
    "Grants for user_0d_1@localhost",
    "There is no such grant defined for user 'user_0d_1' on host 'localhost'"
) AS Grant_Description;

SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Check and display privileges for 'user_0d_2'
SELECT IF(
    (SELECT COUNT(*) FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost') > 0,
    "Grants for user_0d_2@localhost",
    "There is no such grant defined for user 'user_0d_2' on host 'localhost'"
) AS Grant_Description;

SHOW GRANTS FOR 'user_0d_2'@'localhost';