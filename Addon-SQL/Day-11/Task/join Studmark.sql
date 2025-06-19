mysql> create database class;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| class              |
| emp                |
| employee           |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| studmark           |
| sys                |
| world              |
+--------------------+
10 rows in set (0.00 sec)

mysql> use class;
Database changed

mysql> create table student(
    -> sroll int,
    -> sname varchar(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values(232601,'Rubi');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232602,'Kiki');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232603,'Vaish');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232604,'Abi');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(232605,'Puni');
Query OK, 1 row affected (0.01 sec)

mysql> select*from student;
+---------+-------+
| srollno | sname |
+---------+-------+
|  232601 | Rubi  |
|  232602 | Kiki  |
|  232603 | Vaish |
|  232604 | Abi   |
|  232605 | Puni  |
+---------+-------+
5 rows in set (0.00 sec)

mysql> create table mark(
    -> studentmark int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into mark values (95)
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (78);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (72);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (80);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (86);
Query OK, 1 row affected (0.01 sec)

mysql> select*from mark;
+----------+
| studmark |
+----------+
|       95 |
|       78 |
|       72 |
|       80 |
|       86 |
+----------+
5 rows in set (0.00 sec)

mysql> select*from student cross join mark;
+---------+-------+----------+
| srollno | sname | studmark |
+---------+-------+----------+
|  232605 | Puni  |       95 |
|  232604 | Abi   |       95 |
|  232603 | Vaish |       95 |
|  232602 | Kiki  |       95 |
|  232601 | Rubi  |       95 |
|  232605 | Puni  |       78 |
|  232604 | Abi   |       78 |
|  232603 | Vaish |       78 |
|  232602 | Kiki  |       78 |
|  232601 | Rubi  |       78 |
|  232605 | Puni  |       72 |
|  232604 | Abi   |       72 |
|  232603 | Vaish |       72 |
|  232602 | Kiki  |       72 |
|  232601 | Rubi  |       72 |
|  232605 | Puni  |       80 |
|  232604 | Abi   |       80 |
|  232603 | Vaish |       80 |
|  232602 | Kiki  |       80 |
|  232601 | Rubi  |       80 |
|  232605 | Puni  |       86 |
|  232604 | Abi   |       86 |
|  232603 | Vaish |       86 |
|  232602 | Kiki  |       86 |
|  232601 | Rubi  |       86 |
+---------+-------+----------+
25 rows in set (0.00 sec)
