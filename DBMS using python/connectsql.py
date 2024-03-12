
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

