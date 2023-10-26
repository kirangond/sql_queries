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

--to get only top 2 record
select * from student_info order by eid asc limit 2;

--to get last 2 record
select * from student_info order by eid desc limit 2;

--to get first 3 letters of city
select mid(ecity,1,3) from student_info;

--to get current time stamp
select now() from student_info;

--change current time stamp and rename column name now to time
select now() as Time;

select * from student_info;

--fetch records ends with letter n
select ename from student_info where ename like "%n";

--fetch records having a in it
select ename from student_info where ename like "%a%";

--to fetch city which has only 5 letters in it
select ename from student_info where ecity like "_____";

begin;

--delete a record having id as 5
delete from student_info where eid=5 limit 1;

--delete a mutliple record
delete from student_info where eid in(5,4) limit 2;

rollback;

--to drop a table
drop table table_name;

show tables;

--to retrive only unique city
select distinct ecity from student_info;

select * from student_info;

--retrieve the records concatenate content of 2 column
select concat(ename,ecity) from student_info;

--retrieve the records concatenate content of 2 column with separated by underscrore
select concat(ename,'_',ecity) from student_info;

--remove white spaces from left and right and both
select ltrim(ename) from student_info;

select rtrim(ename) from student_info;

select trim(ename) from student_info;

insert into student_info values(6,' ram', 'pune ', 40000);

--trim whitespace and concatenate with _ for name and city
select   concat(trim(ename),'_',trim(ecity)) from student_info;

--to update a record 
update student_info
set ename='kirangond'
where ename='kiran' limit 1;

--to delete a record having name om
delete from student_info
where esalary = 30000 limit 1;

--increment/decrement every one salary with 200
update student_info
set esalary = esalary - 200 limit 6;

--to add a new column to existing table
alter table student_info 
add email varchar(10);

select * from student_info;

--to delete a column
alter table student_info 
drop column email;

--second maximum salary
select MAX(esalary) from student_info;

select MAX(esalary) from student_info where esalary<
(select MAX(esalary) from student_info);

--give me the employe name who got incentive using sub query concepts

--data type and create and insert into table

create table employee (ename varchar(10),eage int(10),edob date, egender enum('Female','Male'));
select * from employee;
--to show what type of data it will store in column table
desc employee;

--to insert values in to the table 
insert into employee values
('kiran',27,"1997/10/22",'Male');

insert into employee values
('rani',20,"1996/10/2",'Female');

insert into employee values
('pak',29,"1995/05/10",'neutral');

select now() as timestamp;

--create a table with constrints and insert into it 

create table student(
sid int(10) primary key,
sname varchar(20) not null,
sgender enum('F','M'),
dob date not null,
phno varchar(20) unique,
location varchar(10),
course set('java','testig','devops')
);

show tables;
desc student;