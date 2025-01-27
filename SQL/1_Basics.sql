create table CUSTOMERS(
  CUSTOMER_ID INTEGER PRIMARY KEY,
  FIRST_NAME VARCHAR(50) NOT NULL,
  LAST_NAME VARCHAR(50) NOT NULL,
  AGE INTEGER NOT NULL,
  COUNTRY VARCHAR(50)
  );
  
INSERT INTO CUSTOMERS (customer_Id, first_name, last_name, age, country)
VALUES 
    (1, 'Emily', 'Brown', 28, 'USA'),
    (2, 'David', 'Johnson', 35, 'Canada'),
    (3, 'Sophia', 'Lee', 42, 'USA'),  
    (4, 'Michael', 'Davis', 22, 'Australia'),
    (5, 'Olivia', 'Wilson', 31, 'Germany'),
    (6, 'Daniel', 'Martin', 50, 'France'),
    (7, 'Ava', 'Taylor', 19, 'USA'),  
    (8, 'James', 'Anderson', 27, 'Italy'),
    (9, 'Isabella', 'Thomas', 38, 'Brazil'),
    (10, 'William', 'Jackson', 45, 'Canada'),  
    (11, 'Mia', 'White', 24, 'South Korea'),
    (12, 'Alexander', 'Harris', 33, 'India'),
    (13, 'Charlotte', 'Martinez', 29, 'Mexico'),
    (14, 'Benjamin', 'Robinson', 36, 'China'),
    (15, 'Amelia', 'Clark', 41, 'Argentina'),
    (16, 'Joseph', 'Lewis', 26, 'USA'),  
    (17, 'Harper', 'Walker', 21, 'Russia'),
    (18, 'Samuel', 'Hall', 30, 'Netherlands'),
    (19, 'Evelyn', 'Young', 43, 'Switzerland'),
    (20, 'Henry', 'Allen', 25, 'Belgium'),
    (21, 'Sofia', 'King', 39, 'Sweden'),
    (22, 'Jackson', 'Wright', 47, 'Norway'),
    (23, 'Chloe', 'Scott', 20, 'Denmark'),
    (24, 'Sebastian', 'Green', 32, 'Finland'),
    (25, 'Ella', 'Baker', 44, 'Austria'),
    (26, 'Matthew', 'Adams', 23, 'Ireland'),
    (27, 'Grace', 'Nelson', 37, 'Portugal'),
    (28, 'Andrew', 'Carter', 46, 'Greece'),
    (29, 'Lily', 'Mitchell', 22, 'Canada'), -- Repeated country
    (30, 'Ethan', 'Perez', 40, 'Poland'),
    (31, 'Victoria', 'Roberts', 28, 'Czech Republic'),
    (32, 'Liam', 'Turner', 34, 'Hungary'),
    (33, 'Madison', 'Phillips', 42, 'Ukraine'),
    (34, 'Noah', 'Campbell', 21, 'Romania'),
    (35, 'Abigail', 'Parker', 39, 'Belarus'),
    (36, 'Ryan', 'Evans', 45, 'Bulgaria'),
    (37, 'Avery', 'Edwards', 19, 'Croatia'),
    (38, 'Owen', 'Collins', 33, 'Serbia'),
    (39, 'Scarlett', 'Stewart', 41, 'Slovakia'),
    (40, 'Lucas', 'Sanchez', 26, 'Slovenia'),
    (41, 'Riley', 'Morris', 24, 'Lithuania'),
    (42, 'Mason', 'Rogers', 37, 'Latvia'),
    (43, 'Zoe', 'Reed', 43, 'Estonia'),
    (44, 'Logan', 'Cook', 20, 'Cyprus'),
    (45, 'Aria', 'Morgan', 32, 'USA'), -- Repeated country
    (46, 'Oliver', 'Bell', 40, 'Malta'),
    (47, 'Layla', 'Murphy', 27, 'Iceland'),
    (48, 'Elijah', 'Bailey', 44, 'Andorra'),
    (49, 'Nora', 'Rivera', 22, 'Monaco'),
    (50, 'Grayson', 'Cooper', 35, 'Liechtenstein')
    
SELECT * FROM CUSTOMERS WHERE AGE BETWEEN 30 AND 50 AND country = 'Germany';
select * from customers where first_name like '%N%';  -- TO GET ALL FIRST NAMES HAVING N IN THE MIDDLE 
select * from customers where first_name like 'N%'; -- IN THE BEGINNING
select * from customers where first_name like '%N'; -- IN THE LAST

SELECT 
	AVG(age) AS AVERAGE_AGE,
    MIN(age) AS MINUMUM_AGE,
    MAX(age) AS MAXIMUM_AGE
FROM CUSTOMERS;

SELECT country, COUNT(*) AS 'Total Count' from CUSTOMERS GROUP BY COUNTRY; -- default order is ascending
SELECT country, COUNT(*) AS 'Total Count' from CUSTOMERS GROUP BY COUNTRY ORDER BY country DESC; --changed order to descending

------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE product (
  product_Id INTEGER PRIMARY KEY,
  Product_Name varchar(100) NOT NULL,
  product_type varchar(100) NOT NULL,
  product_cost INTEGER not null
);

INSERT INTO product (product_Id, Product_Name, product_type, product_cost)
VALUES 
    (1, 'iPhone 15 Pro Max', 'Smartphone', 1499),
    (2, 'Samsung Galaxy S24 Ultra', 'Smartphone', 1399),
    (3, 'Sony Bravia XR A90K OLED', 'Television', 2999),
    (4, 'LG C3 Series OLED evo', 'Television', 2499),
    (5, 'MacBook Air M3', 'Laptop', 1199),
    (6, 'Dell XPS 15', 'Laptop', 1799),
    (7, 'Sony WH-1000XM5', 'Headphones', 399),
    (8, 'Bose QuietComfort 45', 'Headphones', 329),
    (9, 'KitchenAid Artisan Stand Mixer', 'Kitchen Appliance', 499),
    (10, 'Nespresso VertuoPlus', 'Coffee Maker', 199), -- ... (continue with rows 11-100),
    (11, 'Nike Air Zoom Pegasus 40', 'Running Shoes', 120),
    (12, 'Adidas Ultraboost Light', 'Running Shoes', 180),
    (13, 'Fitbit Charge 6', 'Fitness Tracker', 150),
    (14, 'Garmin Venu 3', 'Smartwatch', 450),
    (15, 'Canon EOS R6 Mark II', 'Camera', 2499),
    (16, 'Sony a7R V', 'Camera', 3899),
    (17, 'DeWalt 20V Max Cordless Drill', 'Power Tool', 199),
    (18, 'Bosch 18V Brushless Impact Driver', 'Power Tool', 179),
    (19, 'Samsonite Winfield 3 DLX Hardside', 'Luggage', 240),
    (20, 'Away The Carry-On', 'Luggage', 295)

SELECT * FROM product;
SELECT Product_Name, product_cost FROM product;
SELECT * FROM product WHERE product_cost = (SELECT max(product_cost) FROM product);
SELECT * FROM product WHERE product_cost = (SELECT min(product_cost) FROM product);
SELECT * FROM product WHERE product_cost = (SELECT max(product_cost) FROM product) OR product_cost = (SELECT min(product_cost) FROM product);
SELECT * FROM product WHERE product_cost = (SELECT max(product_cost) FROM product)
UNION
SELECT * FROM product WHERE product_cost = (SELECT min(product_cost) FROM product);


--------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Order_Transaction (
  order_id INTEGER PRIMARY KEY,
  cust_id integer FOREIGN KEY REFERENCES CUSTOMERS(CUSTOMER_ID),
  prod_Id INTEGER FOREIGN KEY REFERENCES product(product_Id),
  order_qty integer default 1 ,
  order_date date
);

INSERT INTO Order_Transaction (order_id, cust_id, prod_Id, order_qty, order_date)
VALUES 
    (1, 1, 3, 1, '2024-06-25'),
    (2, 5, 1, 2, '2024-06-22'),
    (3, 8, 7, 1, '2024-06-18'),
    (4, 3, 6, 1, '2024-06-15'),
    (5, 10, 2, 3, '2024-06-10'),
    (6, 7, 9, 1, '2024-06-05'), 
    (7, 4, 5, 2, '2024-05-30'),
    (8, 2, 8, 1, '2024-05-27'),
    (9, 9, 4, 1, '2024-05-22'),
    (10, 6, 10, 2, '2024-05-18'),
    (11, 1, 2, 1, '2024-05-15'),
    (12, 5, 5, 2, '2024-05-10'),
    (13, 8, 1, 1, '2024-05-08'),
    (14, 3, 9, 1, '2024-05-01'),
    (15, 10, 6, 1, '2024-04-28'),
    (16, 7, 7, 1, '2024-04-25'),
    (17, 4, 4, 2, '2024-04-20'),
    (18, 2, 3, 1, '2024-04-17'),
    (19, 9, 8, 1, '2024-04-15'),
    (20, 6, 10, 1, '2024-04-10'),
    (21, 1, 7, 2, '2024-04-05'),
    (22, 5, 6, 1, '2024-03-30'),
    (23, 8, 10, 3, '2024-03-25'),
    (24, 3, 3, 1, '2024-03-20'),
    (25, 10, 5, 2, '2024-03-15'),
    (26, 7, 1, 1, '2024-03-10'),
    (27, 4, 9, 1, '2024-03-05'),
    (28, 2, 2, 2, '2024-02-28'),
    (29, 9, 7, 1, '2024-02-25'),
    (30, 6, 4, 1, '2024-02-20')
    
SELECT * FROM Order_Transaction;
SELECT * FROM product;
SELECT * FROM CUSTOMERS;

---------------------------------------------------------------------------------------------------
-JOINS
----------------------------------------------------------------------------------------------------
--JOIN 
--INNER JOIN Condition
SELECT *
FROM CUSTOMERS C   -- C is a alias ("as")
INNER JOIN Order_Transaction OT ON C.CUSTOMER_ID = OT.cust_id
ORDER BY customer_id;

SELECT *
FROM CUSTOMERS C   -- C is a alias ("as")
INNER JOIN Order_Transaction OT ON C.CUSTOMER_ID = OT.cust_id where C.COUNTRY = 'USA';

SELECT *
FROM CUSTOMERS C   -- C is a alias ("as")
INNER JOIN Order_Transaction OT ON C.CUSTOMER_ID = OT.cust_id 
where C.COUNTRY = 'USA' AND OT.order_date > '2024-06-01' 
ORDER BY customer_id;


----------------------------------------------------------------------------------------------------
--JOIN 
--LEFT OUTER JOIN Condition
--RIGHT OUTER JOIN Condition
SELECT *
FROM CUSTOMERS C   -- C is a alias ("as")
LEFT OUTER JOIN Order_Transaction OT ON C.CUSTOMER_ID = OT.cust_id 
ORDER BY customer_id;

SELECT *
FROM CUSTOMERS C   -- C is a alias ("as")
RIGHT OUTER JOIN Order_Transaction OT ON C.CUSTOMER_ID = OT.cust_id
ORDER BY customer_id;

------------------------------------------------------------------------------------------------------------




