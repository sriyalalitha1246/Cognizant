# SQL Exercise 1 - Ranking and Window Functions

## Objective

The objective of this exercise is to understand SQL Window Functions used for ranking and grouping records.

## Topics Covered

- OVER()
- PARTITION BY
- ROW_NUMBER()
- RANK()
- DENSE_RANK()

## Description

ROW_NUMBER() assigns a unique number to every row.

RANK() assigns the same rank for duplicate values but skips the next rank.

DENSE_RANK() assigns the same rank for duplicate values without skipping ranks.

PARTITION BY divides the data into groups before applying ranking.

OVER() specifies how the ranking operation should be performed.

## Output

The queries rank products based on their prices and also rank products within each category.

## Conclusion

Window functions make SQL queries more powerful by allowing ranking and partitioning without changing the original data.

# Remaining SQL Server Topics

These are the important SQL Server concepts that I learned apart from Window Functions and Stored Procedures.

---

# 1. Views

## What is a View?

A View is a virtual table that is created using a SELECT query. It does not store the actual data. Whenever we access a view, SQL Server fetches the latest data from the original table.

Views are mainly used to simplify long SQL queries and to hide unnecessary columns from users.

### Advantages

- Makes complex queries simple.
- Improves security by hiding sensitive data.
- Reuses the same query multiple times.
- Easy to maintain.

### Example

```sql
CREATE VIEW ElectronicsProducts AS
SELECT ProductID, ProductName, Price
FROM Products
WHERE Category='Electronics';
```

To display the view

```sql
SELECT * FROM ElectronicsProducts;
```

To modify the view

```sql
ALTER VIEW ElectronicsProducts AS
SELECT *
FROM Products;
```

To remove the view

```sql
DROP VIEW ElectronicsProducts;
```

---

# 2. Indexes

## What is an Index?

An Index helps SQL Server find records faster.

It works similarly to the index page in a book. Instead of checking every row, SQL Server uses the index to directly locate the required data.

### Types of Indexes

### Clustered Index

A clustered index stores the table data in sorted order.

Only one clustered index can exist because the table can be physically sorted only once.

```sql
CREATE CLUSTERED INDEX idx_ProductID
ON Products(ProductID);
```

### Non-Clustered Index

A non-clustered index creates a separate lookup table without changing the original data order.

Many non-clustered indexes can be created.

```sql
CREATE INDEX idx_ProductName
ON Products(ProductName);
```

### Advantages

- Faster searching
- Better sorting performance
- Improves query execution speed

### Disadvantages

- Takes extra storage.
- Insert, Update and Delete operations become slightly slower because indexes also need updating.

---

# 3. User Defined Functions

## What is a Function?

A Function is a reusable SQL object that always returns a value or a table.

Unlike Stored Procedures, a function cannot execute independently. It must be called inside another SQL statement.

### Types

### Scalar Function

Returns only one value.

Example

```sql
CREATE FUNCTION GetGST
(
@Price DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
RETURN @Price*0.18;
END;
```

Execute

```sql
SELECT dbo.GetGST(5000);
```

---

### Table Valued Function

Returns multiple rows in table format.

```sql
CREATE FUNCTION GetElectronics()
RETURNS TABLE
AS
RETURN
(
SELECT *
FROM Products
WHERE Category='Electronics'
);
```

Execute

```sql
SELECT * FROM dbo.GetElectronics();
```

---

# 4. Triggers

## What is a Trigger?

A Trigger is a special Stored Procedure that automatically runs whenever INSERT, UPDATE or DELETE operations happen on a table.

We don't call a trigger manually. SQL Server executes it automatically.

### Types of Triggers

- AFTER Trigger
- INSTEAD OF Trigger
- DDL Trigger
- LOGON Trigger

### Example

```sql
CREATE TRIGGER ProductInsert
ON Products
AFTER INSERT
AS
BEGIN
PRINT 'New Product Added';
END;
```

Delete Trigger

```sql
DROP TRIGGER ProductInsert;
```

### Uses

- Audit data changes.
- Maintain data integrity.
- Automatically perform additional operations.

---

# 5. Cursor

## What is a Cursor?

Normally SQL processes all rows together.

A Cursor is used when we need to process records one by one.

Although cursors are useful in some situations, they are slower than normal SQL queries.

### Cursor Steps

1. Declare Cursor
2. Open Cursor
3. Fetch Data
4. Process Row
5. Close Cursor
6. Deallocate Cursor

Example

```sql
DECLARE ProductCursor CURSOR
FOR
SELECT ProductName
FROM Products;

OPEN ProductCursor;

FETCH NEXT FROM ProductCursor;

CLOSE ProductCursor;

DEALLOCATE ProductCursor;
```

### Advantages

- Good for row-by-row processing.
- Useful for complex business logic.

### Disadvantages

- Slow for large tables.
- Uses more memory.

---

# 6. Exception Handling

## What is Exception Handling?

Exception Handling is used to prevent SQL programs from stopping unexpectedly when an error occurs.

SQL Server provides TRY...CATCH blocks to handle runtime errors.

### Example

```sql
BEGIN TRY

SELECT 10/0;

END TRY

BEGIN CATCH

PRINT 'An Error Occurred';

END CATCH;
```

### THROW

Used to generate a custom error.

```sql
THROW 50001,'Invalid Product',1;
```

### RAISERROR

Another method used to display custom error messages.

```sql
RAISERROR('Invalid Product',16,1);
```

---

# 7. Transactions

## What is a Transaction?

A Transaction is a group of SQL statements executed together.

If every statement succeeds, the transaction is committed.

If any statement fails, all previous changes can be rolled back.

### ACID Properties

**Atomicity** - Either all operations happen or none happen.

**Consistency** - Database remains correct before and after execution.

**Isolation** - Multiple transactions do not affect each other.

**Durability** - Once committed, data is permanently saved.

### Commands

Start Transaction

```sql
BEGIN TRANSACTION;
```

Save Changes

```sql
COMMIT;
```

Undo Changes

```sql
ROLLBACK;
```

Example

```sql
BEGIN TRANSACTION;

UPDATE Products
SET Price=7000
WHERE ProductID=1;

COMMIT;
```

Rollback Example

```sql
BEGIN TRANSACTION;

UPDATE Products
SET Price=9000
WHERE ProductID=2;

ROLLBACK;
```

### Savepoint

A Savepoint allows us to roll back only a part of the transaction instead of cancelling the whole transaction.

```sql
BEGIN TRANSACTION;

SAVE TRANSACTION SavePoint1;

UPDATE Products
SET Price=5000
WHERE ProductID=3;

ROLLBACK TRANSACTION SavePoint1;

COMMIT;
```

---

# My Understanding

After learning these topics, I understood that SQL Server provides many features beyond basic CRUD operations. Views simplify complex queries, Indexes improve performance, Functions and Stored Procedures help in code reuse, Triggers automate tasks, Cursors process records one by one, Exception Handling manages runtime errors, and Transactions ensure data consistency using ACID properties. These concepts are very useful while building real-world database applications.
