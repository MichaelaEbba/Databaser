# Rapport inlämning 2.

## Del 2.

Jag skapade tabellen med följande kod i MySQL:

```mariadb
CREATE TABLE locations
(
    id      INT PRIMARY KEY
        AUTO_INCREMENT,
    address VARCHAR(50),
    country VARCHAR(50)
);
```

MongoDB:

```javascript
db.locations.insertMany([
    { country: "SE", address: "Vimmerbygatan 20" },
    { country: "US", address: "Asteroid road 5" },
    { country: "US", address: "Comet road 41" },
    { country: "SE", address: "Brunnsgatan 7" }
])
```

## Del 3.

Här behövde jag länka tabellerna med varann, så SE kunde hittas med rätt namn, och det gjorde jag med följande kod:

```mariadb

SELECT bank_account.first_name, bank_account.last_name, locations.country
FROM relationship
         JOIN bank_account on bank_account.id = relationship.bank_account_id
         JOIN locations on relationship.location_id = locations.id
WHERE country = 'SE';

```

## Del 4.

### Exempel på CRUD

#### Create:

MongoDB:

```javascript
use Bank_account_mongodb

db.Bank_accounts_mongodb.insertOne(
    {
        first_name: "Michaela",
        last_name: "Palmqvist",
        holding: 123456
    }
```

MySQL:

```mariadb
CREATE TABLE bank_account
(
    id         INT AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name  VARCHAR(30),
    holding    INT,
    PRIMARY KEY (id)
);
```

#### Read:

MongoDB:

```javascript
db.Bank_accounts_mongodb.find()
```

MySQL:

```mariadb
SELECT *
FROM bank_account
WHERE holding <= 123; 
```

#### Update:

MongoDB:

```javascript
db.Bank_accounts_mongodb.updateOne(
{_id: ObjectId("60293dc3360b770a6008dc33")},
{$set: {last_name: "Sjöblom"}})
```

MySQL:

```mariadb
UPDATE bank_account
SET last_name = 'Sjöblom'
WHERE id = 1;
```

#### Delete:

MongoDB:

```javascript
db.Bank_accounts_mongodb.deleteOne(
   {_id: ObjectId("60293dc3360b770a6008dc33")})
```

MySQL:

```mariadb
ALTER TABLE bank_account
    DROP COLUMN useless;

DELETE
FROM bank_account;
```

## Frågor

1. Vad är motsvarigheten i MongoDB till en foreign key?

- DBREF

2.Vad är motsvarigheten till SELECT i MongoDB?

- find()

3. Hur hade du löst del 2 och 3 i MongoDB?

- Jag hade satt in den nya datan (location) i ett nytt fält i det befintliga dokumentet som skall uppdateras.
- Sedan hade jag gjort en find(location, country: "SE") typ.

4. Vad behöver du för information för att kunna logga in i någon annans databas?

- ip adress, port, användarnamn och ip address.

5. Varför skulle man vilja använda sig utav en databas?

- En anledning är så man kan bygga kundregister m.m. för företag, man kan logga in och hitta datan utifrån (förutsätter
  då att servern/datorn som du har databasen på är igång), datan försvinner inte heller när man stänger av/loggar ut,
  den är kvar tills den ändras eller raderas utav en med rättigheter att göra det.

6. Nämn några andra ställen som CRUD används på?
- Filhantering och gaming, är det jag kommer på där man kan skapa, redigera, läsa och ta bort. 