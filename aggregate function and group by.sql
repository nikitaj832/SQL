-- Multi row functions
-- 1. aggregate func
USE sakila;
select sum(amount) from payment;
select count(amount) from payment;
select avg(amount) from payment;
select avg(amount) , sum(amount)/count(amount)
from payment;

select distinct(amount) from payment;


select count(distinct(amount)), count(amount) 
from payment;

select count(*)  from payment
where amount = 0.99;

select * from payment;

select count(amount)  from payment
where amount = 2.99;

-- group by

select amount from payment group by amount;

select amount,count(payment_id),sum(amount),avg(amount) from payment group by amount;

select payment_date, month(payment_date)
from payment;

select sum(amount), month(payment_date)
from payment
group by month(payment_date);

select customer_id ,sum(amount)
from payment group by customer_id;

select amount,sum(amount)
from payment group by amount
having sum(amount)>500 ;





