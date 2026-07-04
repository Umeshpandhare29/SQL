use mydatabase;

select * from customers;

#using group by clause
# using only one agrigate function
select country, sum(score) as total_score
from customers
group by country;

#  using multiple  agrigate function

select country ,sum(score) as total_score,
		       count(id) as total_customers
from customers
group by country;

# group by with order by 

select country ,sum(score) as total_score,
		       count(id) as total_customers
from customers
group by country
order by  total_score asc ,total_score asc;


