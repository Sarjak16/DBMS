-- STARTING AND SHUTTING DOWN  DATABSASE INSTANCES
  SQL>STARTUP
    1. NOMOUNT= STARTUP NOMOUNT
        INSTANCES STARTED 
        ONLY DBAS CAN CONNECT DATABASE IN THIS Mode
    
    2. MOUNT= STARTUP MOUNT 
        CONTROL FILES OPENED FOR THE INSTANCES
        ONLY DBAS CAN CONNECT FOR MAINTAINANCE OPERATION SUCH AS JPERFORMING FULL DATABASE RECOVERY.

    3. OPEN= STARTUP OPEN
        ALL FILES OPENED AS DESCRIBED BY CONTROL FILES FOR THE INSTANCE.
        IT IS DEFAULT AND ENEBLES NON DBA USERS TO CONNECT TO INSTANCE.

    NOTE: STARTUP OPEN COMMAND OPENS IN A CDB ROOT Container IN READ AND WRITE MODE , 
        AND IN PDB$SEED MODE IN READ ONLY MODE.

    4. MOUNT = user created PDBs STAY HERE.



 SQL> SHUTDOWN
    there are four shutdown modes:

    1. NORMAL: default mode
                slowest mode
                waits all sessions to logout.
    2. IMMEDIATE: terminates and rollback all transactions followed by checkpoint.

    3. TRANSACTIONAL: wait for all transactions which are runinng to complete and then shutdown.

    4. ABORT: immediate and fastest shutdown
                doesnt wait and  force shutdown.
                this is done if any shutting mode donot work.
                