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
mysql> select*
    -> from mark
    -> where studentmark=(select max(studentmark)
    -> from mark);

mysql> select*from mark where studmark=(select max(studmark) from mark);
+----------+
| studmark |
+----------+
|       95 |
+----------+
1 row in set (0.00 sec)
