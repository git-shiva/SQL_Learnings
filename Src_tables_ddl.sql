-- creating the product table 

-- creating supplier table 

CREATE TABLE suppliers(supplier_id int PRIMARY KEY,
					  supplier_name varchar(25),
					  country VARCHAR(25)
					  );

CREATE TABLE products(
						product_id int PRIMARY KEY,
						product_name VARCHAR(25),
						supplier_id int,
						price float,
						FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
						);

INSERT INTO suppliers VALUES (501, 'alan', 'India');
INSERT INTO suppliers VALUES (502, 'rex', 'US');
INSERT INTO suppliers VALUES (503, 'dodo', 'India');
INSERT INTO suppliers VALUES (504, 'rahul', 'US');
INSERT INTO suppliers VALUES (505, 'zara', 'Canada');
INSERT INTO suppliers VALUES (506, 'max', 'Canada');

INSERT INTO products VALUES (201, 'iPhone 14', '501', 1299);
INSERT INTO products VALUES (202, 'iPhone 8', '502', 999);
INSERT INTO products VALUES (204, 'iPhone 13', '502', 1199);
INSERT INTO products VALUES (203, 'iPhone 11', '503', 1199);
INSERT INTO products VALUES (205, 'iPhone 12', '502', 1199);
INSERT INTO products VALUES (206, 'iPhone 14', '501', 1399);
INSERT INTO products VALUES (214, 'iPhone 15', '503', 1499);
INSERT INTO products VALUES (207, 'iPhone 15', '505', 1499);
INSERT INTO products VALUES (208, 'iPhone 15', '504', 1499);
INSERT INTO products VALUES (209, 'iPhone 12', '502', 1299);
INSERT INTO products VALUES (210, 'iPhone 13', '502', 1199);
INSERT INTO products VALUES (211, 'iPhone 11', '501', 1099);
INSERT INTO products VALUES (212, 'iPhone 14', '503', 1399);
INSERT INTO products VALUES (213, 'iPhone 8', '502', 1099);

-- Adding more products
INSERT INTO products VALUES (222, 'Samsung Galaxy S21', '504', 1699);
INSERT INTO products VALUES (223, 'Samsung Galaxy S20', '505', 1899);
INSERT INTO products VALUES (224, 'Google Pixel 6', '501', 899);
INSERT INTO products VALUES (225, 'Google Pixel 5', '502', 799);
INSERT INTO products VALUES (226, 'OnePlus 9 Pro', '503', 1699);
INSERT INTO products VALUES (227, 'OnePlus 9', '502', 1999);
INSERT INTO products VALUES (228, 'Xiaomi Mi 11', '501', 899);
INSERT INTO products VALUES (229, 'Xiaomi Mi 10', '504', 699);
INSERT INTO products VALUES (230, 'Huawei P40 Pro', '505', 1099);
INSERT INTO products VALUES (231, 'Huawei P30', '502', 1299);
INSERT INTO products VALUES (232, 'Sony Xperia 1 III', '503', 1199);
INSERT INTO products VALUES (233, 'Sony Xperia 5 III', '501', 999);
INSERT INTO products VALUES (234, 'LG Velvet', '505', 1899);
INSERT INTO products VALUES (235, 'LG G8 ThinQ', '504', 799);
INSERT INTO products VALUES (236, 'Motorola Edge Plus', '502', 1099);
INSERT INTO products VALUES (237, 'Motorola One 5G', '501', 799);
INSERT INTO products VALUES (238, 'ASUS ROG Phone 5', '503', 1999);
INSERT INTO products VALUES (239, 'ASUS ZenFone 8', '504', 999);
INSERT INTO products VALUES (240, 'Nokia 8.3 5G', '502', 899);
INSERT INTO products VALUES (241, 'Nokia 7.2', '501', 699);
INSERT INTO products VALUES (242, 'BlackBerry Key2', '504', 1899);
INSERT INTO products VALUES (243, 'BlackBerry Motion', '502', 799);
INSERT INTO products VALUES (244, 'HTC U12 Plus', '501', 899);
INSERT INTO products VALUES (245, 'HTC Desire 20 Pro', '505', 699);
INSERT INTO products VALUES (246, 'Lenovo Legion Phone Duel', '503', 1499);
INSERT INTO products VALUES (247, 'Lenovo K12 Note', '504', 1499);
INSERT INTO products VALUES (248, 'ZTE Axon 30 Ultra', '501', 1299);
INSERT INTO products VALUES (249, 'ZTE Blade 20', '502', 1599);
INSERT INTO products VALUES (250, 'Oppo Find X3 Pro', '503', 1999);

-- Create Customer table
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Registration_Date DATE
);

-- Create Transaction table
CREATE TABLE Transaction (
    Transaction_id INT PRIMARY KEY,
    Customer_id INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

INSERT INTO Customers (Customer_id, Customer_Name, Registration_Date)
VALUES (1, 'John Doe', TO_DATE('2023-01-15', 'YYYY-MM-DD'));

INSERT INTO Customers (Customer_id, Customer_Name, Registration_Date)
VALUES (2, 'Jane Smith', TO_DATE('2022-12-10', 'YYYY-MM-DD'));

INSERT INTO Customers (Customer_id, Customer_Name, Registration_Date)
VALUES (3, 'Alice Brown', TO_DATE('2023-03-05', 'YYYY-MM-DD'));

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (202, 1, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 75.50);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (203, 2, TO_DATE('2023-02-22', 'YYYY-MM-DD'), 100.00);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (204, 3, TO_DATE('2022-03-15', 'YYYY-MM-DD'), 200.00);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (205, 2, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 120.75);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (301, 1, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 50.00);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (302, 1, TO_DATE('2024-02-05', 'YYYY-MM-DD'), 75.50);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (403, 2, TO_DATE('2023-02-22', 'YYYY-MM-DD'), 100.00);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (304, 3, TO_DATE('2022-03-15', 'YYYY-MM-DD'), 200.00);

INSERT INTO Transaction (Transaction_id, Customer_id, Transaction_Date, Amount)
VALUES (505, 2, TO_DATE('2024-03-20', 'YYYY-MM-DD'), 120.75);

--------
CREATE TABLE cust (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    age INT,
    gender VARCHAR(10)
);

INSERT INTO cust (customer_id, customer_name, age, gender)
VALUES (1, 'John Doe', 30, 'Male');

INSERT INTO cust (customer_id, customer_name, age, gender)
VALUES (2, 'Jane Smith', 25, 'Female');

INSERT INTO cust (customer_id, customer_name, age, gender)
VALUES (3, 'Alice Johnson', 35, 'Female');

INSERT INTO cust (customer_id, customer_name, age, gender)
VALUES (4, 'Bob Brown', 40, 'Male');


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (101, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 150.50);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (102, 2, TO_DATE('2022-02-20', 'YYYY-MM-DD'), 200.25);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (103, 3, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 180.75);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (104, 4, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 300.00);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (105, 1, TO_DATE('2022-05-12', 'YYYY-MM-DD'), 175.80);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (106, 2, TO_DATE('2021-06-18', 'YYYY-MM-DD'), 220.40);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (107, 3, TO_DATE('2023-07-22', 'YYYY-MM-DD'), 190.30);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (108, 4, TO_DATE('2023-08-30', 'YYYY-MM-DD'), 250.60);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (109, 4, TO_DATE('2021-08-30', 'YYYY-MM-DD'), 250.60);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (110, 4, TO_DATE('2024-01-30', 'YYYY-MM-DD'), 250.60);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
VALUES (111, 4, TO_DATE('2023-08-30', 'YYYY-MM-DD'), 250.60);

