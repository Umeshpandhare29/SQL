use mydatabase;

# combinig  all the clause by sequencially.
select * from customers;
select country,sum(score)as total_score
 from customers
 where id>=2
 group by country
 having sum(score)>=500
 order by Total_score asc;
