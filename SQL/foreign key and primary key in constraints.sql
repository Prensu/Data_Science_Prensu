CREATE DATABASE IF NOT EXISTS facebook;

USE facebook;

CREATE TABLE user(
   id INT,
   age INT,
   name VARCHAR(50) NOT NULL,
   email VARCHAR(50) UNIQUE,
   followers INT DEFAULT 0,
   following INT ,
   CONSTRAINT  CHECK (age >= 13),
   PRIMARY KEY (id)
);

CREATE TABLE post(
   id INT PRIMARY KEY,
   content VARCHAR(50),
   user_id INT,  -- Changed from VARCHAR(50) to INT
   FOREIGN KEY (user_id) REFERENCES user(id)
); 

   
   