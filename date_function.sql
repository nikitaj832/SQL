-- date funcition

use sakila;
-- single row category functions
select first_name ,substr(first_name,2)
from actor;

-- numeric function

select round(12.8) ,round(12.48,2) from dual;

select round(879.48,-2) from dual;

select round(879.48,-1) from dual;

select round(879.48,-3) from dual;

select round(279.48,1) from dual;


select truncate(279.48,-1) from dual;

select truncate(279.48,1) from dual;

select truncate(279.48,1) ,mod(21,2) ,
21%2 ,pow(2,3) from dual;


-- date function

select curdate() , curtime(),
now(),current_timestamp() from dual;

select adddate(curdate(),1) from dual;

select adddate(curdate(),interval 1 month) from dual;

select adddate(curdate(),interval 1 week) from dual;

select 
datediff(curdate(),
adddate(curdate(),interval -1 week)) from dual;

select now(),last_day(now()) from dual;
select month(now()),last_day(now()) from dual;

select date_format(now(), '%a') from dual;
select date_format(now(), '%b') from dual;
select date_format(now(), '%c') from dual;

select date_format(now(), 'current month is %M') from dual;

-- YYYY-MM-DD
select curdate() ,
str_to_date('17 2025 02', '%d %Y %m') from dual;










