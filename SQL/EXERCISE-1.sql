SHOW DATABASES ;
CREATE DATABASE IF NOT EXISTS college;

-- Create a database for your college . Create a table named Teacher to store (id,name, subject , salary)
-- Insert followind data into the table : 

USE college;

CREATE TABLE Teacher(
   id  INT PRIMARY KEY,
   name VARCHAR(50),
   subject VARCHAR(50),
   salary INT
   );
   
INSERT INTO Teacher 
(id,name,subject, salary) VALUES
(1,'Prince','social',44000),
(2,'Henry','science',40000),
(3,'babar','health',30000), 
(4,'Anil','moral_science',10000), 
(5,'Yakka','Sports',60000);

SELECT*FROM Teacher;

-- PRACTICE QUESTION 
-- 1)select teacher whose salary is more than 55k
-- 2)Rename the salary column of teacher table to ctc
-- 3)Update salary of all teaches teachers by giving them an increment of 25%
-- 4)Add a new column for teaches called city .The default city should be "Greece"
-- 5)delete the salary column for the teacher table 

-- --for 1st question
-- 1)select teacher whose salary is more than 55k

SELECT * FROM Teacher 
WHERE salary>50000;


   -- 2)Rename the salary column of teacher table to ctc
ALTER TABLE Teacher 
CHANGE COLUMN salary ctc INT;
SELECT*FROM Teacher;
   
   
-- 3)Update salary of all teaches teachers by giving them an increment of 25%
SET SQL_SAFE_UPDATES=0;
UPDATE Teacher
SET ctc=ctc*0.25;
SELECT*FROM Teacher;

-- 4)Add a new column for teaches called city .The default city should be "Greece"

ALTER TABLE Teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Greece";

-- 5)delete the salary column for the teacher table 
ALTER TABLE Teacher 
DROP COLUMN ctc;
 

