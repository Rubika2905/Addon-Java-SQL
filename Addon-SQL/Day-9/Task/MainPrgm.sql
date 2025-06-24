mysql> CREATE TABLE Customers (
    ->     CustomerID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Email VARCHAR(100),
    ->     Country VARCHAR(50),
    ->     SignupDate DATE,
    ->     TotalPurchase DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Customers values(1, 'Rubi', 'rubi@gmail.com', 'USA', '2023-01-10', 250.75);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customers values(2, 'Abi', 'abi@gmail.com', 'Canada', '2022-11-23', 150.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customers values(3, 'Kavya', 'kavya@gmail.com', 'USA', '2024-05-05', 520.40);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customers values(4, 'Sharu', 'Sharu07@gmail.com', 'South Korea', '2023-03-18', 75.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Customers values(5, 'Mini', 'mini01@gmail.com', 'China', '2025-01-01', 640.90);
Query OK, 1 row affected (0.01 sec)

mysql> select*from Customers;
+------------+-------+-------------------+-------------+------------+---------------+
| CustomerID | Name  | Email             | Country     | SignupDate | TotalPurchase |
+------------+-------+-------------------+-------------+------------+---------------+
|          1 | Rubi  | rubi@gmail.com    | USA         | 2023-01-10 |        250.75 |
|          2 | Abi   | abi@gmail.com     | Canada      | 2022-11-23 |        150.00 |
|          3 | Kavya | kavya@gmail.com   | USA         | 2024-05-05 |        520.40 |
|          4 | Sharu | Sharu07@gmail.com | South Korea | 2023-03-18 |         75.00 |
|          5 | Mini  | mini01@gmail.com  | China       | 2025-01-01 |        640.90 |
+------------+-------+-------------------+-------------+------------+---------------+
5 rows in set (0.00 sec)
