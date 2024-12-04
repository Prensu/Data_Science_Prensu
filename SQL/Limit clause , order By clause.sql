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

ALTER TABLE user ADD age INT;
INSERT INTO user (id, name, email, followers, following, age) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 120, 80, 25),
(2, 'Bob Smith', 'bob.smith@example.com', 200, 150, 30),
(3, 'Charlie Brown', 'charlie.brown@example.com', 300, 290, 22),
(4, 'Diana Prince', 'diana.prince@example.com', 450, 400, 28),
(5, 'Evan Peters', 'evan.peters@example.com', 180, 170, 35),
(6, 'Fiona Carter', 'fiona.carter@example.com', 600, 580, 27),
(7, 'George King', 'george.king@example.com', 50, 30, 24),
(8, 'Hannah Lee', 'hannah.lee@example.com', 95, 85, 21),
(9, 'Ian Wright', 'ian.wright@example.com', 320, 310, 33),
(10, 'Julia Roberts', 'julia.roberts@example.com', 220, 210, 29);


SELECT name, email,followers FROM user 
LIMIT 5;

SELECT name,age,followers FROM user 
ORDER BY followers ASC;

SELECT name, followers , following  FROM user
ORDER BY followers DESC;
 
 
 SELECT max(age) FROM user ;
 
 SELECT count(age) FROM user 
 WHERE age  between 15 AND 30;
 
 SELECT sum(followers) FROM user ;
 