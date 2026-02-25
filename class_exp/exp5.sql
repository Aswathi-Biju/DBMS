-- Customer Table
CREATE TABLE customer_27 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Address VARCHAR(200),
    City VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);

-- Employee Table
CREATE TABLE employee_27 (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    BirthDate DATE,
    Photo VARCHAR(100)
);

-- Order Table
CREATE TABLE order_27 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES customer_27(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES employee_27(EmployeeID)
);

INSERT INTO customer_27 VALUES
(1, 'John Smith', '9876543210', '12 Park Street', 'New York', '10001', 'USA'),
(2, 'Priya Sharma', '9123456780', '45 MG Road', 'Mumbai', '400001', 'India'),
(3, 'David Miller', '9988776655', '78 Elm Street', 'Chicago', '60007', 'USA'),
(4, 'Amit Patel', '9012345678', '22 Nehru Street', 'Mumbai', '400002', 'India'),
(5, 'Rahul Verma', '9090909090', '90 Lake View', 'Mumbai', '400003', 'India');

INSERT INTO employee_27 VALUES
(101, 'Brown', 'Emma', '1975-05-20', 'emp1.jpg'),
(102, 'Wilson', 'Liam', '1985-08-15', 'emp2.jpg'),
(103, 'Taylor', 'Olivia', '1990-03-10', 'emp3.jpg'),
(104, 'Johnson', 'Noah', '1978-12-25', 'emp4.jpg'),
(105, 'Lee', 'Sophia', '1988-07-30', 'emp5.jpg');

INSERT INTO order_27 VALUES
(201, 1, 101, '2022-01-15', 1),
(202, 1, 102, '2023-02-10', 2),
(203, 1, 103, '2024-03-05', 1),
(204, 2, 102, '2023-04-20', 2),
(205, 3, 103, '2021-06-18', 3);

SELECT * 
FROM customer_27
ORDER BY CustomerName ASC;

SELECT * 
FROM order_27
ORDER BY OrderDate ASC;

SELECT * 
FROM employee_27
WHERE BirthDate > '1980-01-01'
ORDER BY BirthDate DESC;

SELECT * 
FROM order_27
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM customer_27 
    WHERE Country IN ('USA')
)
ORDER BY OrderDate DESC;

SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM order_27
GROUP BY CustomerID;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM customer_27
GROUP BY City;

SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM order_27
GROUP BY CustomerID
HAVING COUNT(OrderID) > 2;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM customer_27
GROUP BY City
HAVING COUNT(CustomerID) > 3;






CREATE TABLE customers_27 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Address VARCHAR(200),
    City VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);

CREATE TABLE employee_27 (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    BirthDate DATE,
    Photo VARCHAR(100)
);

-- Order Table
CREATE TABLE order_27 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES customers_27(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES employee_27(EmployeeID)
);
INSERT INTO customers_27 VALUES(1, 'Tom Hanks', '9876543210', '12 Park Street', 'New York', '10001', 'USA');
INSERT INTO customers_27 VALUES(2, 'Brad Pitt', '9988776655', '78 Elm Street', 'New York', '60007', 'USA');
INSERT INTO customers_27 VALUES(3, 'Jennifer Aniston', '9123456789', '34 Oak Avenue', 'New York', '90001', 'USA');
INSERT INTO customers_27 VALUES(4, 'Leonardo DiCaprio', '9871234567', '56 Pine Road', 'New York', '77001', 'USA');
INSERT INTO customers_27 VALUES(5, 'Priya Sharma', '9123456780', '45 MG Road', 'Mumbai', '400001', 'India');
SELECT * FROM customers_27;

INSERT INTO employee_27 VALUES(101, 'Brown', 'Smith', '20-05-1975', 'emp1.jpg');
INSERT INTO employee_27 VALUES(102, 'Will', 'Liam', '15-08-1985', 'emp2.jpg');
INSERT INTO employee_27 VALUES(103, 'Taylor', 'Swift', '10-03-1990', 'emp3.jpg');
INSERT INTO employee_27 VALUES(104, 'Johnson', 'Noah', '25-12-1998', 'emp4.jpg');
INSERT INTO employee_27 VALUES(105, 'Lee', 'Ju', '30-07-1988', 'emp5.jpg');
SELECT * FROM employee_27;

INSERT INTO order_27 VALUES(201, 1, 101, '15-01-2022', 1);
INSERT INTO order_27 VALUES(202, 1, 102, '10-02-2023', 2);
INSERT INTO order_27 VALUES(203, 1, 103, '05-03-2023', 1);
INSERT INTO order_27 VALUES(204, 2, 102, '20-04-2023', 2);
INSERT INTO order_27 VALUES(205, 3, 103, '18-06-2022', 3);
SELECT * FROM order_27;

SELECT * FROM customer_27 ORDER BY CustomerName ASC;

SELECT * FROM order_27 ORDER BY OrderDate ASC;

SELECT * FROM employee_27 WHERE BirthDate > '01-01-1980' ORDER BY BirthDate DESC;

SELECT * FROM order_27
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM customer_27 
    WHERE Country IN ('USA')
)ORDER BY OrderDate DESC;

SELECT CustomerID, COUNT(OrderID) AS TotalOrders FROM order_27 GROUP BY CustomerID;

SELECT City, COUNT(CustomerID) AS TotalCustomers FROM customers_27 GROUP BY City;

SELECT CustomerID, COUNT(OrderID) AS TotalOrders FROM order_27 GROUP BY CustomerID HAVING COUNT(OrderID) > 2;

SELECT City, COUNT(CustomerID) AS TotalCustomers FROM customers_27 GROUP BY City HAVING COUNT(CustomerID) > 3;
