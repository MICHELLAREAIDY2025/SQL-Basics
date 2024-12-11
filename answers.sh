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

CREATE TABLE graduates 
ID INT ,NOT NULL, PRIMARY KEY,
 Name TEXT NOT NULL UNIQUE,
 Age INT,
 Gender TEXT,
 Points INT,
 Graduation DATE DEFAULT '2018-09-08'

select * from graduates