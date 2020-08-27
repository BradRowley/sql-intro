CREATE TABLE "Employees" (
  "FullName"    TEXT,
  "Salary"    INT,
  "JobPosition"   TEXT,
  "PhoneExtension"    INT,
  "IsPartTime"    TEXT
);


INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Mark Jones', 200,'Cook', 34,'NO');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Lazy Larry', 400,'FA', 10,'NO');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('John Smith', 100,'Trainer', 2,'YES');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Christina Ann', 1500,'CEO', 1,'NO');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('John Evans', 50,'Intern', 35,'YES');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Matthew Soft', 50,'Intern', 36,'YES');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Adam Mark', 350,'Sr Software Engineer', 29,'NO');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Jessica James', 75,'Cook', 3,'NO');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Mary Lamb', 200,'Cook', 8,'YES');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Lebron James', 100,'Trainer', 9,'YES');



-- Select all columns for all employees.
 SELECT * FROM "Employees";


+---------------+----------+----------------------+------------------+----------
| FullName      | Salary   | JobPosition          | PhoneExtension   | IsPartTim
|---------------+----------+----------------------+------------------+----------
| Mark Jones    | 200      | Cook                 | 34               | NO       
| Lazy Larry    | 400      | FA                   | 10               | NO       
| John Smith    | 100      | Trainer              | 2                | YES      
| Christina Ann | 1500     | CEO                  | 1                | NO       
| John Evans    | 50       | Intern               | 35               | YES      
| Matthew Soft  | 50       | Intern               | 36               | YES      
| Adam Mark     | 350      | Sr Software Engineer | 29               | NO       
| Jessica James | 75       | Cook                 | 3                | NO       
| Mary Lamb     | 200      | Cook                 | 8                | YES      
| Lebron James  | 100      | Trainer              | 9                | YES      
+---------------+----------+----------------------+------------------+----------
SELECT 10



-- Select only the full names and phone extensions for only full-time employees.
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'NO';

+---------------+------------------+
| FullName      | PhoneExtension   |
|---------------+------------------|
| Mark Jones    | 34               |
| Lazy Larry    | 10               |
| Christina Ann | 1                |
| Adam Mark     | 29               |
| Jessica James | 3                |
+---------------+------------------+

-- Add a new part-time employee, as a software developer, with a salary of 450. 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Brad Rowley', 450, 'Software Developer', 8, 'YES');

+---------------+----------+----------------------+------------------+----------
| FullName      | Salary   | JobPosition          | PhoneExtension   | IsPartTim
|---------------+----------+----------------------+------------------+----------
| Mark Jones    | 200      | Cook                 | 34               | NO       
| Lazy Larry    | 400      | FA                   | 10               | NO       
| John Smith    | 100      | Trainer              | 2                | YES      
| Christina Ann | 1500     | CEO                  | 1                | NO       
| John Evans    | 50       | Intern               | 35               | YES      
| Matthew Soft  | 50       | Intern               | 36               | YES      
| Adam Mark     | 350      | Sr Software Engineer | 29               | NO       
| Jessica James | 75       | Cook                 | 3                | NO       
| Mary Lamb     | 200      | Cook                 | 8                | YES      
| Lebron James  | 100      | Trainer              | 9                | YES      
| Brad Rowley   | 450      | Software Developer   | 8                | YES      
+---------------+----------+----------------------+------------------+----------

-- Update all employees that are cooks to have a salary of 500.
UPDATE "Employees"
SET "Salary" = '500'
WHERE "JobPosition" = 'Cook';

+---------------+----------+----------------------+------------------+----------
| FullName      | Salary   | JobPosition          | PhoneExtension   | IsPartTim
|---------------+----------+----------------------+------------------+----------
| Lazy Larry    | 400      | FA                   | 10               | NO       
| John Smith    | 100      | Trainer              | 2                | YES      
| Christina Ann | 1500     | CEO                  | 1                | NO       
| John Evans    | 50       | Intern               | 35               | YES      
| Matthew Soft  | 50       | Intern               | 36               | YES      
| Adam Mark     | 350      | Sr Software Engineer | 29               | NO       
| Lebron James  | 100      | Trainer              | 9                | YES      
| Brad Rowley   | 450      | Software Developer   | 8                | YES      
| Mark Jones    | 500      | Cook                 | 34               | NO       
| Jessica James | 500      | Cook                 | 3                | NO       
| Mary Lamb     | 500      | Cook                 | 8                | YES      
+---------------+----------+----------------------+------------------+----------


-- Delete all employees that have the full name of "Lazy Larry".
 DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';


+---------------+----------+----------------------+------------------+----------
| FullName      | Salary   | JobPosition          | PhoneExtension   | IsPartTim
|---------------+----------+----------------------+------------------+----------
| John Smith    | 100      | Trainer              | 2                | YES      
| Christina Ann | 1500     | CEO                  | 1                | NO       
| John Evans    | 50       | Intern               | 35               | YES      
| Matthew Soft  | 50       | Intern               | 36               | YES      
| Adam Mark     | 350      | Sr Software Engineer | 29               | NO       
| Lebron James  | 100      | Trainer              | 9                | YES      
| Brad Rowley   | 450      | Software Developer   | 8                | YES      
| Mark Jones    | 500      | Cook                 | 34               | NO       
| Jessica James | 500      | Cook                 | 3                | NO       
| Mary Lamb     | 500      | Cook                 | 8                | YES      
+---------------+----------+----------------------+------------------+----------


-- Need to add column to the table named parkingspot up to 10 characters
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
+---------------+----------+----------------------+------------------+--------------+---------------+
| FullName      | Salary   | JobPosition          | PhoneExtension   | IsPartTime   | ParkingSpot   |
|---------------+----------+----------------------+------------------+--------------+---------------|
| John Smith    | 100      | Trainer              | 2                | YES          | <null>        |
| Christina Ann | 1500     | CEO                  | 1                | NO           | <null>        |
| John Evans    | 50       | Intern               | 35               | YES          | <null>        |
| Matthew Soft  | 50       | Intern               | 36               | YES          | <null>        |
| Adam Mark     | 350      | Sr Software Engineer | 29               | NO           | <null>        |
| Lebron James  | 100      | Trainer              | 9                | YES          | <null>        |
| Brad Rowley   | 450      | Software Developer   | 8                | YES          | <null>        |
| Mark Jones    | 500      | Cook                 | 34               | NO           | <null>        |
| Jessica James | 500      | Cook                 | 3                | NO           | <null>        |
| Mary Lamb     | 500      | Cook                 | 8                | YES          | <null>        |


-- In your CompanyDatabase, add a table named Departments
CREATE TABLE "Departments" (
"Id"  SERIAL PRIMARY KEY,
"DepartmentName"  TEXT,
"Building"  TEXT 
);



-- Add a Foreign key DepartmentId to your Employees
ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

-- Add tables named Products and Orders.

CREATE TABLE "Products" (
"Id"  SERIAL PRIMARY KEY,
"Price" DOUBLE PRECISION,
"Name"  TEXT,
"Description" TEXT,
"QuantityInStock" INT
);

CREATE TABLE "Orders" (
"Id"  SERIAL PRIMARY KEY,
"OrderNumber" TEXT,
"DatePlaced" TIMESTAMP,
"Email" text
);

--         *******SOME REASON DATETIME DOES NOT EXIST IN MY TERMINAL**************


-- In our company, one Order can have many Products and one Product can have many Orders. This will be a Many-to-Many relationship.
-- Create the necessary table ProductOrders, foreign keys, and the OrderQuantity field needed for this to happen.


CREATE TABLE "ProductOrders" (
"ProductId" INTEGER NULL REFERENCES "Products" ("Id"),
"OrderId" INTEGER NULL REFERENCES "Orders" ("Id"),
"OrderQuantity" INT
 );

-- Insert Employees                                         
INSERT INTO "Employees"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tim Smith',40000, 'Programmer',123,'NO',1);

INSERT INTO "Employees"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Barbara Ramsey', 80000, 'Manager', 234, 'NO', 1);

INSERT INTO "Employees"("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tom Jones', 32000,'Admin',456,'YES',2);

-- INSERT PRODUCTS
INSERT INTO "Products"("Price","Name","Description","QuantityInStock")
VALUES (12.45,'Widget','The Original Widget', 100);

INSERT INTO "Products"("Price","Name","Description","QuantityInStock")
VALUES (99.99, 'Flowbee','Perfect for haircuts',3);


--Insert Departments ***HAVE TO DO THIS FIRST***
INSERT INTO "Departments"("DepartmentName","Building")
VALUES ('Development','Main');

INSERT INTO "Departments"("DepartmentName","Building")
VALUES ('Marketing','North');

--  Insert a new order with order number X529, placed on Jan 1st, 2020 at 4:55PM, by someone with the email address "person@example.com"
INSERT INTO "Orders" ("OrderNumber","DatePlaced","Email")
VALUES ('X529','2020-01-01 16:55:00','person@exmaple.com');

--  Add an order quantity of 3 for the product named Widget to the order X529
INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1,1,3);

--  Add an order quantity of 2 for the product named Flowbee to the order X529
INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1,2,2);

-- Given a department id, return all employees in the department.

SELECT "FullName" FROM "Employees" WHERE "DepartmentId" = 1;

+----------------+
| FullName       |
|----------------|
| Tim Smith      |
| Barbara Ramsey |
+----------------+

-- Given a department name, return all the phone extensions.
SELECT "PhoneExtension" FROM "Employees" WHERE "DepartmentId" = 1;

+------------------+
| PhoneExtension   |
|------------------|
| 123              |
| 234              |
+------------------+

--  Find all orders that contain the product id of 2.
SELECT "OrderId" FROM "ProductOrders" WHERE "ProductId" = 2;

--  Remove the Flowbee product from order with order number X529.
DELETE FROM "ProductOrders" WHERE "ProductId" = 2;