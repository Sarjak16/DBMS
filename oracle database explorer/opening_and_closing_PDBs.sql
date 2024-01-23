

-- ---------------------------------------Opening and Closing PDBs

-- Open/close a PDB to open/close its data files.

-- Use the ALTER PLUGGABLE DATABASE command or STARTUP and SHUTDOWN commands to open and close PDBs:

SQL> ALTER PLUGGABLE DATABASE PDB1 OPEN;

-- ALTER PLUGGABLE DATABASE  command lets you change from any open mode to another.

--To open all user created PDBS in one command:
SQL> ALTER PLAUGGABLE DATABASE ALL OPEN;
--TO close PDB1 we write
SQL>ALTER PLUGGABLE DATABASE PDB1 CLOSE;
-- TO CLOSE ALL OPENED PDBS WE USE:
SQL> ALTER PLAUGGABLE DATABASE ALL CLOSE;