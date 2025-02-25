-- self join

use test1;

create table staff(eid int , ename varchar(20),manager_id int);
insert into staff values(10,'tusar',null),(11,'aman',13),(12,'sakshi',10),
(13,'shhubham',11),(14,'ujjwla',12);

select * from staff;


select emp.eid ,emp.ename ,emp.manager_id,mng.ename
from staff as emp join staff as mng
where emp.manager_id = mng.eid;

-- set operator
use sakila;

select * from actor where actor_id in (2,3)
union 
select * from actor where actor_id in (3,5);


select * from actor where actor_id =2
union 
select actor_id ,first_name,last_name , last_update from actor where actor_id in (3,5);

select * from actor where actor_id =2
union all
select * from actor where actor_id in (3,5);

select * from actor where actor_id in (2,3,4)
except
select * from actor where actor_id in (3,5);

select * from actor;
select * from film_actor;

desc actor;
desc film_actor;

select * from
actor as ac join film_actor as fm;

select ac.actor_id,first_name  ,count(fm.film_id) as movies
from actor as ac join film_actor as fm
where ac.actor_id = fm.actor_id
group by ac.actor_id order by movies desc;







