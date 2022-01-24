mysql> c first_name,middle_name,last_name FROM fellowship_candidates
    -> WHERE id IN (SELECT id FROM fellowship_candidates);
+------------+-------------+-----------+
| first_name | middle_name | last_name |
+------------+-------------+-----------+
| Ganesh     | Prabhakar   | Mishra    |
| Gyanesh    | Prabhu      | Mahajan   |
| Gayatri    | Gajanan     | Pandey    |
| Gaju       | Gajanan     | Singh     |
| Subodh     | Sudhakar    | Mahajan   |
| Subash     | Sudhakar    | Mahajan   |
+------------+-------------+-----------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM company;

mysql> SELECT * FROM company
    -> WHERE id IN (SELECT id FROM company
    -> WHERE  creator_user =1);
+----+-------------+-------------------------------------+----------+--------+---------------+--------------+
| id | name        | address                             | location | status | creator_stamp | creator_user |
+----+-------------+-------------------------------------+----------+--------+---------------+--------------+
|  1 | EasyRewardz | Rudra Complex, Near Railway Station | Gurgaon  |      1 | NULL          |            1 |
|  2 | KPMG        | City Center                         | Banglore |      1 | NULL          |            1 |
|  3 | PWC         | City Center                         | Banglore |      1 | NULL          |            1 |
|  4 | TATA        | Rudra Complex, Near Railway Station | Gurgaon  |      1 | NULL          |            1 |
+----+-------------+-------------------------------------+----------+--------+---------------+--------------+
4 rows in set (0.01 sec)


mysql> SELECT * FROM fellowship_candidates
    -> WHERE id IN (SELECT id FROM fellowship_candidates
    -> WHERE  parent_annual_sal  =300000);
    +----+------------+-------------+-----------+---------------------+------------+------------+---------------------+--------+-------------------+-----------+-----------------+----------------------+------------------+------------------+------------+------------------------+-------------+-------------------+-------------------+-------------------+------------+----------------+------------+--------------+------------------+----------------------+------------------+-------------------------+------------+--------+---------------+--------------+
| id | first_name | middle_name | last_name | email               | mobile_num | hired_city | hired_date          | degree | permanent_pincode | hired_lab | attitude_remark | communication_remark | knowledge_remark | aggregate_remark | birth_date | is_birth_date_verified | parent_name | parent_occupation | parent_mobile_num | parent_annual_sal | local_addr | permanent_addr | photo_path | joining_date | candidate_status | personal_info_filled | bank_info_filled | educational_info_filled | doc_status | remark | creator_stamp | creator_user |
+----+------------+-------------+-----------+---------------------+------------+------------+---------------------+--------+-------------------+-----------+-----------------+----------------------+------------------+------------------+------------+------------------------+-------------+-------------------+-------------------+-------------------+------------+----------------+------------+--------------+------------------+----------------------+------------------+-------------------------+------------+--------+---------------+--------------+
|  3 | Gayatri    | Gajanan     | Pandey    | gayatrih@gmail.com  | 8956767890 | Mumbai     | 2019-12-13 00:00:00 | B.E    |            277303 | TATA      | Good            | Good                 | Good             | good             | 1999-12-13 |                      1 | Arun        | Farmer            |        7556789056 |            300000 | Kolhapur   | Kolhapur       | photo_path | 2019-12-13   | Good             |                    1 |                1 |                       1 | Correct    | Good   | NULL          |            1 |
|  6 | Subash     | Sudhakar    | Mahajan   | subodh@gmail.com    | 8956767890 | Mumbai     | 2019-12-13 00:00:00 | B.E    |            277303 | TATA      | Good            | Good                 | Good             | good             | 1999-12-13 |                      1 | Sudhakar    | Farmer            |        7556789056 |            300000 | Kolhapur   | Kolhapur       | photo_path | 2019-12-13   | Good             |                    1 |                1 |                       1 | Correct    | Good   | NULL          |            1 |
+----+------------+-------------+-----------+---------------------+------------+------------+---------------------+--------+-------------------+-----------+-----------------+----------------------+------------------+------------------+------------+------------------------+-------------+-------------------+-------------------+-------------------+------------+----------------+------------+--------------+------------------+----------------------+------------------+-------------------------+------------+--------+---------------+--------------+
2 rows in set (0.00 sec)
-------+-------------------+-------------------+-------------------+------------+----------------+------------+--------------+------------------+----------------------+------------------+-------------------------+------------+--------+---------------+--------------+
2 rows in set (0.00 sec)

mysql>






 