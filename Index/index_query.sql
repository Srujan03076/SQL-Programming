#index

 SELECT parent_annual_sal FROM  fellowship_candidates where parent_annual_sal=150000;
+-------------------+
| parent_annual_sal |
+-------------------+
|            150000 |
+-------------------+

SELECT first_name  FROM  fellowship_candidates where parent_annual_sal=150000;
+------------+
| first_name |
+------------+
| Gyanesh    |
+------------+
1 row in set (0.00 sec)

 EXPLAIN SELECT first_name  FROM  fellowship_candidates where parent_annual_sal=150000;
+----+-------------+-----------------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table                 | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-----------------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | fellowship_candidates | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    4 |    25.00 | Using where |
+----+-------------+-----------------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0.01 sec)

CREATE INDEX salary_index ON fellowship_candidates( parent_annual_sal);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

SELECT first_name  FROM  fellowship_candidates where parent_annual_sal=150000;
+------------+
| first_name |
+------------+
| Gyanesh    |
+------------+
1 row in set (0.01 sec)

EXPLAIN SELECT first_name  FROM  fellowship_candidates where parent_annual_sal=150000;
+----+-------------+-----------------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
| id | select_type | table                 | partitions | type | possible_keys | key          | key_len | ref   | rows | filtered | Extra |
+----+-------------+-----------------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | fellowship_candidates | NULL       | ref  | salary_index  | salary_index | 9       | const |    1 |   100.00 | NULL  |
+----+-------------+-----------------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

