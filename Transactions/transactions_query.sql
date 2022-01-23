Create Procedure st_transaction()
    -> BEGIN
    ->  START TRANSACTION;
    -> INSERT INTO user_roles(user_id,role_name) values (7,'bodybuilder');
    -> END //
    Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql> Call st_transaction();
Query OK, 1 row affected (0.01 sec)

mysql> Select * from user_roles;
+---------+-------------+
| user_id | role_name   |
+---------+-------------+
|       1 | doctor      |
|       2 | engineer    |
|       3 | pilot       |
|       4 | engineer    |
|       5 | compounder  |
|       6 | RAXY        |
|       6 | RAXY        |
|       6 | RAXY        |
|       6 | RAXY        |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |
|       7 | bodybuilder |

mysql> Delimiter //
mysql> Create Procedure storeproce_transaction_Rollback()
    -> BEGIN
    -> DECLARE exit handler for sqlexception
    -> BEGIN
    -> ROLLBACK;
    -> END;
    -> DECLARE exit handler for sqlwarning
    ->  BEGIN
    -> ROLLBACK;
    -> END;
    -> START TRANSACTION;
    -> INSERT INTO  user_roles (user_id,role_name) values();
    ->  UPDATE user_roles set role_name = 'Doctor' where id = 4;
    -> COMMIT;
    ->  END //
Query OK, 0 rows affected (0.01 sec)
mysql> Delimiter;
mysql> CALL store_transaction_Rollback ()
Query OK, 0 rows affected (0.00 sec)

mysql> Select * from user_roles;
