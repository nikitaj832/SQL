use sakila;

select * from payment order by amount desc limit 2;

select distinct(amount)
from payment order by amount desc limit 2;

select distinct(amount)
from payment order by amount desc limit 1,1;

select max(amount) from payment
where amount < (select max(amount) from payment);

-- ddl statement

create database march3;
use march3;

create table regex(id int,name varchar(20));
insert into regex values(1,'nikita');
insert into regex values('nikita');      -- error of not match value count
insert into regex(name) values('nikita'),("aman");
insert into regex(name) values(null);
select * from regex;

-- ctas  create table as select
create table y2 select * from sakila.actor;
select * from y2;

create table y3 as select actor_id,first_name from sakila.actor;
select * from y3;
desc y3;

create table y4 as select first_name from sakila.actor;
select * from y4;


-- delete

select * from y3;
delete from y3 where actor_id in (2,4);

-- update
 
update y3 set first_name ="regex";
select * from y3;

update y3 
set first_name ="niku"
where actor_id >2 ;
select * from y3;

-- ddl =>drop ,truncate
select * from y3;
drop table  y3;

create table y5 as select actor_id from sakila.actor;
truncate table y5;

select * from y5;

-- alter statement

use march3;
create table companies(id int);
insert into companies values(10);
select * from companies;
desc companies;

alter table companies 
add column phone varchar(15);
select * from companies;
desc companies;

alter table companies 
add column emp int not null;
select * from companies;


alter table companies
drop column phone ;

select * from companies;

rename table companies to newcomp;
select * from companies;
select * from newcomp;

alter  table newcomp rename to companies;
select * from companies;

alter  table companies rename column emp to emp_name;
select * from companies;

alter table companies add primary key (id);
select * from companies;

desc companies;
alter table 
update companies set emp_name = "nikita" where id =10;

alter table companies add constraint emp_name_uk unique (emp_name);
select * from companies;

desc companies;

alter table companies drop constraint emp_name_uk ;
select * from companies;
desc companies;

alter table companies modify emp_name int;
desc  companies;
select * from companies;
desc companies;

select * from companies;
desc companies;


