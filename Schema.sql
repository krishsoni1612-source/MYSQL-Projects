CREATE DATABASE ElectronicStore;
USE ElectronicStore;

-- 1. Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 2. Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

-- 3. Create Sales Table (Linking table)
CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products VALUES 
(1, 'Laptop', 'Computers', 1200.00),
(2, 'Smartphone', 'Mobile', 800.00),
(3, 'Headphones', 'Accessories', 150.00),
(4, 'Monitor', 'Computers', 300.00);

INSERT INTO customers VALUES 
(101, 'Rahul Sharma', 'rahul@email.com', '2023-01-15'),
(102, 'Priya Patel', 'priya@email.com', '2023-02-10'),
(103, 'Amit Kumar', 'amit@email.com', '2023-03-05');

INSERT INTO sales VALUES 
(1001, '2023-05-01', 101, 1, 1),
(1002, '2023-05-02', 102, 2, 2),
(1003, '2023-05-03', 101, 3, 1),
(1004, '2023-06-01', 103, 1, 1),
(1005, '2023-06-15', 102, 4, 1);
