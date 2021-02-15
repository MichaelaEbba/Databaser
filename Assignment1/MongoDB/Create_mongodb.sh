use Bank_account_mongodb

db.Bank_accounts_mongodb.insertOne(
    {
        first_name: "Michaela",
        last_name: "Palmqvist",
        holding: 123456
    }
)
db.Bank_accounts_mongodb.count()
db.Bank_accounts_mongodb.find()

show dbs


show collections



