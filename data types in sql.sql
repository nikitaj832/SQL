-- data type of sql

-- numeric data type

create database regex2;
use regex2;

-- ddl statment (data definition lanugagE)

create table employee1(eid int);
insert into employee1 values(-2147483647);


select * from employee1;

create table employee2(eid int(4));
insert into employee2 values(100000);
select * from employee2;

-- only 4 values create in zerofill
create table employee3(eid int(4) zerofill);
insert into employee3 values(796);
select * from employee3;

-- unsinged integer

create table employee4(eid int unsigned);
insert into employee4 values(766758056);
select * from employee4 ;

-- big int
-- tiny int
create table employee5(eid tinyint);
insert into employee5 values(127);
select * from employee5 ;

insert into employee5 values(False);
select * from employee5 ;

-- decimal

-- float and double
create table emp(salary float);
insert into emp values(12.797576858);
select * from emp ;

create table emp1(salary float(4,2));
insert into emp1 values(12);
select * from emp1 ;

-- varchar and char
create table emp2(name char(4));
insert into emp2 values('niki');
select name , length(name) from emp2 ;

create table emp3(name char(6));
insert into emp3 values('  niki   ');
select name , length(name) from emp3 ;

create table emp4(name varchar(4));
insert into emp4 values('nkk');
select name , length(name) from emp4 ;


# date and time
-- YYYY- MM -DD
-- hh: mm :ss

create table test(dob date);
insert into test values("2022-05-12");
select * from test;