Using DBCA in Silent Mode

Create a new Container database named ORCL with one PDB named pdb1 using the General Purpose template:

$ORACLE_HOME/bin/dbca -silent -createDatabase

-templateName General_Purpose.dbc-gdbname ORCL

-sid ORCL -createAsContainer Database true

-numberOfPDBs 1-pdbName pdb1 -use LocalUndoForPDBs true

-responseFile NO_VALUE -characterSet AL32UTF8

-totalMemory 1800 -sysPassword Welcome_1