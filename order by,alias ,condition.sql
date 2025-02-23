
use sakila;

select * from payment;

select * from payment where amount =2.99;

select amount , sum(amount) from payment
where amount != 0.99
group by amount ;

select amount , sum(amount) from payment
group by amount having amount != 0.99 ;

-- group by  having
-- orderby 
-- alias
select amount ,amount*10 as `new` from payment;
select amount ,amount*10 as am from payment;

select * from payment
order by amount desc ,rental_id desc;

-- condition 
select amount ,if(amount =0.99 , 'correct','incorrect')
from payment;

select amount ,if(amount =0.99 , 'correct',
  if(amount =2.99 , 'yes','incorrect'))
from payment;

-- case statement 

-- '''
-- select col,
-- case
-- when cond then statement
-- 	when cond then statement
-- end
-- '''

select * from payment;

select amount,
case
	when amount = 0.99 then 'value is 0.99'
    when amount = 2.99 then 'yes'
    else amount
 end as cond
 from payment;
 
 
 
 -- subqquery 
 
 select * from payment where
 amount = (select amount from payment where payment_id =3);
 
    






