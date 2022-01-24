mysql> CREATE VIEW full_name AS
    -> SELECT first_name, last_name
    -> FROM fellowship_candidates
    -> WHERE hired_city = 'Mumbai';
Query OK, 0 rows affected (0.02 sec)
mysql> SELECT *FROM full_name;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Gyanesh    | Mahajan   |
| Gayatri    | Pandey    |
| Gaju       | Singh     |
| Subodh     | Mahajan   |
| Subash     | Mahajan   |
+------------+-----------+
5 rows in set (0.01 sec)
SELECT *FROM fellowship_candidates;

mysql> CREATE VIEW StudentNames AS
    -> SELECT id, first_name, last_name
    -> FROM hired_candidate
    -> WHERE degree = 'M.Com';
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT *FROM  StudentNames;
+----+------------+-----------+
| id | first_name | last_name |
+----+------------+-----------+
|  3 | Shaunak    | Wankhade  |
|  5 | Shaurya    | Wankhade  |
+----+------------+-----------+
2 rows in set (0.02 sec)


mysql> CREATE VIEW maker_plan AS SELECT * FROM maker_program;
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> SELECT * FROM maker_plan;
+----+--------------+--------------+--------------+---------------+--------------+---------------------+-------------+--------+---------------------+--------------+
| id | program_name | program_type | program_link | tech_stack_id | tech_type_id | is_program_approved | description | status | creator_stamp       | creator_user |
+----+--------------+--------------+--------------+---------------+--------------+---------------------+-------------+--------+---------------------+--------------+
|  1 |           55 | Paid         | Audience     |             1 |            1 |                   1 | approved    |      1 | 2022-02-05 00:00:00 |           22 |
|  2 |           55 | Paid         | Audience     |             2 |            2 |                   1 | approved    |      1 | 2022-02-05 00:00:00 |           23 |
|  3 |           55 | Paid         | Audience     |             3 |            3 |                   1 | approved    |      1 | 2022-02-05 00:00:00 |           24 |
|  4 |          551 | Paid         | Audience     |             4 |            4 |                   1 | approved    |      1 | 2022-02-05 00:00:00 |           25 |
|  5 |          550 | Paid         | Audience     |             3 |            3 |                   1 | approved    |      1 | 2022-02-05 00:00:00 |           27 |
+----+--------------+--------------+--------------+---------------+--------------+---------------------+-------------+--------+---------------------+--------------+