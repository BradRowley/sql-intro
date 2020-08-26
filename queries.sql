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