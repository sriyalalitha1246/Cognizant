
-- Exercise 1 : Ranking and Window Functions


-- Create Table

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert Sample Data

INSERT INTO Products VALUES
(1,'Laptop','Electronics',65000),
(2,'Mouse','Electronics',800),
(3,'Keyboard','Electronics',1500),
(4,'Chair','Furniture',4500),
(5,'Table','Furniture',7000),
(6,'Sofa','Furniture',25000);

-- ROW_NUMBER()


SELECT
ProductName,
Category,
Price,
ROW_NUMBER() OVER(ORDER BY Price DESC) AS Row_Number
FROM Products;


-- RANK()


SELECT
ProductName,
Category,
Price,
RANK() OVER(ORDER BY Price DESC) AS Product_Rank
FROM Products;

-- DENSE_RANK()


SELECT
ProductName,
Category,
Price,
DENSE_RANK() OVER(ORDER BY Price DESC) AS Dense_Rank
FROM Products;


-- PARTITION BY


SELECT
ProductName,
Category,
Price,
ROW_NUMBER() OVER(PARTITION BY Category ORDER BY Price DESC) AS Category_Rank
FROM Products;
