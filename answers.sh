1.select * from students where age>30
select * from students
select * from students  where gender = "F" and age = 30;
select  points  from students where name="Alex"
INSERT INTO students (Name, Age, Gender, Points) VALUES ('Michella', 36, 'F', 500) 

UPDATE students
SET points = points + 10
WHERE name = 'Basma'

UPDATE students
SET points = points - 10
WHERE name = 'ALEX'

# creating tables
CREATE TABLE graduates 
ID INT ,NOT NULL, PRIMARY KEY,
 Name TEXT NOT NULL UNIQUE,
 Age INT,
 Gender TEXT,
 Points INT,
 Graduation DATE DEFAULT '2018-09-08'

select * from graduates

CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
);

INSERT INTO graduates (Name, Age, Gender, Points, Graduation)
SELECT Name, Age, Gender, Points, '2018-09-08' AS Graduation
FROM students
WHERE Name = 'Layal';

UPDATE graduates
SET Graduation = '2018-09-08'
WHERE Name = 'Layal';

COMMIT;
#  joins
SELECT e.Name AS EmployeeName, c.Name AS CompanyName, c.Date AS CompanyDate
FROM Employees e
JOIN Companies c ON e.Company = c.ID;

SELECT e.Name AS EmployeeName, c.Name AS CompanyName, c.Date AS CompanyDate
FROM Employees e
JOIN Companies c ON e.Company = c.ID;
SELECT e.Name
FROM Employees e
JOIN Companies c ON e.Company = c.ID
WHERE c.Date < '2000-01-01';


SELECT DISTINCT c.Name AS CompanyName
FROM Employees e
JOIN Companies c ON e.Company = c.ID
WHERE e.Role = 'Graphic Designer';

COMMIT;

# count & filter 
SELECT Name, Points
FROM students
ORDER BY Points DESC
LIMIT 1;

Find the average of points in students

SELECT COUNT(*) AS NumberOfStudents
FROM students
WHERE Points = 500;

SELECT Name
FROM students
WHERE Name LIKE '%s%';

SELECT *
FROM students
ORDER BY Points DESC;

