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

