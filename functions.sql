use mydatabase;
#string functions

#1:-upper()==> use to convert the string into uppercase
select upper(first_name)
from customers;

#2:-lower()==> use to convert the string into lowercase
select lower(first_name)
from customers;

#3:-length()==> used to find the length of string
select first_name ,length(first_name)
from customers;

#4:-concat() ==> used to join the  string
select concat(first_name ," belongs to ", country) as costomers_and_there_country
from customers;

#5:- left()===> used to print the no of latters from left side
select left(first_name,4)as first_4_latters
from customers;


#6:- right()===> used to print the no of latters from right side
select right(first_name,3)as_last_3_latters
from customers;

#7:- replace()===> used to replace the text 
select replace(first_name,'maria','Maria')
from customers;


# numeric functions

#1:-Round()===> it used to round the number
select round(12.33454,2);

#2:-ceil()===> Returns the smallest integer greater than or equal to the number
select ceil(148.2);

#3:-floar()===> Returns the largest integer less  than or equal to the number
select floor(148.2);

#4:- mod()===> return the reminder alter
select mod(35,4);

#5:- sqrt()===> return the square root 
select sqrt(169);

#6:-power()===> return the power of the number
select power(2,10);


# date and time functions

#1:-current_date()===> print the current date 
select current_date();

#2:-current_time()===> print the current time 
select current_time();

#3:-now()===> print the current date and time
select now();

#4:-year()===> return the year from given data
select year(order_date)
from orders;

#5:-month()===> return the month from given data
select month(order_date)
from orders;

#6:-day()===> return the day from given data
select day(order_date)
from orders;

#6:-dayname()===> return the day from given data
select dayname(order_date)
from orders;

select upper(left(first_name,4))
from customers;

# using functions with where

select * from orders
where month(order_date)=1;


# using functions with order by

select first_name,length(first_name)as length_of_name
from customers
order by length_of_name desc;
