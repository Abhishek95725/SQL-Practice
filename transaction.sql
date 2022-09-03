create database newbatch01
use newbatch01
create table student01(
Id int,
name varchar(30),
roll_num int,
marks int
)
select *from student01

insert into student01 values(1,'shuvham',1234,50)

insert into student01 values(2,'bankey',2345,60)

insert into student01 values(3,'NOHAB',3456,70)

insert into student01 values(4,'rAM',5689,80)

insert into student01 values(5,'kul',8975,70)

delete from  student01 where id=3
save transaction test
delete from  student01 where id=5


select name from student01
select *from student01
begin transaction
delete student01 where id=2
begin transaction
rollback
commit

