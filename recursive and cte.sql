-- windows to find n highest

use sakila;

select * from payment;

select * from
(select amount , 
dense_rank() over(order by amount desc) as rating
from payment) as tab where rating =2;

-- CTE

with tushar as
(select amount , 
dense_rank() over(order by amount desc) as rating
from payment)
select * from tushar;


create temporary table tus as select * from payment ;
select * from tus;


select * from tushar;

use sakila;

select * from actor where actor_id >2;
select * from film_actor where film_id =30;
-- cte with join 
with 
cte1 as (select * from actor where actor_id >2),
cte2 as  (select * from film_actor where film_id =30)
select cte1.actor_id,film_id from cte1 join cte2
where cte1.actor_id = cte2.actor_id;

-- parametrized constructor   using user defined variables
SET @actor_id = 2;

WITH FilteredProducts AS (
    SELECT * FROM film_actor WHERE actor_id = @actor_id
)
SELECT * FROM FilteredProducts;

-- recursive cte
with num_table
as (select 1 from dual)
select * from num_table;


with recursive num_table
as (select 10 as num 
     union 
		select num+1 from num_table where num<13)
select * from num_table;


select * from actor;	


with recursive ac
as (select actor_id , first_name ,last_name from actor
where actor_id >5
union select actor_id , first_name,last_name from actor
where first_name ='NICK')
select * from ac;









