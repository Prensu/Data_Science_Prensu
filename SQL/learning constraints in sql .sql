-- constrain means defining rules for the sql .. for example
-- we can not empty name or id .. not null 

CREATE DATABASE college; 

CREATE DATABASE IF NOT EXISTS facebook;

USE facebook;

CREATE TABLE user(
   id INT ,
   age INT,
   name VARCHAR(50) NOT NULL,
   email VARCHAR(50) UNIQUE,
   followers INT DEFAULT 0,
   follwing INT DEFAULT 0,
   CONSTRAINT age_check CHECK(age >=13)
   );
   
   