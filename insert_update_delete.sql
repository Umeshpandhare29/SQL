
create database wipro;
use wipro;

create table employee(
emp_id int primary key,
name varchar(20),
dept varchar(10) not null ,
salary int not null);
drop table employee;

# inserting the values in the above  table
insert into employee
values
('101','umesh','IT','23000'),
('102','krushna','HR','20000'),
('103','prashant','Sales','22000'),
('104','komal','IT','30000'),
('105','nikita','HR','33000'),
('106','rohit','IT','15000'),
('107','vaishnavi','Sales','13000'),
('108','rahul','HR','32000'),
('109','om','IT','34000'),
('110','shubham','HR','25000');


#updating the existing values of table

update employee 
set salary=25000
where emp_id=101;

update employee
set dept='HR'
where salary>=30000;


update employee
set dept='Sales'
where salary<=25000;


delete  from employee where salary<=25000;


select * from employee;

drop table employee;






 
