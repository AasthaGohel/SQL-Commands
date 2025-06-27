-- create
CREATE TABLE EMPLOYEE (
  empId INT primary key auto_increment,
  first_name varchar(100),
  last_name varchar(100),
  city varchar(100),
  age int,
  salary decimal(10,2)
);

-- insert
INSERT INTO EMPLOYEE (first_name, last_name, city, age, salary) VALUES
('John', 'Doe', 'New York', 30, 55000.00),
('Jane', 'Smith', 'Delhi', 28, 62000.50),
('Robert', 'Brown', 'Chicago', 35, 70000.75),
('Emily', 'Davis', 'Delhi', 26, 48000.00),
('Michael', 'Wilson', 'Phoenix', 40, 80000.20);


-- fetch 
select * from EMPLOYEE

-- retrieve Specific Columns (First Name and Salary)
select first_name, salary from EMPLOYEE;

-- Filter Employees Based on Age
select * from EMPLOYEE
where age > 30

-- Filter Employees Based on City
select * from EMPLOYEE
where city='Delhi';

-- Sort Employees by Salary
select * from EMPLOYEE
order by salary desc;

-- Update Salary of an Employee
update EMPLOYEE
set salary = 55000.00
where empId = 3;

-- Delete an Employee Record
delete from Employee
where empId = 5;

-- Add a New Employee
INSERT INTO EMPLOYEE (first_name, last_name, city, age, salary) VALUES
('Nikita', 'Ramesh', 'Chennai', 30, 68000.00);

-- Retrieve Employees Who Have a Salary Greater Than 60000
select * from EMPLOYEE
where salary > 60000;

-- Count the Number of Employees in Each City
select city, count(*) as city_count
from EMPLOYEE
group by city;
