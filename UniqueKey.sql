use Abhishek
-- Unique Key = It cann't have duplicate values
create table test1(eno int unique, 
                  ename varchar (20), 
                  esal varchar (20))

insert test1 values(101, 'Thor', 95000), (102, 'Lucy', 65000)

select * from test1

insert test1 values(101, 'Hulk', 5000)

drop table test1
sp_help test1

-- Drop the constraint 
alter table test1 drop constraint UQ__test1__D9507B86D76F35CA 

-- During table creation we add unique id i.e (UQ_TEST1_ENO)
create table test1(eno int constraint UQ_TEST1_ENO unique, 
                  ename varchar (20), 
                  esal varchar (20))
insert test1 values(101, 'Thor', 95000)
insert into test1 values(102, 'Lucy', 65000)
insert test1 values(101, 'Millie Bobby Brown', 150000)

-- Drop Unique Key ID (UQ_TEST1_ENO)
alter table test1 drop constraint UQ_TEST1_ENO

-- we add the unique key condition on multiple column
create table test1(eno int, 
                  ename varchar (20), 
                  esal int,
				  constraint UQ_TEST1_ENO unique(eno),
				  constraint UQ_TEST1_ENAME unique(ename))
  select * from test1
  insert test1 values(101, 'Thor', 95000)
insert into test1 values(102, 'Lucy', 65000)
sp_help test1
            insert test1 values(101, 'Lucy', 98000)
            insert into test1 values(101, 'Lucy', 12000)
            alter table test1 drop constraint UQ_TEST1_ENO, constraint UQ_TEST1_ENAME

-- After create the table add quniue key on column
create table test1(eno int, 
                  ename varchar (20), 
                  esal int)
insert test1 values(101, 'Thor', 95000)
insert into test1 values(102, 'Lucy', 65000)
 
ALTER TABLE TEST1 ADD CONSTRAINT UQ_TEST1_ENAME UNIQUE(ENAME)
insert test1 values(103, 'Thor', 98000)
ALTER TABLE TEST1 DROP CONSTRAINT UQ_TEST1_ENAME

-- Q. difference b/w Unique Key & Primary Key?
              Primary Key                                                  Unique Key
-- 1. Unique identifier for rows of a table      1. Unique identifier for rows of a table when primary key is not present.
-- 2. Cannot be NULL                             2. Can be NULL
-- 3. Only one primary key can be present in a table    3. Multiple Unique Keys can be present in a table
-- 4. Selection using primary key creates clustered index  4. Selection using unique key creates non-clustered index