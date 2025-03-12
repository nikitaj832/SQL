use sakila;

select * from payment;


select avg(amount) ,count(amount),sum(amount)
from payment group by amount;

-- windowss ==> agregate apply here row ke saath
-- over()

select  payment_id ,amount,
avg(amount) over() from payment;


select  payment_id ,amount,
avg(amount) over(order by amount desc) from payment;


select  payment_id ,amount,
sum(amount) over(order by amount desc) from payment;


select  payment_id ,amount,
sum(amount) over(partition by amount),sum(amount) over(partition by amount order by amount desc) from payment;



select payment_id , staff_id ,amount,sum(amount) 
over(order by amount)
from payment where payment_id <10;


select payment_id , staff_id ,amount,sum(amount) 
over(partition by amount)
from payment where payment_id <10;

-- corelated subquery
create table cust(customer_id int ,name varchar(30));
insert into cust values (10,"a"),(11,"b"),(12,"c");
insert into cust values (13,"d");
create table ord(ord_id int,ord_price int, customer_id int);
insert into ord values (1,200,10),(2,300,11),(3,400,12);
insert into ord values (4,600,10);
select * from ord;


select c.customer_id ,count(o.customer_id)
from cust c left join ord o
on c.customer_id = o.customer_id
group by c.customer_id;

select name , customer_id from cust
where (select count(ord_id) from ord 
where ord.customer_id = cust.customer_id)>1;
