-- constraint
use regex;

create table empl(id int);

insert into empl values (10),(20),(null),(30);

select id , id+5 from empl;


create table empl1(id int not  null);

insert into empl1 values (10),(20),(30);
insert into empl1 values (null);
insert into empl1 values (10);
select id , id+5 from empl1;



create table empl2(id int ,salary int default 0);
insert into empl2 values (10,99),(20,100);
insert into empl2(id,salary) values (30,null);
select id , salary from empl2;

create table empl3(id int ,salary int unique);
insert into empl3 values (10,99),(20,1001);
insert into empl3(id,salary) values (30,1002);
insert into empl3(id,salary) values (21,null);
select * from empl3;

-- primary key
create table empl4(id int primary key,salary int unique);
insert into empl4 values (10,99),(20,1001);
insert into empl4(id,salary) values (30,1002);  
-- insert into empl4(id,salary) values (10,null);  duplicate error
select * from empl4; 

drop table empl4;
create table empl4(id int primary key,fname varchar(20),
salary int , constraint regex_emp_sal unique(salary) );
insert into empl4 values (10,'a',99),(20,'b',1001);  
-- insert into empl4(id,salary) values (10,null);  duplicate error
select * from empl4; 



create table student(id int,st_name varchar(20),fees int not null , college_name varchar(50) default 'regex' ,
ph_no int unique , constraint regx_phno_uk unique(ph_no),  
constraint pk_student primary key(id ,st_name),
constraint fees_not unique(fees),
constraint college_st DEFAULT(college_name));


insert into empl4 values (10,'a',99),(20,'b',1001);  
-- insert into empl4(id,salary) values (10,null);  duplicate error
select * from empl4; 

drop table student;
CREATE TABLE student (
    id INT,
    st_name VARCHAR(20),
    fees INT NOT NULL,
    college_name VARCHAR(50) DEFAULT 'regex',
    ph_no INT UNIQUE,
    CONSTRAINT pk_student PRIMARY KEY (id, st_name),
    CONSTRAINT fees_not UNIQUE (fees),
    CONSTRAINT regx_phno_uk UNIQUE (ph_no)
);

