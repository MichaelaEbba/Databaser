UPDATE bank_account
SET last_name = 'Sjöblom'
WHERE id = 1;

ALTER TABLE bank_account
ADD COLUMN useless VARCHAR(30);

INSERT INTO bank_account (useless)
VALUES ('shall soon be deleted');

SELECT * FROM bank_account;