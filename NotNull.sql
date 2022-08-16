create database Abhishek
use Abhishek
-- NOT NULL Practice
create table test(Id int NOT NULL, 
                  First_Name varchar (20), 
                  Last_Name varchar (20), 
                  City varchar(50), 
                  College varchar(30),
                  Salary int)
insert into test values(101, 'Abhishek', 'Thakur', 'Champaran', 'SNS College', 95000)
insert into test values(102, 'Chris', 'Hemsworth', 'Australia', 'Hollywood College', 55600)
insert into test values(103, 'Tom', 'Cruiz', 'California', 'California Boys College', 65000)
insert into test values(null, 'Tom', 'Thor', 'Motihari', 'MTH College', 45000)


select * from test
drop table test

alter table test alter column city varchar(50) NOT NULL
insert into test values(104, 'Alex', 'Lucy', null, 'NIT College', 88000)
alter table test alter column salary int null

sp_help test
