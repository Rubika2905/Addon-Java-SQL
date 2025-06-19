mysql> create table orders(
    -> orderid int,
    -> customername varchar(50),
    -> amount int
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into orders values(101,'Rubi',550);
Query OK, 1 row affected (0.00 sec)

mysql> insert into orders values(102,'Abi',600);
Query OK, 1 row affected (0.00 sec)

mysql> insert into orders values(103,'Puni',650);
Query OK, 1 row affected (0.00 sec)

mysql> create table customers(
    -> sno int,
    -> customerplace varchar(40)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> insert into customers values(1,'India');
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(2,'America');
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(3,'Canada');
Query OK, 1 row affected (0.00 sec)

mysql> select*from orders,customers;
+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|     103 | Puni         |    650 |    1 | India         |
|     102 | Abi          |    600 |    1 | India         |
|     101 | Rubi         |    550 |    1 | India         |
|     103 | Puni         |    650 |    2 | America       |
|     102 | Abi          |    600 |    2 | America       |
|     101 | Rubi         |    550 |    2 | America       |
|     103 | Puni         |    650 |    3 | Canada        |
|     102 | Abi          |    600 |    3 | Canada        |
|     101 | Rubi         |    550 |    3 | Canada        |
+---------+--------------+--------+------+---------------+
9 rows in set (0.00 sec)

mysql> select*from orders cross join customers;
+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|     103 | Puni         |    650 |    1 | India         |
|     102 | Abi          |    600 |    1 | India         |
|     101 | Rubi         |    550 |    1 | India         |
|     103 | Puni         |    650 |    2 | America       |
|     102 | Abi          |    600 |    2 | America       |
|     101 | Rubi         |    550 |    2 | America       |
|     103 | Puni         |    650 |    3 | Canada        |
|     102 | Abi          |    600 |    3 | Canada        |
|     101 | Rubi         |    550 |    3 | Canada        |
+---------+--------------+--------+------+---------------+
9 rows in set (0.00 sec)
