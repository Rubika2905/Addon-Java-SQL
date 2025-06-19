mysql> create table course(
    -> coursename varchar(30),
    -> coursefees int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into studmark values('WD',20000);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into course values('WD',20000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('FSD',23000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('SD',35000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('IMS',18000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('MAYA',15000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values('AWS',38000);
Query OK, 1 row affected (0.00 sec)

mysql> select* from course
    -> ;
+------------+------------+
| coursename | coursefees |
+------------+------------+
| WD         |      20000 |
| FSD        |      23000 |
| SD         |      35000 |
| IMS        |      18000 |
| MAYA       |      15000 |
| AWS        |      38000 |
+------------+------------+
6 rows in set (0.00 sec)
mysql> select* from course order by coursefees asc;
+------------+------------+
| coursename | coursefees |
+------------+------------+
| MAYA       |      15000 |
| IMS        |      18000 |
| WD         |      20000 |
| FSD        |      23000 |
| SD         |      35000 |
| AWS        |      38000 |
+------------+------------+
6 rows in set (0.00 sec)
