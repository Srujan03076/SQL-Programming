/* 
Creating database backup 
*/
C:\Users\Admin>cd ..

C:\Users>cd ..

C:\>cd "Program Files"

C:\Program Files>cd MySQL

C:\Program Files\MySQL>cd "MySQL Server 8.0"

C:\Program Files\MySQL\MySQL Server 8.0>cd bin

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump -u root -p lmsdb > "C:\Users\Admin\Desktop\SQL CFP\DatabaseBackup\lmsdb_backup.sql"
Enter password: **********

/* 
Droping  the database from mysql  
*/

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.27 MySQL Community Server - GPL

mysql> drop database lmsdb;
Query OK, 32 rows affected (0.41 sec)

mysql> use lmsdb;
ERROR 1049 (42000): Unknown database 'lmsdb'
mysql> exit
Bye

/* 
Drop the database   
*/

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password:  **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 8.0.27 MySQL Community Server - GPL

mysql> drop database lmsdb;
Query OK, 32 rows affected (0.65 sec)

mysql> use lmsdb;
ERROR 1049 (42000): Unknown database 'lmsdb'
mysql> create database lmsdb;
Query OK, 1 row affected (0.02 sec)
mysql> exit
Bye

/* 
Restoring database backup from the backup file
*/

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p lmsdb < "C:\Users\Admin\Desktop\SQL CFP\DatabaseBackup\lmsdb_backup.sql"
Enter password: **********

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 8.0.27 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

mysql> use lmsdb;
database changed
mysql> show tables;

+--------------------------------+
| Tables_in_lmsdb                |
+--------------------------------+
| app_parameters                 |
| candidate                      |
| candidate_bank_det             |
| candidate_biodata              |
| candidate_docs                 |
| candidate_qualification        |
| candidate_techstack_assignment |
| candidates_education_det_check |
| candidates_personal_det_check  |
| company                        |
| company_requirement            |
| company_trash                 |
| fellowship_candidates          |
| hired_candidate                |
| lab                            |
| lab_threshold                  |
| maker_program                  |
| mentor                         |
| mentor_ideation_map            |
| mentor_techstack               |
| personal_info                  |
| stores                         |
| tech_stack                     |
| tech_type                      |
| temporary_mis                  |
| test_part                      |
| user_details                   |
| user_roles                     |
+--------------------------------+
;
