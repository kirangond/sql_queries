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

--keyword structure
 select
   from
     where
       group by
         having
           order by;
           
select * from student_info;

--we can filter the record using having clause also
select * from student_info having esalary = 10000;

--select ename order by names in descending order
select * from student_info  order by ename desc;

select * from student_info  order by ename asc;

--Built in functions max, min, avg, sum, count

--retrieve the records whose salary is maximum
select max(esalary) from student_info;

select min(esalary) from student_info;

select avg(esalary) from student_info;

select sum(esalary) from student_info;

select count(esalary) from student_info;

select * from student_info;

--group by clause
select count(ename) 
from student_info
group by ecity
having ecity = 'bhalki';

--convert into upper and lower case
select ucase(ecity) from student_info where eid = 1;

select lcase(ecity) from student_info where eid = 1;


