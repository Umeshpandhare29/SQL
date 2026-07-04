use  mydatabase;

select * from customers;

# using order by clause
select * from customers
order by score desc;

# selecting all columns
select * from customers
order by   country asc ,score desc;

#  selecting  specific columns

select first_name,country,score
 from customers
 order by  score desc;
 
 # using number insted of column name
 select first_name,country,score
 from customers
 order by  1 desc; -- where 1 is the column number which is specified to select clause. that means it aranged the  column first_name in  desc ordered.alter.
 
 
 
 