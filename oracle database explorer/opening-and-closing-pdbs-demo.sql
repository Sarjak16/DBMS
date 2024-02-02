[oracle@edvmr1p0 ~]$ oraenv

-- ORACLE SID = [orclcdb] 7

--The Oracle base remains unchanged with value /u01/app/oracle 
[oracle@edvmrlp0 -]$ sqlplus / as sysdba

-- SQL Plus: Release 19.0.0.0.0 Production on Tue Aug 4 08:00:42 2020

-- Version 19.3.0.0.0

-- Copyright (c) 1982, 2019, Oracle. All rights reserved.

-- Connected to an idle instance.

SQL> startup nomount

-- ORACLE instance started.

-- Total System Global Area    2013264224 bytes
-- Fixed Size  9136480 bytes
-- Variable Size   620756992 bytes
-- Database Buffers    1375731712 bytes
-- Redo Buffers     7639040 bytes

SQL> alter database mount;

-- Database altered.

SQL> alter database open;

-- Database altered.

SQL> show pdbs

-- CON ID CON NAME     OPEN MODE       RESTRICTED
-- ..............      .........       ...........

-- 2 PDB$SEED          READ ONLY        NO

-- 3 ORCLPDB1          MOUNTED

-- 4 ORCLPDB2          MOUNTED

SQL> @state

SQL> col con name for a30

SQL> select con name, state from dba pdb saved states

-- 2 /

-- no rows selected

SQL> alter pluggable database orclpdbi open;

-- Pluggable database altered.