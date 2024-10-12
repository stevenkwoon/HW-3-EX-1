SELECT Name FROM Students;
SELECT * FROM Students WHERE Age > 30;
SELECT Name FROM Students WHERE Gender='F' AND Age=30;
SELECT Points FROM Students WHERE Name='Alex';
INSERT INTO Students VALUES(7, 'Steven', '21', 'M', 500);
UPDATE Students SET Points = 500 WHERE Name='Basma';
UPDATE Students SET Points = 100 WHERE Name='Alex';

CREATE TABLE graduates(
    ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
);

INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM students WHERE Name='Layal';

SELECT employees.name AS EmployeeName, companies.Name AS CompanyName , companies.date AS CompanyDate FROM employees Inner join 
companies ON employees.Company=companies.Name;
SELECT employees.name AS EmployedName FROM employees Inner join companies ON employees.Company=companies.name WHERE 
companies.Date < 2000;
SELECT DISTINCT companies.name FROM companies Inner join employees ON employees.Company=companies.name WHERE 
employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;
