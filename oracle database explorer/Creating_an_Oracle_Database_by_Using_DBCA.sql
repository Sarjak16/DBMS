Using DBCA in Silent Mode

Create a new Container database named ORCL with one PDB named pdb1 using the General Purpose template:

$ORACLE_HOME/bin/dbca -silent -createDatabase

-templateName General_Purpose.dbc-gdbname ORCL

-sid ORCL -createAsContainer Database true

-numberOfPDBs 1-pdbName pdb1 -use LocalUndoForPDBs true

-responseFile NO_VALUE -characterSet AL32UTF8

-totalMemory 1800 -sysPassword Welcome_1


-systemPassword Welcome_1-pdbAdminPassword Welcome_1 emConfiguration DBEXPRESS -dbsnmpPassword Welcome_1

- -emExpressPort 5500 -enableArchive true

-recoveryAreaDestination /u03/app/oracle/fast_recovery_area -recoveryAreaSize 15000 -datafileDestination /u02/app/oracle/oradata

Delete a database named ORCL:

$ORACLE_HOME/bin/dbca -silent-deleteDatabase -sourceDB ORCL -sid ORCL -sysPassword Welcome_1




------------DEMO:


[oracle@edvmrlp0 ~]$ . oraenv

ORACLE SID = [orclcdb] ?


The Oracle base remains unchanged with value /u01/app/oracle

[oracle@edvmr1p0 ~]$ dbca

[oracle@edvmr1p0 ~]$ . oraenv

ORACLE SID = [orclcdb] ? CDB1

The Oracle base remains unchanged with value /u01/app/oracle

[oracle@edvmr1p0 ~]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 Production on Tue Aug 4 00:01:34 2020

Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle. All rights reserved.

Connected to:

Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 Version 19.3.0.0.0 Production

SQL> show pdbs

CON ID CON NAME

OPEN MODE RESTRICTED

2 PDB$SEED

READ ONLY NO

3 PDB1

READ WRITE NO

SQL> exit

Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 Production

Version 19.3.0.0.0

[oracle@edvmr1p0 ~]$ clear
