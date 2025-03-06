-- tcl statement
-- commit ,savepoint,rollback

select @@autocommit;
set autocommit = 0;

use regex;
create table yash(id int , fname varchar(20));
insert into yash values(10,"shubham");
select * from yash;
commit;

insert into yash values(10,"aman");
rollback;
select * from yash;

insert into yash values(10,"aman");
commit;
rollback;
select * from yash;

insert into yash values(12,"shubham");
update yash set fname ="regex";
create table dd(id int);
select * from yash;

insert into yash values(13,"isha");
update yash set fname ="uu";
select * from yash;
savepoint yash_raj_sv;

insert into yash values(14,"pp");
rollback to yash_raj_sv;

