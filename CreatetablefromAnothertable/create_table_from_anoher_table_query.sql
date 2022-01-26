CREATE TABLE candidate AS
SELECT  first_name, last_name,email
FROM fellowship_candidates;
select * from candidate;
+------------+-----------+---------------------+
| first_name | last_name | email               |
+------------+-----------+---------------------+
| Ganesh     | Mishra    | ganesh@gmail.com    |
| Gyanesh    | Mahajan   | gyanesh@gmail.com   |
| Gayatri    | Pandey    | gayatrih@gmail.com  |
| Gaju       | Singh     | gaju@gmail.com      |
| Subodh     | Mahajan   | subodh@gmail.com    |
| Subash     | Mahajan   | subodh@gmail.com    |
+------------+-----------+---------------------+
6 rows in set (0.01 sec)


CREATE TABLE personal_info AS
SELECT  id ,first_name, last_name,degree
FROM fellowship_candidates
Where hired_city='Mumbai';
select * from fellowship_candidates;
select * from personal_info;
+----+------------+-----------+--------+
| id | first_name | last_name | degree |
+----+------------+-----------+--------+
|  2 | Gyanesh    | Mahajan   | B.E    |
|  3 | Gayatri    | Pandey    | B.E    |
|  4 | Gaju       | Singh     | B.E    |
|  5 | Subodh     | Mahajan   | B.E    |
|  6 | Subash     | Mahajan   | B.E    |
+----+------------+-----------+--------+
5 rows in set (0.00 sec)
