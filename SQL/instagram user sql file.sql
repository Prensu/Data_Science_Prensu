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


INSERT INTO user VALUES 
(1,'prensu','dangolprensu@gmail.com',101,100),
(2,'prashna','dangolprashna@gmail.com',105,110);


SELECT * FROM user;
