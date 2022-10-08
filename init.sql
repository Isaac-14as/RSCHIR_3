CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS account (
  id INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(20) NOT NULL,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO account(login, password) VALUES("admin", "{SHA}0DPiKuNIrrVmD8IUCuw1hQxNqZc=");
INSERT INTO account(login, password) VALUES("user", "{SHA}Et6pb+wgWTVmq3VpLJlJWWgzrck=");

CREATE TABLE IF NOT EXISTS Products (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name CHAR(255) NOT NULL,
  price DOUBLE NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO Products(name, price)
  VALUES("Mouse Logitech G102", 3079);
INSERT INTO Products(name, price)
  VALUES("Mouse 4TECH Bloody J90s", 1989);
INSERT INTO Products(name, price)
  VALUES("Mouse Logitech G305", 5099);
INSERT INTO Products(name, price)
  VALUES("Mouse Logitech Pebble M350", 2619);
INSERT INTO Products(name, price)
  VALUES("Television Samsung UE50", 51990);
                    