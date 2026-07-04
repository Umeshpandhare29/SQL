# WHERE==> The where clause in SQL is used to filter records. It tells the database to return only the rows that satisfy a specific condition.
 
 use mydatabase;
 
 select  max(sales) as second_highest_orders from orders
 where sales <
 (select max(sales) from orders);
 
 
 select * from orders;
 
 #using where
 select * from orders
 where sales>=20;
 
select* from customers;

# showing only one column 
select country from customers
where id=2;

#showing all columns
# retriving the customers that belongs to germany
select *from customers
where country='Germany' and score>300;

select * from customers
where score>0;

