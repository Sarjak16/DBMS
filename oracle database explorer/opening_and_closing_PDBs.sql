

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

--After restarting a CDB instance, all PDBs except PDB$SEED are by default kept in mounted mode.

--PDB$SEED is opened in READ-ONLY.

-- if you want pdb to  automatically open whenever CDB restarts, use the SAVE STATE clause of the ALTER PLAUGGABLE DATABASE command.

SQL> ALTER PLUGGABLE DATABASE pdb1 SAVE STATE;

--Revert back to default beheviour using :
SQL> ALTER PLUGGABL DATABASE PDB1 DISCARD STATE;
