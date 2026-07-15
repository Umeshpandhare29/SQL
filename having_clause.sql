# HAVING is used to filter groups of data after GROUP BY has been applied.
# the having clause is only use with the group by clause, we can not use it without the group by clause
# WHERE filters rows before grouping.
# HAVING filters groups after grouping.
use mydatabase;
use umesh;

select * from employees;
select * from departments;

# using having clause with group by clause 
select country ,sum(score) as total_score
from customers
group by country
having sum(score)>800;


# using having group by and where clause together
select country, sum(score) as total_score
from customers
where score>700
group by country
having sum(score)>800;

# here firstly where clause executed it remove the score rows below the 700 and after group by clause executed and making the group of remaining rows ,
# and in the last the having clause  apply filter on grouped rows and and  returns output


select country,avg(score) as avg_score
from customers
where score>0
group by country 
having avg(score)>430;

#Q1:- Show departments with more than 2 employees.

select department,count(department)as total_emp
from employees
group by department
having total_emp>2;

#Q2:- Show cities where the average salary is greater than 50,000.

select city,avg(salary)as avg_salary
from employees
group by city
having avg_salary>50000;

#Q3:- Show departments whose total salary exceeds 200,000.

select department,sum(salary) as total_salary
from employees
group by department
having total_salary>200000;


#Q4:- Count employees in each city and sort by the highest count.

select city, count(empname)as total_emp
from employees
group by city
order by  total_emp desc;


#Q5:- Display department-wise average salary in descending order.

select department, avg(salary) as avg_salary
from employees
group by department
order by  avg_salary desc;

