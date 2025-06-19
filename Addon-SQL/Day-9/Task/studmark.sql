mysql> create database studmark;
Query OK, 1 row affected (0.01 sec)

mysql> use studmark;
Database changed
mysql> create table studmark(
    -> rollno int,
    -> name varchar(20),
    -> department varchar(20),
    -> studmark int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into studmark values(232642,'Ruby','CT',85);
Query OK, 1 row affected (0.01 sec)

mysql> insert into studmark values(232606,'Lithu','CT',87);
Query OK, 1 row affected (0.00 sec)

mysql> insert into studmark values(232625,'Sara','CT',72);
Query OK, 1 row affected (0.00 sec)

mysql> insert into studmark values(232608,'zara','CT',90);
Query OK, 1 row affected (0.00 sec)

mysql> insert into studmark values(232618,'pavi','CT',94);
Query OK, 1 row affected (0.00 sec)

mysql> insert into studmark values(232629,'ravi','CT',78);
Query OK, 1 row affected (0.00 sec)

mysql> insert into studmark values(232638,'kathir','CT',79);
Query OK, 1 row affected (0.00 sec)

mysql> select* from studmark;
+--------+--------+------------+----------+
| rollno | name   | department | studmark |
+--------+--------+------------+----------+
| 232642 | Ruby   | CT         |       85 |
| 232606 | Lithu  | CT         |       87 |
| 232625 | Sara   | CT         |       72 |
| 232608 | zara   | CT         |       90 |
| 232618 | pavi   | CT         |       94 |
| 232629 | ravi   | CT         |       78 |
| 232638 | kathir | CT         |       79 |
+--------+--------+------------+----------+
7 rows in set (0.00 sec)

mysql> select* from studmark where studmark > 80;
+--------+-------+------------+----------+
| rollno | name  | department | studmark |
+--------+-------+------------+----------+
| 232642 | Ruby  | CT         |       85 |
| 232606 | Lithu | CT         |       87 |
| 232608 | zara  | CT         |       90 |
| 232618 | pavi  | CT         |       94 |
+--------+-------+------------+----------+
4 rows in set (0.00 sec)
