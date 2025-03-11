-- views

use regex;

show tables;

create table payment as select * from sakila.payment;  -- ctas
select * from payment;

create view pay_view as 
select payment_id ,customer_id from payment;

select * from pay_view;

insert into pay_view values(10,100); 



create table payment2 as 
       select  payment_id ,customer_id from sakila.payment
       where payment_id<5;  -- ctas
       
       
create view pay_view3 as 
select * from payment2;
select * from pay_view3;
insert into pay_view3 values(5,10);
select * from payment2;


create view pay_view4 as 
select payment_id from payment2;

select * from pay_view4;

use regex;
select * from sakila.actor;
select * from sakila.film_actor;


select * from sakila.actor as a join sakila.film_actor as f
where a.actor_id = f.actor_id;



select first_name ,film_id,last_name  from sakila.actor as a join sakila.film_actor as f
where a.actor_id = f.actor_id;


create view ac_view as 
select first_name ,film_id,last_name  from sakila.actor as a join sakila.film_actor as f
where a.actor_id = f.actor_id;
select * from ac_view;
insert into ac_view values("nik" ,67,"jain");

CREATE TABLE t1 (a INT);
CREATE VIEW v1 AS SELECT * FROM t1 WHERE a < 2
WITH CHECK OPTION;
CREATE VIEW v2 AS SELECT * FROM v1 WHERE a > 0
WITH LOCAL CHECK OPTION;
CREATE VIEW v3 AS SELECT * FROM v1 WHERE a > 0
WITH CASCADED CHECK OPTION;
select * from v2;

insert into v1 values(1);
select * from v1;
insert into v2 values(2);
select * from v2;
insert into v3 values(2);
select * from v3;