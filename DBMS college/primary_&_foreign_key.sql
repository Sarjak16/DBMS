
C:\Users\user>sqlplus hr/hr

-- SQL Plus: Release 11.2.8.2.8 Production on Sun Dec 31 08:15:28 2023

-- Copyright (c) 1982, 2014, Oracle. All rights reserved.

-- Connected to:

-- Oracle Database 11g Express Edition Release 11.2.0.2.8 64bit Production

SQL> drop table student

2 SQL> DROP TABLE STUDENT;

--Table dropped.



SQL> CREATE TABLE DUMMY_STUDENT(SID NUMBER<S> PRIMARY KEY,
 NAME VARCHAR (50) NOT NULL, 
 ADDRESS VARCHAR(50) NOT NULL);

--Table created.

SQL> CREATE TABLE DUMMY_FEES(FID NUMBER(5),

     SID NUMBER(5) NOT NULL,

     AMOUNT_PAID NUMBER(5),

     PRIMARY KEY (PID),

     POREIGN KEY (SID) REFERENCES DUMMY_STUDENT (SID));

--Table created.

SQL> DESC DUMMY FEES; 


SQL> INSERT INTO DUMMY_STUDENT(SID, NAME, ADDRESS) VALUES(111, 'RAM', 'BKT');
 --1 row created.

SQL> INSERT INTO DUMMY_FEES (FID, SID, AMOUNT_PAID) VALUES (111.111, 38000); 
--1 row created.

SQL> DELETE FROM DUMMY STUDENT WHERE SID-111; DELETE FROM DUMMY STUDENT WHERE SID-111

-- ERROR at line 1:

-- ORA-02292: integrity constraint (HR.SYS_C087084) violated child record found

SQL> DELETE FROM DUMMY FEES;

--1 row deleted.

SQL> DROP TABLE DUMMY_FEES;

--Table dropped.

SQL> CREATE TABLE DUMMY_FEES (FID NUMBER(5),  SID NUMBER(5) NOT NULL,

 AMOUNT_PAID NUMBER(5),

 PRIMARY KEY (FID),

 FOREIGN KEY (SID) REFERENCES DUMMY_STUDENT<SID> ON DELETE CASCADE>;
 FOREIGN KEY (SID) REFERENCES DUMMY_STUDENT(SID) ON DELETE CASCADE);
--Table created.

