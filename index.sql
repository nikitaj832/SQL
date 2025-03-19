-- INDEX

USE regex;

drop table users;
create table users(id int primary key ,fname varchar(30));
insert into users values(10 ,"tushar"),(11,"aman"),
(12,"naina"),(13,"raj"),(14,"shbham"),(15,'om'),(16,"tushar");

explain select * from users where id =11;
show indexes from users;

explain select * from users where fname ='om';

show indexes from users;

create index user_f on users(fname);
explain select * from users where fname ='om';
show indexes from users;

drop index `primary` on users;
drop index user_f on users;
show indexes from users;

create table userr(id int ,f_name varchar(29), l_name varchar(30));
insert into userr values(1,'niki','jain'),(2,'mahak' ,'babel'),(3,'pooja','agal'),
(4,'poonam','chipa');
explain select * from userr where f_name ='niki' and l_name = 'jain';

create index userr_f on userr(f_name ,l_name);
explain select * from userr where f_name ='niki' and l_name ='jain';

explain select * from userr where l_name ='jain' and f_name ='niki';


show indexes from userr;

create index idx_a_prefix on userr(f_name(10));
explain select * from userr where f_name ='jain';

select * from userr where f_name like 'n%';

CREATE INDEX idx_invisible ON userr(f_name) INVISIBLE;



 