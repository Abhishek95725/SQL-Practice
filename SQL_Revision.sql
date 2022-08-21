create database employee
use employee
create table employee(Id int, 
                      Name varchar(20), 
					  DOB date, 
					  Salary int,
					  Mobile char(10), 
					  College varchar(20), 
					  City varchar(20))
select * from employee
insert into employee values(101, 'Abhishek', '1999-07-16', 25000, '9572532379', 'IMS Ghaziabad', 'Ghaziabad'),(102, 'Thor', '1989-05-12', 124000, '8572872319', 'ABC Australia', 'Australia'),
(103, 'Millie Bobby Brown', '1893-02-19', 98000, '7592532548', 'Delhi University', 'Delhi'),(104, 'Hulk', '1794-04-13', 35000, '9578432362', 'American College', 'America'),
(105, 'Chris', '1785-02-11', 25000, '9542545179', 'Boys Clg Hawkins', 'Hawkins')
update employee set salary=4280 where id=105
alter table employee add marks int
alter table employee drop column marks
sp_help employee
alter table employee alter column marks int
alter table employee alter column marks varchar(20)
update employee set marks=54 where salary>4000
update employee set marks=null where salary>25000
update employee set marks=60 where salary<=98000
update employee set marks=95 where salary between 98000 and 25000
update employee set mobile=9102520407 where college='delhi university'
update employee set marks=82 where name='thor'
update employee set city='Motihari' , marks=99 where name='abhishek'
update employee set marks=95 where NOT salary between 98000 and 25000

-- Increment 55 % salary where name=chris
update employee set salary=salary+salary*55/100 where name='chris'

-- Decrement 25 % salary where name=thor
update employee set salary=salary-salary*25/100 where name='thor'


-- Question 1: SQL Query to find the second highest salary of Employee
SELECT MAX(Salary) FROM Employee WHERE Salary NOT IN (select MAX(Salary) from Employee);

--------------------------------------------- Aggregation Function -----------------------------------------------
select * from employee where city like '%a'
select count(city) AS TOTAL_CITY from employee
select count(salary) as CountSalary, sum(salary) as Total, max(salary) as Maximum, min(salary) as Minimum, avg(salary) as Average from employee 
select salary from employee ORDER BY salary ASC
select salary from employee ORDER BY salary DESC;

-- Not Run --- select * from employee where name!='Hulk' and name!='Chris' and name!='Thor'


alter table employee 
select * from employee
alter table employee add Branch varchar(20)
update employee set Branch='IT' where id=101
update employee set Branch='Sales' where name='thor'
update employee set Branch='MCA' where id=103
update employee set Branch='Accountant' where city='america'
update employee set Branch='Bank' where name='chris'
SELECT Id, MAX(Salary) AS MaxSalary
FROM Employee 
GROUP BY Id
SELECT name, marks FROM employee WHERE marks > (SELECT AVG(marks) from employee)
SELECT YEAR(GETDATE()) as "Year";
SELECT  MONTH('1/08/13') AS "MM/DD/YY"; 
select * from employee where branch='IT' or branch='mca' or branch='bank'
select * from employee where branch!='IT' and branch!='mca' and branch!='bank'
update employee set salary=salary+salary*65/100 where name='abhishek'

select * from employee where branch IN('IT', 'MCA', 'Bank')
select * from employee where name IN('Hulk', 'Millie Bobby Brown', 'Thor')

