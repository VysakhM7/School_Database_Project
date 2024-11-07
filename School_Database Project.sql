-- Step 1: Create the School database if it does not already exist
CREATE DATABASE IF NOT EXISTS School;

-- Step 2: Select the School database to use for subsequent commands
USE School;

-- Step 3: Drop the STUDENT table if it already exists to ensure no conflicts
DROP TABLE IF EXISTS STUDENT;

-- Step 4: Create the STUDENT table with fields Roll_No, Name, Marks, and Grade
-- Roll_No is the primary key, ensuring each student is uniquely identifiable
CREATE TABLE STUDENT (
    Roll_No INT PRIMARY KEY,      -- Primary key to uniquely identify each student
    Name VARCHAR(50),             -- Student's name, max length 50 characters
    Marks INT,                    -- Student's marks
    Grade CHAR(1)                 -- Student's grade as a single character (A, B, C, etc.)
);

-- Step 5: Insert sample data into the STUDENT table
-- These entries represent a variety of student data for testing purposes
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (1, 'Alice', 85, 'A');
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (2, 'Bob', 78, 'B');
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (3, 'Charlie', 90, 'A');
INSERT INTO STUDENT (Roll_No, Name, Marks, Grade) VALUES (4, 'David', 65, 'C');

-- Step 6: Select all records from the STUDENT table to display initial data
-- This command lets us review the data that has been inserted
SELECT * FROM STUDENT;

-- Step 7: Alter the STUDENT table to add a new column 'Contact' to store phone numbers
ALTER TABLE STUDENT ADD COLUMN Contact VARCHAR(15);

-- Step 8: Drop the Grade column from the STUDENT table as per requirements
ALTER TABLE STUDENT DROP COLUMN Grade;

-- Step 9: Rename the STUDENT table to CLASSTEN to reflect class level
RENAME TABLE STUDENT TO CLASSTEN;

-- Step 10: Use the SELECT command to verify the current structure and data of CLASSTEN
SELECT * FROM CLASSTEN;

-- Step 11: Truncate the CLASSTEN table, which removes all rows but keeps the table structure
-- This prepares the table for fresh data if needed
TRUNCATE TABLE CLASSTEN;

-- Step 12: Drop the CLASSTEN table, removing it completely from the database
DROP TABLE IF EXISTS CLASSTEN;

-- Step 13: (Optional) Verify that the table has been dropped by attempting to select from it
-- This step should generate an error, confirming that CLASSTEN no longer exists
SELECT * FROM CLASSTEN;  -- This should result in an error if the table is correctly dropped
