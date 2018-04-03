CREATE DATABASE IF NOT EXISTS adlist_db;

USE adlist_db;
DROP TABLE IF EXISTS users;

CREATE TABLE users (

  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads (

  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INTEGER UNSIGNED NOT NULL,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);



INSERT INTO users (username, email, password) VALUES ('david', 'email', 'password'),
  ('larry', 'email', 'password');

INSERT INTO ads (user_id, title, description)
VALUES (1, 'playstation for sale', 'This is a slightly used playstation'),
  (1, 'Super Nintendo', 'Get your game on with this old-school classic'),
  (2, 'Junior Java Developer Position',
   'Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript'),
  (2, 'JavaScript Developer needed', 'Must have strong Java skills');

SELECT *
FROM ads;

