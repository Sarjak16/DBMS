-- User Management
-- Creating a user
-- The syntax for creating a user is:
   CREATE USER username IDENTIFIED BY password;
For example:

   CREATE USER brian IDENTIFIED BY brianpass;

--    Granting privileges
-- The syntax for granting privileges is:

   GRANT privilege TO user;
-- For example:

   GRANT dba TO brian;

   -- Change password
-- The syntax for changing user password is:

   ALTER USER username IDENTIFIED BY password;
-- For example:

   ALTER USER brian IDENTIFIED BY brianpassword;

-- Importing and exporting

-- There are two methods of backing up and restoring database tables and data. The 'exp' and 'imp' tools are simpler tools geared towards smaller databases.
--  If database structures become more complex or are very large ( > 50 GB for example) then using the RMAN tool is more appropriate.

-- Import a dump file using IMP

-- This command is used to import Oracle tables and table data from a *.dmp file created by the 'exp' tool.
--  Remember that this a command that is executed from the command line through $ORACLE_HOME/bin and not within SQL*Plus.

-- The syntax for importing a dump file is:

   imp KEYWORD=value

   -- There are number of parameters you can use for keywords.

To view all the keywords:

   imp HELP=yes
An example:

   imp brian/brianpassword FILE=mydump.dmp FULL=yes