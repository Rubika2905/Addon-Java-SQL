mysql> create database studcourse;
Query OK, 1 row affected (0.04 sec)
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| book               |
| information_schema |
| mysql              |
| performance_schema |
| studcourse         |
| sys                |
+--------------------+
6 rows in set (0.14 sec)

mysql> use studcourse;
Database changed
mysql> create table student(
    -> srollno int,
    -> sname varchar(20),
    -> course varchar(30)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into student values(232601,'Rubi','java');
Query OK, 1 row affected (0.03 sec)

mysql> insert into student values(232602,'Abi','c');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232603,'pooja','c++');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232604,'punitha','sql');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232605,'pavi','java');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232606,'Thara','sql');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232607,'Sharu','java');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232607,'Kiki','c');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232609,'Vaish','sql');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232610,'Nandhu','java');
Query OK, 1 row affected (0.01 sec)

mysql> select*from student;
+---------+---------+--------+
| srollno | sname   | course |
+---------+---------+--------+
|  232601 | Rubi    | java   |
|  232602 | Abi     | c      |
|  232603 | pooja   | c++    |
|  232604 | punitha | sql    |
|  232605 | pavi    | java   |
|  232606 | Thara   | sql    |
|  232607 | Sharu   | java   |
|  232607 | Kiki    | c      |
|  232609 | Vaish   | sql    |
|  232610 | Nandhu  | java   |
+---------+---------+--------+
10 rows in set (0.01 sec)

mysql> select count(*);
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.01 sec)

mysql> select course,count(*) as studcount from student group by course;
+--------+-----------+
| course | studcount |
+--------+-----------+
| java   |         4 |
| c      |         2 |
| c++    |         1 |
| sql    |         3 |
+--------+-----------+
4 rows in set (0.01 sec)
