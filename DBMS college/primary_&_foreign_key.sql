SQL> CREATE TABLE DUMMY STUDENT<FID NUMBER<5>, ,

2 SID NUMBER<5> NOTNULL 3 AMOUNT PAID NUMBER<5>,

4 PRIMARY KEY <FID>,

5 FOREIGN KEY <SID> REFERENCES DUMMY_STUDENT<SID>>;

SID NUMBER<5> NOTNULL,

ERROR at line 2:

ORA-88987: missing right parenthesis

SQL> CREATE TABLE DUMMY FEES(FID NUMBER<5>,

2 SID NUMBER<5> NOT NULL,

3 AMOUNT PAID NUMBER<5>,

4 PRIMARY KEY (PID),

5 POREIGN KEY (SID) REFERENCES DUMMY_STUDENT (SID>>;

Table created.

SQL> DESC DUMMY FEES; Hane