mysql> create database Library;
Query OK, 1 row affected (0.04 sec)

mysql> use Library;
Database changed
mysql> CREATE TABLE Authors (
    ->     AuthorID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     Country VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> CREATE TABLE Books (
    ->     BookID INT PRIMARY KEY,
    ->     Title VARCHAR(150),
    ->     AuthorID INT,
    ->     Genre VARCHAR(50),
    ->     YearPublished INT,
    ->     FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Borrowers (
    ->     BorrowerID INT PRIMARY KEY,
    ->     Name VARCHAR(100),
    ->     BookID INT,
    ->     BorrowDate DATE,
    ->     ReturnDate DATE,
    ->     FOREIGN KEY (BookID) REFERENCES Books(BookID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Authors (AuthorID, Name, Country) VALUES
    -> (1, 'J.K. Rowling', 'United Kingdom'),
    -> (2, 'George Orwell', 'United Kingdom'),
    -> (3, 'Haruki Murakami', 'Japan');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Books (BookID, Title, AuthorID, Genre, YearPublished) VALUES
    -> (101, 'Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 1997),
    -> (102, '1984', 2, 'Dystopian', 1949),
    -> (103, 'Kafka on the Shore', 3, 'Magical Realism', 2002);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Borrowers (BorrowerID, Name, BookID, BorrowDate, ReturnDate) VALUES
    -> (1, 'Alice Smith', 101, '2025-06-01', '2025-06-15'),
    -> (2, 'Bob Johnson', 102, '2025-06-10', NULL),
    -> (3, 'Charlie Davis', 103, '2025-06-05', '2025-06-20');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select*from Authors;
+----------+-----------------+----------------+
| AuthorID | Name            | Country        |
+----------+-----------------+----------------+
|        1 | J.K. Rowling    | United Kingdom |
|        2 | George Orwell   | United Kingdom |
|        3 | Haruki Murakami | Japan          |
+----------+-----------------+----------------+
3 rows in set (0.01 sec)

mysql> select*from Books;
+--------+---------------------------------------+----------+-----------------+---------------+
| BookID | Title                                 | AuthorID | Genre           | YearPublished |
+--------+---------------------------------------+----------+-----------------+---------------+
|    101 | Harry Potter and the Sorcerer's Stone |        1 | Fantasy         |          1997 |
|    102 | 1984                                  |        2 | Dystopian       |          1949 |
|    103 | Kafka on the Shore                    |        3 | Magical Realism |          2002 |
+--------+---------------------------------------+----------+-----------------+---------------+
3 rows in set (0.01 sec)

mysql> select*from Borrowers;
+------------+---------------+--------+------------+------------+
| BorrowerID | Name          | BookID | BorrowDate | ReturnDate |
+------------+---------------+--------+------------+------------+
|          1 | Alice Smith   |    101 | 2025-06-01 | 2025-06-15 |
|          2 | Bob Johnson   |    102 | 2025-06-10 | NULL       |
|          3 | Charlie Davis |    103 | 2025-06-05 | 2025-06-20 |
+------------+---------------+--------+------------+------------+
3 rows in set (0.00 sec)
