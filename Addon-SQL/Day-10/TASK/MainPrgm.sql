mysql> CREATE TABLE Sales (
    ->     SaleID INT PRIMARY KEY,
    ->     ProductName VARCHAR(100),
    ->     Category VARCHAR(50),
    ->     Region VARCHAR(50),
    ->     SaleDate DATE,
    ->     Quantity INT,
    ->     UnitPrice DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Sales values(1, 'Laptop', 'Electronics', 'North', '2025-06-01', 2, 1200.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Sales values(2, 'Mouse', 'Electronics', 'South', '2025-06-02', 5, 25.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Sales values(3, 'Chair', 'Furniture', 'North', '2025-06-03', 1, 150.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Sales values(4, 'Notebook', 'Stationery', 'East', '2025-06-04', 10, 3.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Sales values(5, 'Monitor', 'Electronics', 'North', '2025-06-05', 3, 300.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Sales values(6, 'Desk', 'Furniture', 'South', '2025-06-05', 1, 250.00);
Query OK, 1 row affected (0.01 sec)

mysql> select*from Sales;
+--------+-------------+-------------+--------+------------+----------+-----------+
| SaleID | ProductName | Category    | Region | SaleDate   | Quantity | UnitPrice |
+--------+-------------+-------------+--------+------------+----------+-----------+
|      1 | Laptop      | Electronics | North  | 2025-06-01 |        2 |   1200.00 |
|      2 | Mouse       | Electronics | South  | 2025-06-02 |        5 |     25.00 |
|      3 | Chair       | Furniture   | North  | 2025-06-03 |        1 |    150.00 |
|      4 | Notebook    | Stationery  | East   | 2025-06-04 |       10 |      3.00 |
|      5 | Monitor     | Electronics | North  | 2025-06-05 |        3 |    300.00 |
|      6 | Desk        | Furniture   | South  | 2025-06-05 |        1 |    250.00 |
+--------+-------------+-------------+--------+------------+----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT Category,
    ->        SUM(Quantity * UnitPrice) AS TotalSales
    -> FROM Sales
    -> GROUP BY Category;
+-------------+------------+
| Category    | TotalSales |
+-------------+------------+
| Electronics |    3425.00 |
| Furniture   |     400.00 |
| Stationery  |      30.00 |
+-------------+------------+
3 rows in set (0.02 sec)

mysql> SELECT SaleDate,
    ->        SUM(Quantity * UnitPrice) AS TotalSales,
    ->        COUNT(*) AS Transactions
    -> FROM Sales
    -> GROUP BY SaleDate
    -> ORDER BY SaleDate;
+------------+------------+--------------+
| SaleDate   | TotalSales | Transactions |
+------------+------------+--------------+
| 2025-06-01 |    2400.00 |            1 |
| 2025-06-02 |     125.00 |            1 |
| 2025-06-03 |     150.00 |            1 |
| 2025-06-04 |      30.00 |            1 |
| 2025-06-05 |    1150.00 |            2 |
+------------+------------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT Category,
    ->        SUM(Quantity * UnitPrice) AS TotalSales
    -> FROM Sales
    -> WHERE SaleDate BETWEEN '2025-06-01' AND '2025-06-30'
    -> GROUP BY Category;
+-------------+------------+
| Category    | TotalSales |
+-------------+------------+
| Electronics |    3425.00 |
| Furniture   |     400.00 |
| Stationery  |      30.00 |
+-------------+------------+
3 rows in set (0.01 sec)
