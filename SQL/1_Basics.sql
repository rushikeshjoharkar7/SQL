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

SELECT country, COUNT(*) AS 'Total Count' from CUSTOMERS GROUP BY COUNTRY;
