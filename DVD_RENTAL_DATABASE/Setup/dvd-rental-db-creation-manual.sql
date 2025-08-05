
-- Load the sample database using the psql 

-- To create a database and load data from an archive file, you follow these steps:

-- 1) connect to the PostgreSQL database server using psql or pgAdmin.
-- 2) create a blank database called dvdrental.
-- 3) load data from the sample database file into the dvdrental database using pg_restore.


-- 1) Create the dvdrental database

-- First, open the Command Prompt on Windows or Terminal on Unix-like systems and
--  connect to the PostgreSQL server using psql tool:

psql -U postgres

-- It’ll prompt you to enter a password for the postgres user:
-- Password for user postgres: The password for the postgres user is the one you entered during the PostgreSQL installation.
-- After entering the password correctly, you will be connected to the PostgreSQL server.
-- The command prompt will look like this:

postgres=#

-- Second, create a new database called dvdrental using CREATE DATABASE statement:

CREATE DATABASE dvdrental;

-- Output:

CREATE DATABASE
-- PostgreSQL will create a new database called dvdrental.



-- 2) Download the sample database (dvdrental.zip) and extract the tar file to the 
-- directory such as D:\sampledb\postgres\dvdrental.tar on Windows.

-- Load the dvdrental database using the pg_restore command:

pg_restore -U postgres -d dvdrental D:\sampledb\postgres\dvdrental.tar

-- In this command:

-- The -U postgres instructs pg_restore to connect the PostgreSQL server using the postgres user.
-- The -d dvdrental specifies the target database to load.
-- It’ll prompt you to enter the password for the postgres user. Enter the password for the postgres user and press the Enter (or Return key):


-- It’ll take about seconds to load data stored in the dvdrental.tar file into the dvdrental database.

-- 3) Verify the sample database
-- First, connect to the PostgreSQL server using the psql command:

psql -U postgres
-- Second, switch the current database to dvdrental:

\c dvdrental
-- The command prompt will change to the following:

dvdrental=#

-- Third, display all tables in the dvdrental database:

\dt

-- Output:  

List of relations
 Schema |     Name      | Type  |  Owner
--------+---------------+-------+----------
 public | actor         | table | postgres
 public | address       | table | postgres
 public | category      | table | postgres
 public | city          | table | postgres
 public | country       | table | postgres
 public | customer      | table | postgres
 public | film          | table | postgres
 public | film_actor    | table | postgres
 public | film_category | table | postgres
 public | inventory     | table | postgres
 public | language      | table | postgres
 public | payment       | table | postgres
 public | rental        | table | postgres
 public | staff         | table | postgres
 public | store         | table | postgres
(15 rows)