create database Abhishek;
use Abhishek;
create table Student(
Id int, 
First_Name varchar (20), 
Last_Name varchar (20), 
City varchar(50), 
College varchar(30)
);
select * from Student;
Insert into Student values(101, 'Abhishek', 'Thakur', 'Champaran', 'SNS College'),
(102, 'Chris', 'Hemsworth', 'Australia', 'Hollywood College'),
(103, 'Tom', 'Cruiz', 'California', 'California Boys College'),
(104, 'Alex', 'Holy', 'Champaran', 'MTH University'),
(105, 'Hulk', 'Singh', 'America', 'America University');
Insert into Student(id,First_Name,Last_Name) values(106, 'Rahul', 'Kumar');
update Student set city='vaishali' where City='america';
update Student set city='Muzaffarpur' where city is null;
update student set college='IMS college' where college is null;
sp_help student
