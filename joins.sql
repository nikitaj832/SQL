-- joins

use sakila;
select * from address;

select count(*) from address;

create database test1;
use test1;


create table product(pid int,name varchar(20), price int);
insert into product values(10,'tv',100),(20,'apple',200),
(30,'mobile',300),(40,'shoe',1500);

select * from product;

create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);

select * from orders;

-- equi join
select pid ,p.name ,p.price ,o.city
from product as p join orders as o 
where p.pid = o.product_id;

-- inner join
select pid ,p.name ,p.price ,o.city
from product as p inner join orders as o 
on p.pid = o.product_id;

-- left join
select pid ,p.name ,p.price ,o.city
from product as p left join orders as o 
on p.pid = o.product_id;

-- non-equi join
select pid , city
from product ,orders
where pid = product_id;

select * from orders;
insert into orders values('E2132','JK',10) , ('F213','MH',30);

-- right join
select pid ,p.name ,p.price ,o.oid,o.city
from product as p right join orders as o 
on p.pid = o.product_id;

-- natural join

select pid ,p.name ,p.price ,o.city
from product as p natural join orders as o ;
-- where p.pid = o.product_id;


desc orders;
alter table orders rename column product_id to pid;
select pid ,p.name ,p.price ,o.city
from product as p natural join orders as o ;

alter table orders rename column city to name;

select pid ,p.name ,p.price ,o.name
from product as p natural join orders as o ;  -- no output


