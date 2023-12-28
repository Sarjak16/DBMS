

--connect client app to an oracle database by connecting to an oracle database by connecting to its database instances not its database.
--a connection is a physical communication pathway between a client process & a database instance.
--user session is a logical entity that represents the state of the current user login to the database instance.

--example:
--1.by using operating system authintication:
$ sqlplus/ as sysdba 
--2.by using easy connect syntax
sql>connect hr/hr @host1.eg.com:1521/db.eg.com
    --label: 1. @host1.com is the hostname
            --  2. hr/hr is the username/ password
            --  3. 1521 is the listener port number.
            --  db.eg.com is the service name. 

------------------------------------------------------------DEMO------------------------------------------------
-- local connection (DBA)
[oracle @ edvmrlpo~] $id
$ echo $ORACLE_SID

$ echo $ORACLE_HOME

$sqlplus/ as sysdba
sql> show user
--  output: user is 'sys'

sql> show pdbs
...
...
...
sql>exit


-- Easy connection(Regular database users)

$ sqlplus hr @ edvmrlpo: 1521/ orclpd15
Enter password:******
--youre in now
sql> show user
--output: 'hr'

sql> show con_name 

sq> select * from employees;

--LOCAL NAMING
$ cd $ ORACLE_HOME/ network/ admin 
$ISL
$more tnsnames.ora

--output:
ORCL CDB=
(descreption= ......)
(address= (protocol =TCP)(hoat= cdmrlpo --host)
(port= 1521--listener port))
(CONNECT_DATa= ...)
(SERVER=..)
(SERVICE_NAME= ORCLCDB)




