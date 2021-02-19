CREATE TABLE relationship
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    bank_account_id INT,
    location_id     INT,
    FOREIGN KEY (bank_account_id) REFERENCES bank_account (id),
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

SELECT *
FROM relationship;



INSERT INTO relationship (bank_account_id, location_id)
VALUES ((SELECT id FROM bank_account WHERE first_name = 'Corbin' AND last_name = 'Hauck'),
        (SELECT id FROM locations WHERE country = 'SE' AND address = 'Brunnsgatan 7')),
       ((SELECT id FROM bank_account WHERE first_name = 'Vanya' AND last_name = 'Worsell'),
        (SELECT id FROM locations WHERE country = 'US' AND address = 'Asteroid road 5')),
       ((SELECT id FROM bank_account WHERE first_name = 'Eldon' AND last_name = 'McCartan'),
        (SELECT id FROM locations WHERE country = 'SE' AND address = 'Vimmerbygatan 20')),
       ((SELECT id FROM bank_account WHERE first_name = 'Ingunna' AND last_name = 'Castellucci'),
        (SELECT id FROM locations WHERE country = 'US' AND address = 'Comet road 41'));

SELECT bank_account.first_name, bank_account.last_name, locations.country
FROM relationship
JOIN bank_account on bank_account.id = relationship.bank_account_id
JOIN locations on relationship.location_id = locations.id
WHERE country = 'SE';



SELECT *
FROM bank_account;

SELECT *
FROM relationship;

SELECT * FROM locations;