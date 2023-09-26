-- Script: list_tables.sql
-- Description: This script lists all the tables in a specified database.
-- Usage: cat list_tables.sql | mysql -h localhost -u root -p <database_name>

USE INFORMATION_SCHEMA;

SELECT table_name
FROM tables
WHERE table_schema = DATABASE();