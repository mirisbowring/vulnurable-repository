import mysql.connector

def db_connect():
    print("DB Connect with saved credentials")

    mydb = mysql.connector.connect(
        host="10.27.8.144",
        user="user6",
        passwd="p4ssw0rd"
    )

    mycursor = mydb.cursor()

    mycursor.execute("CREATE DATABASE databasename5")
