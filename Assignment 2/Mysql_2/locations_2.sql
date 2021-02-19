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

INSERT INTO locations (country, address)
VALUES  ('SE', 'Vimmberbygatan 20'),
		('US', 'Asteroid road 5'),
        ('US̈́', 'Comet road 41'),
        ('SE', 'Brunnsgatan 4');
        
DESCRIBE locations;
SELECT * FROM locations;