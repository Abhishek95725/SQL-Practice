create database dbsalary
use dbsalary
create table salarytable(
Id int, Name varchar(20), Email varchar(30), Dept varchar(20), Salary int, Bonus int, DOB date, Gender char, City varchar(20));

insert into salarytable values(101,'Abhishek','abhishek95@gmail.com','Software Engineer',95429,8406,'1999-02-26','M','Champaran')
insert into salarytable values(102,'Sapna','sapna91@gmail.com','HR',null,2406,'1995-04-13','F','Noida')
insert into salarytable values(103,'Rajnish','rajnish85@gmail.com','Software Engineer',85464,5408,'2002-08-17','M','Motihari')
insert into salarytable values(104,'Priyaranjan','priya75@gmail.com','Sales',9019,null,'2008-02-04','M','Delhi')
insert into salarytable values(105,'Anjali','anjali12@gmail.com','HR',4219,2406,'2004-04-12','F','Jaigaon')
insert into salarytable values(106,'Shivam','shivamkr641@gmail.com','Student',74429,null,'1988-10-23','M','Bhutan')
insert into salarytable values(107,'Sunny','sunny85@gmail.com','Accountant',12429,8406,'1799-09-21','M','Chhatuani')
insert into salarytable values(108,'Payal','payal56@gmail.com','Software Engineer',null,1406,'1899-02-19','F','Chakiya')
insert into salarytable values(109,'Ankit','ankit34@gmail.com','Sales',95019,8006,'1996-11-14','M','Jaipur')
insert into salarytable values(110,'Thor','thorholly@gmail.com','Manager',1234,null,'1989-07-12','M','Ghaziabad');

select * from salarytable;

-- Select Maximum/Highest Salary from salarytable
Select Max(salary) as HighestSalary from salarytable;

-- Select Maximum/Highest Salary from salarytable desc order
select Name,Salary from salarytable order by salary desc;

-- Find the 2nd Highest Salary from the table
select max(salary) as SecondHighestSalary from salarytable where salary < (select max(salary) from salarytable);


-- 2nd Method to find 2nd Highest Salary
select max(salary) as SecondHighestSalary from salarytable where salary < 95429;

------- Using NOT IN / <> -------To find 2nd Max Salary ----   
----------- *NOTE: It will be work only to find the 2nd Highest Salary not to find other highest salary cases -----
select max(salary) as SecondHighestSalary from salarytable where salary not in (select max(salary) from salarytable);
select max(salary) as SecondHighestSalary from salarytable where salary <> (select max(salary) from salarytable);

--- 2nd Method
select max(salary) as SecondHighestSalary from salarytable where salary not in(95429);
select max(salary) as SecondHighestSalary from salarytable where salary <> (95429);

--------------------------- select salary from salarytable order by salary desc limit 1,1;  ------- With the help of LIMIT

------- Without Limit Clause  --- Find 2nd Highest Salary   ------------- WITH THE HELP OF SELF JOIN -----
----------- Formula to find 2nd Max salary -------- without Limit clause 
-- select salary from table_name(salarytable) alise_name(st1) where n-1(2-1) = (select count(distinct salary) from table_name st2 where st2.salary > st1.salary);
-------- where n = 1,2,3,4........
select Salary from salarytable st1 where 2-1 = (select count(distinct salary) from salarytable st2 where st2.salary > st1.salary);

-- Find the 3rd Highest Salary
select max(salary) as ThirdHighestSalary from salarytable where salary < (select max(salary) from salarytable where salary < (select max(salary) from salarytable));

------- Without Limit Clause  --- Find 3rd Highest Salary   ------------- WITH THE HELP OF SELF JOIN -----
select Salary from salarytable st1 where 3-1 = (select count(distinct salary) from salarytable st2 where st2.salary > st1.salary);

------- Without Limit Clause  --- Find 4th Highest Salary
select Salary from salarytable st1 where 4-1 = (select count(distinct salary) from salarytable st2 where st2.salary > st1.salary);

------- Without Limit Clause  --- Find 5th Highest Salary   ----------
select Salary from salarytable st1 where 5-1 = (select count(distinct salary) from salarytable st2 where st2.salary > st1.salary);






