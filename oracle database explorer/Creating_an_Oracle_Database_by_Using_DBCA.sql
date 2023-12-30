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