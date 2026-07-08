use umesh;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(30),
    Salary DECIMAL(10,2),
    Experience INT,
    JoiningDate DATE
);


INSERT INTO Employees VALUES
(101,'umesh','IT','Male',25,'Pune',45000,2,'2023-01-15'),
(102,'prahsant','HR','Female',28,'Mumbai',40000,4,'2022-06-20'),
(103,'komal','IT','Male',30,'Delhi',60000,6,'2019-04-10'),
(104,'nikita','Finance','Female',35,'Pune',75000,10,'2015-08-01'),
(105,'krushna','Sales','Male',29,'Nagpur',42000,5,'2020-11-11'),
(106,'Neha','HR','Female',27,'Pune',39000,3,'2021-02-18'),
(107,'Arjun','IT','Male',24,'Mumbai',38000,1,'2024-03-25'),
(108,'Pooja','Finance','Female',31,'Delhi',68000,7,'2018-09-12'),
(109,'Rohit','Sales','Male',33,'Pune',55000,8,'2017-12-05'),
(110,'Kiran','Marketing','Female',26,'Mumbai',41000,2,'2023-05-17'),
(111,'rohit','Marketing','Male',37,'Nagpur',70000,11,'2014-10-21'),
(112,'vaishanvi','IT','Female',29,'Pune',62000,5,'2020-01-10'),
(113,'om','Finance','Male',40,'Delhi',90000,15,'2011-07-19'),
(114,'Riya','Sales','Female',23,'Mumbai',36000,1,'2024-02-01'),
(115,'Kunal','HR','Male',32,'Pune',48000,7,'2018-11-30'),
(116,'Nisha','IT','Female',26,'Nagpur',50000,3,'2022-04-22'),
(117,'Deepak','Marketing','Male',34,'Delhi',65000,9,'2016-06-18'),
(118,'varun','Finance','male',28,'Pune',58000,4,'2021-09-27'),
(119,'Manoj','Sales','Male',31,'Mumbai',53000,6,'2019-08-08'),
(120,'Aarti','HR','Female',30,'Nagpur',47000,5,'2020-12-15');



# aggregate functions
#1:- count()==> used to count the total no of records

select count(empname) as total_employees
from employees;

#2:- sum()==> used to calculate the  sum column ,it it used for only numeric columns!
select department, sum(salary) as total_salary
from employees
group by department;


#3:- min()==> used to calculate the  minimum value from the column, it is also  used for only numeric columns!
select department, min(salary) as min_salary
from employees
group by department;


#4:- max()==> used to calculate the  maximum value from the column, it is also  used for only numeric columns!
select department, max(salary) as max_salary
from employees
group by department;


#5:- avg()==> used to calculate the  average value from the column, it is also  used for only numeric columns!
select department, avg(salary) as avg_salary
from employees
group by department;


# problems on  aggregate functions
#Q1:-Count employees whose salary is greater than 50,000.

select count( empname)
from employees
where salary >50000;

#Q2:-Display the total number of employees and there salary by department and also  highest salary together.

select department,count(empname)as total_employees,
max(salary)as  highest_salary,
min(salary)as lowest_salary,
sum(salary) as total_salary,
round(avg(salary),2) as avg_salary 
from employees
group by department
order by department asc;

#Q3:- Find the total salary city-wise.
select city,sum(salary) as total_salary,
count(empname) as total_employees
from employees
group by city;


#Q4:- Find departments having more than 3 employees.

select department, count(empname) as total_employees 
from employees 
group by department
having count(empname)>3;

#Q4:- Find cities where the average salary is greater than ₹50,000.

select city,avg(salary)as avg_salary
from employees 
group by city
having avg(salary)>50000;

#Q5:-Find the total experience of employees in each department.
select department, sum(experience)as total_experience,
count(empname) as total_employees
from employees 
group by department;

#Q6:- Find the youngest employee's age.

select min(age) as youngest_employee
from employees;

#Q7:- Find the youngest employee's age with other details.
select empname,age ,salary,city,experience
from employees
where age=(select  min(age)
from employees);

#Q8:- Find the maximum salary in each department.

select department ,max(salary)  as highest_salary
from employees
group by department;
#Q9:- Find the minimum salary in each city.
select city ,min(salary)  as lowest_salary
from employees
group by city;

#Q9:- Count male and female employees separately.

select gender ,count(*) as total_employees
from employees
group by gender;


#Q10:- Find the average experience of employees in each city.

select city,round(avg(experience),2) as avg_experience
from employees
group by city;

#Q11:- Find the department with the highest total salary.
select department, sum(salary)as total_salary
from employees
group by department
order by total_salary desc
limit 1;



























