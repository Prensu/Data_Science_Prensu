CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user (
  id INT ,
  name VARCHAR(30),
  email VARCHAR(50),
  followers INT,
  following INT 
  );

INSERT INTO user (id, name, email, followers, following) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 120, 80),
(2, 'Bob Smith', 'bob.smith@example.com', 200, 150),
(3, 'Charlie Brown', 'charlie.brown@example.com', 300, 290),
(4, 'Diana Prince', 'diana.prince@example.com', 450, 400),
(5, 'Evan Peters', 'evan.peters@example.com', 180, 170),
(6, 'Fiona Carter', 'fiona.carter@example.com', 600, 580),
(7, 'George King', 'george.king@example.com', 50, 30),
(8, 'Hannah Lee', 'hannah.lee@example.com', 95, 85),
(9, 'Ian Wright', 'ian.wright@example.com', 320, 310),
(10, 'Julia Roberts', 'julia.roberts@example.com', 220, 210);


SELECT DISTINCT followers FROM user;

SELECT name,email from user;

SELECT * FROM user;
   