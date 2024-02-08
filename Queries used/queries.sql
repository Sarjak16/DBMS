-- --------------------------------------------------SELECT&FROM--------------------------------------

SELECT studentID, FirstName, LastName, FirstName + ' ' + LastName AS FullName
FROM student;
+-----------+-------------------+------------+------------------------+
| studentID | FirstName         | LastName   | FullName               |
+-----------+-------------------+------------+------------------------+
|         1 | Monique           | Davis      | Monique Davis          |
|         2 | Teri              | Gutierrez  | Teri Gutierrez         |
|         3 | Spencer           | Pautier    | Spencer Pautier        |
|         4 | Louis             | Ramsey     | Louis Ramsey           |
|         5 | Alvin             | Greene     | Alvin Greene           |
|         6 | Sophie            | Freeman    | Sophie Freeman         |
|         7 | Edgar Frank "Ted" | Codd       | Edgar Frank "Ted" Codd |
|         8 | Donald D.         | Chamberlin | Donald D. Chamberlin   |
|         9 | Raymond F.        | Boyce      | Raymond F. Boyce       |
+-----------+-------------------+------------+------------------------+
9 rows in set (0.00 sec)

-- ---------------------------------------------------CREATE TABLE-----------------------------------

CREATE TABLE table_name (
    column_1 datatype,
    column_2 datatype,
    column_3 datatype
);

--Altertable
ALTER TABLE table_name
ADD column_name datatype;

-- ----------------------------------------------------CHECK------------------------------------------
-- The CHECK constraint is used to limit the value range that can be placed in a column.

-- If you define a CHECK constraint on a single column it allows only certain values for this column. 
--If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

-- The following SQL creates a CHECK constraint on the “Age” column when the “Persons” table is created. 
--The CHECK constraint ensures that you can not have any person below 18 years.

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

--To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);

WHERE
(AND, OR, IN, BETWEEN, and LIKE)

-- The WHERE clause is used to limit the number of rows returned.

-- As an example, first we will show you a SELECT statement and results without a WHERE statement. Then we will add a WHERE statement that uses all five qualifiers above.

SELECT studentID, FullName, sat_score, rcd_updated FROM student;
+-----------+------------------------+-----------+---------------------+
| studentID | FullName               | sat_score | rcd_updated         |
+-----------+------------------------+-----------+---------------------+
|         1 | Monique Davis          |       400 | 2017-08-16 15:34:50 |
|         2 | Teri Gutierrez         |       800 | 2017-08-16 15:34:50 |
|         3 | Spencer Pautier        |      1000 | 2017-08-16 15:34:50 |
|         4 | Louis Ramsey           |      1200 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene           |      1200 | 2017-08-16 15:34:50 |
|         6 | Sophie Freeman         |      1200 | 2017-08-16 15:34:50 |
|         7 | Edgar Frank "Ted" Codd |      2400 | 2017-08-16 15:35:33 |
|         8 | Donald D. Chamberlin   |      2400 | 2017-08-16 15:35:33 |
|         9 | Raymond F. Boyce       |      2400 | 2017-08-16 15:35:33 |
+-----------+------------------------+-----------+---------------------+
--9 rows in set (0.00 sec)
--Now, we'll repeat the SELECT query but we'll limit the rows returned using a WHERE statement.

STUDENT studentID, FullName, sat_score, recordUpdated
FROM student
WHERE (studentID BETWEEN 1 AND 5 OR studentID = 8)
        AND
        sat_score NOT IN (1000, 1400);
+-----------+----------------------+-----------+---------------------+
| studentID | FullName             | sat_score | rcd_updated         |
+-----------+----------------------+-----------+---------------------+
|         1 | Monique Davis        |       400 | 2017-08-16 15:34:50 |
|         2 | Teri Gutierrez       |       800 | 2017-08-16 15:34:50 |
|         4 | Louis Ramsey         |      1200 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene         |      1200 | 2017-08-16 15:34:50 |
|         8 | Donald D. Chamberlin |      2400 | 2017-08-16 15:35:33 |
+-----------+----------------------+-----------+---------------------+
--5 rows in set (0.00 sec)


-- -------------------------------------UPDATE---------------------------------------------------------------------------
-- To update a record in a table you use the UPDATE statement.

-- Use the WHERE condition to specify which records you want to update. It is possible to update one or more columns at a time. The syntax is:

UPDATE table_name
SET column1 = value1, 
    column2 = value2, ...
WHERE condition;

--Here is an example updating the Name of the record with Id 4:

UPDATE Person
SET Name = “Elton John”
WHERE Id = 4;



--You can also update columns in a table by using values from other tables. Use the JOIN clause to get data from multiple tables. The syntax is:

UPDATE table_name1
SET table_name1.column1 = table_name2.columnA
    table_name1.column2 = table_name2.columnB
FROM table_name1
JOIN table_name2 ON table_name1.ForeignKey = table_name2.Key


--Here is an example updating Manager of all records:

UPDATE Person
SET Person.Manager = Department.Manager
FROM Person
JOIN Department ON Person.DepartmentID = Department.ID


-- ----------------------------------------------GROUP BY---------------------------------------------------------
-- GROUP BY allows you to combine rows and aggregate data.

-- Here is the syntax of GROUP BY:

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name;



-- ---------------------------------------------HAVING--------------------------------------------------------
-- HAVING allows you to filter the data aggregated by the GROUP BY clause so that the user gets a limited set of records to view.

-- Here is the syntax of HAVING:

SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > value;

-- ---------------------------------------------AVG()-----------------------------------------------------------
-- “Average” is used to calculate the average of a numeric column from the set of rows returned by a SQL statement.

-- Here is the syntax for using the function:

SELECT groupingField, AVG(num_field)
FROM table1
GROUP BY groupingField

-- Here’s an example using the student table:

SELECT studentID, FullName, AVG(sat_score) 
FROM student 
GROUP BY studentID, FullName;

-- --------------------------AS-------------------------------------------------------------------------
-- AS allows you to rename a column or table using an alias.

SELECT user_only_num1 AS AgeOfServer, (user_only_num1 - warranty_period) AS NonWarrantyPeriod FROM server_table

-- This results in output as below.

+-------------+------------------------+
| AgeOfServer | NonWarrantyPeriod      | 
+-------------+------------------------+
|         36  |                     24 |
|         24  |                     12 | 
|         61  |                     49 |
|         12  |                      0 | 
|          6  |                     -6 |
|          0  |                    -12 | 
|         36  |                     24 |
|         36  |                     24 | 
|         24  |                     12 | 
+-------------+------------------------+


-- You can also use AS to assign a name to a table to make it easier to reference in joins.

SELECT ord.product, ord.ord_number, ord.price, cust.cust_name, cust.cust_number FROM customer_table AS cust

JOIN order_table AS ord ON cust.cust_number = ord.cust_number
-- This results in output as below.

+-------------+------------+-----------+-----------------+--------------+
| product     | ord_number | price     | cust_name       | cust_number  |
+-------------+------------+-----------+-----------------+--------------+
|     RAM     |   12345    |       124 | John Smith      |  20          |
|     CPU     |   12346    |       212 | Mia X           |  22          |
|     USB     |   12347    |        49 | Elise Beth      |  21          |
|     Cable   |   12348    |         0 | Paul Fort       |  19          |
|     Mouse   |   12349    |        66 | Nats Back       |  15          |
|     Laptop  |   12350    |       612 | Mel S           |  36          |
|     Keyboard|   12351    |        24 | George Z        |  95          |
|     Keyboard|   12352    |        24 | Ally B          |  55          |
|     Air     |   12353    |        12 | Maria Trust     |  11          |
+-------------+------------+-----------+-----------------+--------------+

-- ------------------------------------ORDER BY----------------------------------------------------------------
-- ORDER BY gives us a way to sort the result set by one or more of the items in the SELECT section.
--  Here is an SQL sorting the students by FullName in descending order.
--  The default sort order is ascending (ASC) but to sort in the opposite order (descending) you use DESC.
SELECT studentID, FullName, sat_score
FROM student
ORDER BY FullName DESC;

-- ------------------------------------------COUNT
-- COUNT will count the number of rows and return that count as a column in the result set.

-- Here are examples of what you would use COUNT for:

-- Counting all rows in a table (no group by required)
-- Counting the totals of subsets of data (requires a Group By section of the statement)
-- This SQL statement provides a count of all rows. Note that you can give the resulting COUNT column a name using “AS”.


SELECT count(*) AS studentCount FROM student; 

-- DELETE
-- DELETE is used to delete a record in a table.

-- Be careful. You can delete all records of the table or just a few.
--  Use the WHERE condition to specify which records you want to delete. The syntax is:

DELETE FROM table_name
WHERE condition;

--Here is an example deleting from the table Person the record with Id 3:

DELETE FROM Person
WHERE Id = 3;

------------------------------------------------------ INNER JOIN-----------------------------------------------------------
-- JOIN, also called Inner Join, selects records that have matching values in two tables.

SELECT * FROM A x JOIN B y ON y.aId = x.Id

------------------------------------- LEFT JOIN---------------------------------------------------------------------------
-- A LEFT JOIN returns all rows from the left table, 
-- and the matched rows from the right table. Rows in the left table will be returned even if there was no match in the right table. 
-- The rows from the left table with no match in the right table will have null for right table values.

SELECT * FROM A x LEFT JOIN B y ON y.aId = x.Id

-- ----------------------------------------------RIGHT JOIN
-- A RIGHT JOIN returns all rows from the right table, and the matched rows from the left table.
--  Opposite of a left join, this will return all rows from the right table even where there is no match in the left table.
--   Rows in the right table that have no match in the left table will have null values for left table columns.

SELECT * FROM A x RIGHT JOIN B y ON y.aId = x.Id

---------------------------------------- FULL OUTER JOIN
-- -- A FULL OUTER JOIN returns all rows for which there is a match in either of the tables. 
-- So if there are rows in the left table that do not have matches in the right table, those will be included.
--  Also, if there are rows in the right table that do not have matches in the left table, those will be included.

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName

-- -----------------------------------------------INSERT
-- INSERT is a way to insert data into a table.

INSERT INTO table_name (column_1, column_2, column_3) 
VALUES (value_1, 'value_2', value_3);


-- ----------------------------------------------------LIKE
-- LIKE  is used in a WHERE or HAVING (as part of the GROUP BY) to limit the selected rows to the items when a column has a certain pattern of characters contained in it.

-- This SQL will select students that have FullName starting with “Monique” or ending with “Greene”.
SELECT studentID, FullName, sat_score, rcd_updated
FROM student 
WHERE 
    FullName LIKE 'Monique%' OR 
    FullName LIKE '%Greene'; 
+-----------+---------------+-----------+---------------------+
| studentID | FullName      | sat_score | rcd_updated         |
+-----------+---------------+-----------+---------------------+
|         1 | Monique Davis |       400 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene  |      1200 | 2017-08-16 15:34:50 |
+-----------+---------------+-----------+---------------------+
2 rows in set (0.00 sec)

-- You can place NOT before LIKE to exclude the rows with the string pattern instead of selecting them. 
-- This SQL excludes records that contain “cer Pau” and “Ted” in the FullName column.

SELECT studentID, FullName, sat_score, rcd_updated
FROM student 
WHERE FullName NOT LIKE '%cer Pau%' AND FullName NOT LIKE '%"Ted"%';


+-----------+----------------------+-----------+---------------------+
| studentID | FullName             | sat_score | rcd_updated         |
+-----------+----------------------+-----------+---------------------+
|         1 | Monique Davis        |       400 | 2017-08-16 15:34:50 |
|         2 | Teri Gutierrez       |       800 | 2017-08-16 15:34:50 |
|         4 | Louis Ramsey         |      1200 | 2017-08-16 15:34:50 |
|         5 | Alvin Greene         |      1200 | 2017-08-16 15:34:50 |
|         6 | Sophie Freeman       |      1200 | 2017-08-16 15:34:50 |
|         8 | Donald D. Chamberlin |      2400 | 2017-08-16 15:35:33 |
|         9 | Raymond F. Boyce     |      2400 | 2017-08-16 15:35:33 |
+-----------+----------------------+-----------+---------------------+
7 rows in set (0.00 sec)

.....................................................................................................................................
--Module 1:
-------------------------UNION-----------------------------------------------
SELECT * FROM HR WHERE JOB="DESIGN"
UNION 
SELECT* FROM HR WHERE HIREDATE BETWEEN '2005' AND '2006';
--THIS SHOWS US THAT UNION RESULTSET ALLOW US TO COMBINE THE ROWS
--RETURNED FROM THE MULTIPLE SELECT STATEMENTS INTO SINGLE RESULTSET.

--EXCEPT AND INTERSECT CLAUSE
--EXCEPT CLAUSE RETURNS DISTINCT VALUES FROM THE LEFT QUERY THAT ARE NOT FOUND ON RIGHT QUERY
SELECT PRODUCTID
FROM PRODUCTS
EXCEPT
SELECT PRODUCTID
FROM WORKORDER;
-- INTERSECT RETURNS DISTINCT VALUES RETURNED BY BOTH QUERY
SELECT PRODUCTID
FROM PRODUCTS
INTERSECT
SELECT PRODUCTID
FROM WORKORDER;

-- JOIN clause

-- The JOIN clause allows you to combine related data from multiple tables into one result set

-- INNER JOINS uses a comparison operator to match rows from two tables based on values in a common column that exists in both tables

-- OUTER JOINS (left, right, or full) includes rows from one or both tables even if they don't have matching values

-- CROSS JOINS return all rows from the left table with all rows from the right table. WHERE conditions should always be included.


-------------------------------AGGREGATE SAMPLE-----------------------------------------------------------------------------------------------------------
-- SQL server provides aggregate functions to assist with the summarization of large volumes of the data.
SELECT COUNT (DISTINCT salesOrderID) AS UniqueOrders,
AVG(unit price) As Avg_unitprice,
MIN(OrderQty) AS min_orderqty,
MAX(LineTotal) AS max_Linetotal
From Sales.salesorderdetail;

-- The key points from this module 1 are:
-- SELECT Statement
-- DML stands for Data Manipulation Language.
-- The SELECT statement is use to retrieve data from one or more tables stored in a database.

-- Optionally, the SELECT statement can include the WHERE clause to define the conditions used to determine what rows will be returned.

-- ORDER BY - Sorts the results, by which field you have specified, it sorts ascending order by default the statement DESC sorts it descending order.
-- UNION - Clause allows you to combine the rows returned from multiple SELECT statements into a single result set.
-- EXCEPT - Clause returns distinct values form the left query that are not found on the right query.
-- INTERSECT - Clause returns any distinct values returned by both the query on the left and right sides of the intersect operand.
-- JOINS - The JOIN clause allows you to combine related data from multiple tables as one result set.
-- Predicates are an expression that evaluates to TRUE, FALSE, or UNKNOWN.

-- Predicates are used in the search condition of WHERE clauses and HAVING clauses, the join conditions of FROM clauses, and other constructs where a Boolean value is required.

-- INSERT, UPDATE and DELETE
-- INSERT statement is used to insert data into a table, BULK INSERT can be used to import a data file into a table.

-- UPDATE statement is used to modify the data that is already stored in a table.

-- DELETE statement is used to delete rows from a table, however without the WHERE clause the statement will cause all rows to be deleted.

-- Indexes allow you to speed up the retrieval of data stored within a table or view.

-- Triggers are used to enforce business rules when data is modified.

--.........................................example with explaination of joins.............................................

-- How To Write A SQL JOIN
-- There are three key parts to get right when writing a JOIN in SQL. First, you need to specify what columns to show. For our artists x songs example, we'll just use SELECT * for that.

-- Secondly, you need to specify what are the names of the two tables we are joining. Since we are joining the artists with songs table, our query so far is as follows:

-- SELECT 
--   *
-- FROM artists
-- JOIN songs
-- --The third and final in a SQL JOIN query is the ON clause, which explains to the RDBMS how the two tables relate to each other.

-- --We need to explicitly write in the SQL query that the artists_id column in the artists table matches up against the artist_id column in the songs table with this clause:

-- ON artists.artist_id = songs.artist_id;

-- Putting these 3 parts together, we get the following SQL JOIN query:

SELECT 
  *
FROM artists
JOIN songs
  ON artists.artist_id = songs.artist_id;
-- The above query combines info from the artists AND songs table into the result below:
/*

artist_id	artist_name	    label_owner	            song_id	artist_id	name
101	        Ed Sheeran	    Warner Music Group	    55511	101	        Perfect
101     	Ed Sheeran	    Warner Music Group	    45202	101	        Shape of You
120     	Drake	        Warner Music Group	    22222	120	        One Dance
120	        Drake	        Warner Music Group	    19960	120	        Hotline Bling
125	        Bad Bunny	    Rimas Entertainment	    12636	125	        Mia
*/

-- -------------------------------------------------------------Inner join
SELECT 
  orders.order_id, 
  orders.customer_id, 
  goodreads.book_title, 
  orders.quantity
FROM goodreads
INNER JOIN orders
  ON goodreads.book_id = orders.book_id -- Columns with same data type (integer)
WHERE goodreads.price >= 20;
--The INNER JOIN returns only the rows where there is a matching book ID in both the goodreads and orders tables, focusing on books with prices $20 and above.



