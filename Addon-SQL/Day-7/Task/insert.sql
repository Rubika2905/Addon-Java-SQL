mysql> create table Student (
    -> sname varchar(50),
    -> sroll int,
    -> sgmail varchar(50),
    -> phnum int
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into Student values('rubi',232642,'rubi@gmail.com',);
Query OK, 1 row affected (0.03 sec)

mysql> select*
    -> from Student;
+-----------+--------+---------------------+----------+
| sname     | sroll  | sgmail              | phnum    |
+-----------+--------+---------------------+----------+
| rubi      | 232642 | rubi@gmail.com      |929472567 |
+-----------+--------+---------------------+----------+
1 row in set (0.00 sec)

mysql> insert into student values('lithu',232606,'lithu@gmail.com',807535771);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('abi',232601,'abi@gmail.com',952789382);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('vaish',232656,'vaish@gmail.com',804672444);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('kiki',232642,'kiki@gmail.com',689045243);
Query OK, 1 row affected (0.01 sec)

mysql> select*
    -> from Student;
+-----------+--------+---------------------+-----------+
| sname     | sroll  | sgmail              | phnum     |
+-----------+--------+---------------------+-----------+
| rubi      | 232642 | rubi@gmail.com      | 929472567 |
| lithu     | 232606 | lithu@gmail.com     | 807535771 |
| abi       | 232601 | abi@gmail.com       | 952789382 |
| vaish     | 232656 | vaish@gmail.com     | 804672444 |
| kiki      | 232622 | kiki@gmail.com      | 689045243 |
+-----------+--------+---------------------+-----------+
5 rows in set (0.00 sec)
