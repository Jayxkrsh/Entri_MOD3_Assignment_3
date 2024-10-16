#database creation
create database bank;
use bank;

#create table
create table managers (
Manager_ID int primary key,
First_Name varchar(30) not null,
Last_Name varchar(30),
DOB date,
Age int check(Age>0 and Age<100),
Last_Update timestamp default current_timestamp,
Gender char(1),
Department varchar(30),
salary decimal(10,2) not null
);

desc managers;

#inserting values to the columns of table:Managers
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1985-03-20', 39, 'M', 'HR', 40000),
(2, 'Jane', 'Smith', '1990-06-15', 34, 'F', 'Finance', 30000),
(3, 'Robert', 'Johnson', '1987-09-25', 37, 'M', 'IT', 45000),
(4, 'Emily', 'Davis', '1992-01-12', 32, 'F', 'HR', 28000),
(5, 'Michael', 'Brown', '1983-04-05', 41, 'M', 'IT', 32000),
(6, 'Aaliya', 'Hussain', '1991-11-30', 33, 'F', 'Marketing', 35000),
(7, 'David', 'Wilson', '1988-08-21', 36, 'M', 'Finance', 26000),
(8, 'Sophia', 'Miller', '1989-05-02', 35, 'F', 'IT', 30000),
(9, 'James', 'Moore', '1995-10-10', 29, 'M', 'Marketing', 28000),
(10, 'Olivia', 'Taylor', '1993-07-14', 31, 'F', 'IT', 27000);

select * from managers;

#retrieve the name and DOB of Manager_id=1
SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

#Display the annual income of all managers
SELECT First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;

#Display records of all managers except 'Aaliya'
SELECT *
FROM Managers
WHERE First_Name <> 'Aaliya';

#Display details of managers in the IT Department earning more than 25,000 per Month
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

#Display Details of Managers Whose Salary is Between 10,000 and 35,000
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;





