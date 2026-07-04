# HAVING is used to filter groups of data after GROUP BY has been applied.
# the having clause is only use with the group by clause, we can not use it without the group by clause
# WHERE filters rows before grouping.
# HAVING filters groups after grouping.
use mydatabase;

select * from customers;

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

