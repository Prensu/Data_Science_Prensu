
CREATE DATABASE IF NOT EXISTS company;

-- Switch to the database
USE company;

-- Create the Department table
CREATE TABLE department (
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   location VARCHAR(50),
   PRIMARY KEY (id)
) ENGINE = InnoDB;

-- Create the Employee table with a foreign key referencing Department
CREATE TABLE employee (
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   position VARCHAR(50),
   department_id INT NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
) ENGINE = InnoDB;

   
   