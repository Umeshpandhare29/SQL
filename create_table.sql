create database vipro;
use vipro;
# for creating the new table the create table keyword are used 
create table employee(
emp_id int primary key,
name varchar(20),
dept varchar(10) not null ,
salary int not null);

# for modifying the table 'alter table' command are used

# adding the new column into existing table
alter table employee
add age int not null;
 
# for deleting the table 
 alter table employee
 drop column emp_age;
 # rename the existing column
 alter table employee
 rename column age to emp_age;
 
 # modifying the existing column
  alter table employee
  modify column dept varchar(20) not null;


select * from employee;

drop database vipro;

# its shows null values because we only create a table but not insert values in it. for inserting  values in it we use 'insert into' command 

