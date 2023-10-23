--to view all the databases in the workspace
show databases;

--before performing any operation we need to use that database
use sql_database;

--to show all the tables in the db
show tables;

--to retreive all the records from the table
select * from student_info;

--to create a table
create table student_info (eid integer(5), ename varchar(10), ecity varchar(20));

--insert values in to the table
insert into student_info values(5,'rahul', 'hyd');

--add new column into existing table
alter table student_info
add esalary varchar(10);

--update the records in safe mode it will not update so use limit to update only a single record
update student_info
set ename='goa' where ecity = 'bidar' limit 1;

update student_info
set ename='kiran' where eid = '1' limit 1;

--roll back changes
--use first begin statement and enter the query and last if wrong update roll back the changes
begin;

update student_info
set ename='100' where eid = '1' limit 1;

select * from student_info;

rollback;

update student_info
set esalary=20000 where eid = 5 limit 1;

eid, ename, ecity, esalary

--Write a query to select ename whose salary is 10000

select ename from student_info where esalary = 10000;

--Write a query to select ename whose salary is greater than equal to 20000

select ename from student_info where esalary >= 20000;

--Write a query to select ename whose salary is 10000 or 30000
select ename from student_info where esalary in (10000,30000);

keyword structure
 select
   from
     where
       group by
         having
           order by;


