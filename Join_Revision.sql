use employee

select * from AEmp
select * from ADept

sp_help ADept

--------------------- Join --------------------------------
----- Create 1st Table -----------------------------
create table ADept(dno int, dname varchar(10))
insert into ADept values(111, 'Sales'),(222, 'Account'),(111, 'Purchase')
update ADept set dno=333 where dname='purchase'
select * from ADept

----- Create 2nd Table -----------------------------
create table AEmp(empno int, empname varchar(20), dno int)
insert into AEmp values(101, 'Abhi', 111),(102, 'Thor', 222),(103,'Millie', 333),
                        (104, 'Hulk', 111),(105, 'Chris', 222),(106,'Abhishek', 333),
						(107, 'Marvel', 111),(108, 'Tom', 222),(109,'Holland', 333)

select * from ADept
select * from AEmp
-------- Cross Join --- (Comma Join) --------
select empno, empname, dname from AEmp,ADept
select empno, empname, dname from AEmp CROSS JOIN ADept

------------ Equi Join ----- (Inner Join)(Natural Join) -----------
select empno, empname, dname from AEmp,ADept where AEmp.dno = AEmp.dno
select empno, empname, dname from AEmp INNER JOIN ADept ON AEmp.dno = AEmp.dno

---------- Types of Join ---- (1). CROSS JOIN (2). INNER JOIN (3). OUTER JOIN ----
------ Three types of Outer Join --- (1). Left [Outer] Join (2). Right [Outer] Join (3). Full [Outer] Join -----

select * into AEmpCopy from AEmp --- is query se AEmp table ke ander se data or structure dono copy ho jayega) ---
select * into AEmpCopy from AEmp where empno < 0

----- Left Join ----
select A.empno, B.empno from AEmp A Left Join AEmpCopy B ON A.empno = B.empno

-------- Right Join ----- 
select A.empno, B.empno from AEmp A Right Join AEmpCopy b ON A.empno = B.empno

------------ Full Join ------ 
select A.empno, B.empno from AEmp A Full Outer Join AEmpCopy b ON A.empno = B.empno