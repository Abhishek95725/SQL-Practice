use Abhishek
select * from student
select top 1 * from student
-- HOW TO CREATE STORE PROCEDURE ?
Create Procedure studentIdList
AS
BEGIN
select * from student where id=101;
END

-- How To execute/call a stored procedure?
--- 1st Method
studentIdList

--- 2nd Method
Execute studentIdList

--- 3rd Method
Exec studentIdList

-- HOW TO MODIFY STORED PROCEDURE
Alter proc studentIdList 
As 
Begin
Select * from student where id=101;
Select * from student where id=102;
Select * from student where id=103;
Select * from student where city='champaran';
End


SELECT * FROM sys.procedures;

-- Parameter in Stored Procedure
---- Parameters are two types - 1. Input Parameter   2. Output Parameter
-- Input Parameter
Alter procedure studentIdList
@City varchar(20), @Salary int
As
Begin
Select * from student where City=@City;
Select * from student where Salary=@Salary;
End

Execute studentIdList 'Champaran', 96842

sp_help student

--- OutPut Parameter ---

Create procedure spAddDigit
@Num1 int,
@Num2 int,
@Result int Output
As
Begin
set @Result=@Num1+@Num2;
End

--Execute the Output Parameter
Declare @Id int
Execute spAddDigit 124,24, @Id Output
Select @Id