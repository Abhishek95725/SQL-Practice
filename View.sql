Use Abhishek

select * from student
/*
HOW TO CREATE VIEW ?
1. We can create view using CREATE VIEW statement.
2. A view can be created from a single table or multiple table.
*/
Create View vwStudent
AS
select * from student;

-- How to check view table
select * from vwStudent;

-- How to Alter/Modify the view table
Alter View vwStudent
AS
select Id, First_Name, City, College from student;

-- How to Drop View Table
Drop View vwStudent;


-- How to fetch the data from multiple table with the help of View ?
select * from student
select * from stu;

create view vwStudentMultiTable
AS
select s1.Id, s1.First_Name, s1.City, s1.College, s2.doj, s2.ad from student s1 
JOIN stu s2 
ON s1.Id=s2.id;

select * from vwStudentMultiTable;

---- Drop Multiple View Table
Drop view vwStudentMultiTable

-- How to Update the MetaData of View 
----- How to Update View Table Definition
create view vwStudent
AS
select * from student;

select * from vwStudent;
Alter Table student Add country varchar(20);
exec sp_refreshview vwStudent;
alter table student drop column country
--- How to Create Schema Binding
------ We cannot Alter, Modify in Schema Binding

Create view vwStudent
AS
select * from student;

select * from vwStudent

alter table student drop column salary;

--- How to Create Schema Binding in SQL View 
Create view vwStudentWithSchemaBinding
With SchemaBinding
AS
select Id, First_Name, Last_Name, City, College from dbo.student;

select * from vwStudentWithSchemaBinding;

alter table student drop column city; --- throw a error
-- ALTER TABLE DROP COLUMN city failed because one or more objects access this column.

-----------------------------------------------
--- ------------------ Why to use View -------------------------------------
-- 1. Hide the complexity of query
-- 2. Row Level Security
-- 3. Column Level Security
---- ----- Row Level Example -------
create view vwRowLevel
AS
select * from student where id > 103;

select * from vwRowLevel;

------- Column Level Example ---------
create view vwColumnLevel
AS
select Id, First_Name, City from student

select * from vwColumnLevel

----- 1. Updating View -----
----- 2. Delete from View -----
----- 3. Insert into View -----

Create view vwStudent
AS
select * from student;

select * from vwStudent;

Insert into vwStudent(Id, First_Name, Last_Name, City, College) values(107, 'Rajnish','Kashyap', 'Motihari', 'MS College');

delete from vwStudent where id=107;

update vwStudent set Last_Name='Yadav' where id=106;

------ With Check Option -----

create view vwCheckOption
AS
Select * from student where city='Motihari'
With Check Option;

Select * from vwCheckOption

Insert into vwStudent(Id, First_Name, Last_Name, City, College) values(101, 'Rajnish','Kashyap', 'Noida', 'MS College');
Insert into vwStudent(Id, First_Name, Last_Name, City, College) values(101, 'Rajnish','Kashyap', '', 'MS College');




sp_helptext 'vwStudent';