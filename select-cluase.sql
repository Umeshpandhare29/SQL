-- use the existing dataset
use mydatabase;


-- showing all  tables  in data set
show  tables;

-- showing all data from customers table
select * from customers;

-- selecting 1  clumn from customers table
select first_name from customers;

-- selecting  multiple culumns from customers table
select first_name, country,score from customers;


# distinct keyword

select distinct country from customers;
# the distinct keyword is use to remove the duplicate rows from the table

# limit keyword

select  * from customers
order by score asc
limit 2;

# selecting the recent two  last orders
select * from orders
order by order_date desc
limit 2;




