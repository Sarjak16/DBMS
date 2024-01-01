
C:\Users\user>sqlplus hr/hr

-- SQL Plus: Release 11.2.8.2.8 Production on Sun Dec 31 08:15:28 2023

-- Copyright (c) 1982, 2014, Oracle. All rights reserved.

-- Connected to:

-- Oracle Database 11g Express Edition Release 11.2.0.2.8 64bit Production

SQL> drop table student

2 SQL> DROP TABLE STUDENT;

--Table dropped.



SQL> CREATE TABLE DUMMY STUDENT(SID NUMBER<S> PRIMARY KEY,
 NAME VARCHAR (50) NOT NULL, 
 ADDRESS VARCHAR(50) NOT NULL);

--Table created.

SQL> CREATE TABLE DUMMY FEES(FID NUMBER(5),

     SID NUMBER(5) NOT NULL,

     AMOUNT PAID NUMBER(5),

     PRIMARY KEY (PID),

     POREIGN KEY (SID) REFERENCES DUMMY_STUDENT (SID));

--Table created.

SQL> DESC DUMMY FEES; 