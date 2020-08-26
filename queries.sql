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

-- Select only the full names and phone extensions for only full-time employees.
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'NO';

-- Add a new part-time employee, as a software developer, with a salary of 450. 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition","PhoneExtension","IsPartTime")
VALUES ('Brad Rowley', 450, 'Software Developer', 8, 'YES');


-- Update all employees that are cooks to have a salary of 500.
UPDATE "Employees"
SET "Salary" = '500'
WHERE "JobPosition" = 'Cook';


-- Delete all employees that have the full name of "Lazy Larry".
 DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';


-- Need to add column to the table named parkingspot up to 10 characters
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
