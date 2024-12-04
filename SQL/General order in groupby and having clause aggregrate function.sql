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

-- Here we are using having clause -- 
 -- the condition applies on group only -- its having  clause

SELECT age,max(followers) FROM USER 
GROUP BY age
HAVING max(followers)> 400
ORDER BY age ASC;


SELECT age,max(followers) FROM USER 
GROUP BY age
HAVING max(followers)> 400
ORDER BY age DESC;


-- here we are using order by age also in groupby and aggregrate function



