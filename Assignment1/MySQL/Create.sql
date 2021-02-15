CREATE DATABASE assignment_1_mysql;
USE assignment_1_mysql;

CREATE TABLE bank_account (
id INT AUTO_INCREMENT,
first_name VARCHAR (30),
last_name VARCHAR (30),
holding INT,
PRIMARY KEY (id));

INSERT INTO bank_account (first_name, last_name, holding)
values ('Michaela','Palm',123456);

SHOW TABLES;
DESCRIBE bank_account;
SELECT * FROM bank_account;

