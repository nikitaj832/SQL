use employees;

show tables;
-- corelated subquery

use regex;
show tables;
drop table em;
create table em(eid int primary key,name varchar(20));
insert into em values(1,'aman') ,(2,"shubhma");
drop table em_family;
create table em_family(eid int,name varchar(20) , father varchar(20));
insert into em_family values(1,'aman',"raj") ,(2,"shubhma","kamal") ,(3,"ram","klauram"),
(4,"abc","aman");

select * from em_family;

select * from em
where name in (select father from em_family where em_family.eid = em.eid);

drop table em123;
create table em123(eid int primary key , 
fname varchar(20) , salary int, dep_id int );

insert into em123 values(1,'aman',900,10) ,(2,"shubhma",100,10) ,(3,"ram",50,10),
(4,"abc",200,11),(5,"naina",300,11);
insert into em123 values(6,'isha',350,12);
select * from em123;

select dep_id ,avg(salary) from em123
group by dep_id;

select * from em123 where
salary > (select avg(salary) from em123 as e
where em123.dep_id  = e.dep_id
group by e.dep_id);

select * from em123 where
salary in (select avg(salary) from em123 as e
group by e.dep_id);

-- multi columns subquery
select * from em123 where
(salary , dep_id) in 
	(select avg(salary),e.dep_id from em123 as e
		group by e.dep_id);
        

create table order1(o_id int primary key ,item varchar(25),price int(10));
insert into order1 values(1, "apple" ,50),(2, "banaana" ,40),(3, "orange" ,30);

create table product(p_id int primary key ,item varchar(25),price int(10));
insert into product values(6, "mango" ,20),(4, "cherry" ,80),(5, "berry" ,100);

create table product1(p_id int primary key ,item varchar(25),price int(10));
insert into product1 values(6, "mango" ,20),(4, "cherry" ,80),(5, "berry" ,100);

select o_id from order1
where  exists (select p_id from product1
where order1.o_id = product1.p_id);

