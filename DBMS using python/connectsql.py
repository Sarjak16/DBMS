
# This part is all about making databases in mysql using python programming language.


# Importing module 
import mysql.connector
 
# Creating connection object
mydb = mysql.connector.connect(
    host = "localhost",
    user = "yourusername",
    password = "your_password"
)
 
# Printing the connection object 
print(mydb)


#.............................................................................................................................
 
# Python program to connect
# to mysql database
 
 
from mysql.connector import connection
 
# Connecting to the server
conn = connection.MySQLConnection(user = 'username', 
                              host = 'localhost',
                              database = 'database_name')
 
print(conn)
 
# Disconnecting from the server
conn.close()



# Creating the database

# importing required libraries
import mysql.connector
 
dataBase = mysql.connector.connect(
host ="localhost",
user ="user",
passwd ="user"
)
 
# preparing a cursor object
cursorObject = dataBase.cursor()
 
# creating database
cursorObject.execute("CREATE DATABASE Employee_details")

#create table
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="yourusername",
  password="yourpassword",
  database="mydatabase"
)

mycursor = mydb.cursor()

mycursor.execute("CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))")

# ..........................................................................................................

# FUNCTION to connect to mysql server( for this we need mysql community server installed in our computer)

def create_server_connection(host_name, user_name, user_password):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password
        )
        print("MySQL Database connection successful")
    except Error as err:
        print(f"Error: '{err}'")

    return connection

# creating a query execution function  
def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
        print("Query successful")
    except Error as err:
        print(f"Error: '{err}'")