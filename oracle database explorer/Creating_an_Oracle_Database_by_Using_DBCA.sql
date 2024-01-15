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
--output:........

SQL> exit

Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 Production

Version 19.3.0.0.0

[oracle@edvmr1p0 ~]$ clear




-------------------------------------DEMO2: DBCA in silent mode
--shut down CDB! first:
[oracle@edvmr1p0 ~]$ oraenv

ORACLE SID = [CDB1] ?

The Oracle base remains unchanged with value /u01/app/oracle [oracle@edvmr1p0 ~]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 Version 19.3.0.0.0 Production on Tue Aug 4 00:15:32 2020

Copyright (c) 1982, 2019, Oracle. All rights reserved.

Connected to:

Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 Production Version 19.3.0.0.0

SQL> shutdown immediate 
Database closed.
 Database dismounted.
ORACLE instance shut down. 
SQL> exit

Version 19.3.0.0.0

oraclededear100 -15 cat crab.sh

SORACIEHOME/bin/daca silent createDatabase templatesane General Purpose dbc-gdbrane CO2 sid C002 createAsContainerDatabase True nunberorrons 2 poblame pdb secaratundofarPods true respunserite NO VA total memory 1800 sysPassword Loud 40 systemPassword Loud 40 pdbAdminPassword Loud 40 enconfiguration DREXPRESS dbshepPassword Loud 40 exfxpressport 5302 enableArchive false feverarebestinats on /001/app/oracle/fast recovery area recoveryAreašize 15000 datafileDestination /u01/app/oracle/oradata

[oracle@edvarip0-15/crdb.sh Prepare for do operation

complete

Copying database files

31% complete

Creating and starting Oracle instance

32% complete

365 complete

40% complete

43% complete

46% complete

Completing Database Creation

51% complete 54% complete

Creating Pluggable Databases

sas complete

77% complete

Executing Post Configuration Actions

100% complete

database creation complete. For details check the logfiles at:

/u01/app/oracle/cfgtoollogs/dbca/CDB2.

Database Information:

Global Database Rane (DB2

System Identifier(SID).CDR2

Look at the Log File "/u01/app/oracle/cfgtoollogs/obca/CD82/cb6z.log for further details".

[oracle@edvmr1p0 ~]$ . oraenv

ORACLE SID = [CDB1] ? CDB2

The Oracle base remains unchanged with value /u01/app/oracle [oracle@edvmr1p0 ~]$ sqlplus / as sysdba

SQL*Plus: Release 19.0.0.0.0 Version 19.3.0.0.0 Production on Tue Aug 4 00:35:42 2020

Copyright (c) 1982, 2019, Oracle. All rights reserved.

Connected to:

Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 Production Version 19.3.0.0.0

SQL> show pdbs

CON ID CON NAME

OPEN MODE

RESTRICTED

2 PDB$SEED

READ ONLY NO

3 PDB1

READ WRITE NO

SQL> exit

Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production

Version 19.3.0.0.0

[oracle@edvmr1p0 ~]$







