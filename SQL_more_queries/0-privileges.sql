-- Script: privileges.sql
-- Description: This script lists privileges for MySQL users 'user_0d_1' and 'user_0d_2' on localhost.

-- Check and display privileges for 'user_0d_1'
DO
BEGIN
    DECLARE @user_0d_1_exists INT;
    DECLARE @user_0d_1_grants TEXT;
    
    SELECT COUNT(*) INTO @user_0d_1_exists
    FROM mysql.user
    WHERE user = 'user_0d_1' AND host = 'localhost';

    IF @user_0d_1_exists > 0 THEN
        SELECT "Grants for user_0d_1@localhost" AS Grant_Description;
        SHOW GRANTS FOR 'user_0d_1'@'localhost';
    ELSE
        SELECT "No user 'user_0d_1'@localhost found" AS Grant_Description;
    END IF;
END;

-- Check and display privileges for 'user_0d_2'
DO
BEGIN
    DECLARE @user_0d_2_exists INT;
    DECLARE @user_0d_2_grants TEXT;
    
    SELECT COUNT(*) INTO @user_0d_2_exists
    FROM mysql.user
    WHERE user = 'user_0d_2' AND host = 'localhost';

    IF @user_0d_2_exists > 0 THEN
        SELECT "Grants for user_0d_2@localhost" AS Grant_Description;
        SHOW GRANTS FOR 'user_0d_2'@'localhost';
    ELSE
        SELECT "No user 'user_0d_2'@localhost found" AS Grant_Description;
    END IF;
END;