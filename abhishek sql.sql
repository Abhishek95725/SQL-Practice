create database abhishek  ---database create
use abhishek              -----database use

create table stu(id int,name varchar(10),dob datetime,doj date,ad varchar(20),mob_no char(10));  ------create table
insert into stu values(101,'shiv', '2000-11-14 10:58:00', '2022-06-27', 'jaipur', '9166987739')          -----insert values
insert into stu values(102,'anuj', '1989-11-14 12:58:00', '2022-06-27', 'indoor', '1544589612')
insert into stu values(103,'ajay', '2000-11-14 10:58:00:22', '2022-06-27', 'jaipur', '9166956544')
insert into stu values(105,'jay', '1998-11-14 10:58:00:22', '2022-06-27', 'mumbai', '2166987852')
insert into stu values(107,'prachi', '1997-11-14 10:58:00:22', '2022-06-27', 'himachal', '8166952739')
insert into stu values(109,'vatika', '1998-11-14 10:58:00:22', '2022-06-27', 'delhi', '4126987739')
insert into stu values(108,'rashi', '1998-11-14 10:58:00:22', '2022-06-27', 'jaipur', '3006987739')
insert into stu values(104,'raakhi', '1999-11-14 10:58:00:22', '2022-06-27', 'ajmer', '8956987739')


alter table stu add dname varchar(20);
alter table stu alter column dname nvarchar(20);
alter table stu drop column DOB;

update stu set id=110, doj='2022-05-01' where ad='mumbai';   ------update
update stu set dname='sales' where dname is null;
update stu set dname='engineer' where ad = 'jaipur';
update stu set dname='hr' where ad = 'himachal';
update stu set dname='electrician' where ad = 'mumbai'
update stu set dname='purchase' where ad = 'indoor'
update stu set dname='it' where ad = 'ajmer'
update stu set dname='hr' where ad = 'delhi';


select* from stu

truncate table stu;
delete stu ;
drop table stu;

sp_help stu  ;