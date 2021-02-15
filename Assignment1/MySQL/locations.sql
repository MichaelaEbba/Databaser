CREATE DATABASE Del3
    charset=utf8;

use Del3;

CREATE TABLE locations
(
    id      INT PRIMARY KEY
        AUTO_INCREMENT,
    address VARCHAR(50),
    country VARCHAR (50)
);