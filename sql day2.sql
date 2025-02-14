use sakila;

select * from actor;

select * from 
actor where actor_id > 2 and first_name ='JOHNNY';


select * from actor
where first_name = 'NICK' or first_name ='ED'
and actor_id > 2;

select * from actor
where first_name = 'ED' or first_name ='NICK'
and actor_id > 2;

select * from actor
where (first_name = 'NICK' or first_name ='ED')
and actor_id > 2;



-- STRIN  FUNCTION

select first_name ,lower(first_name),
upper(lower(first_name))
from actor;

select first_name ,last_name,
concat(first_name,'_' , last_name)
from actor;

select first_name ,last_name,
concat(first_name,'_' , last_name,'xyz')
from actor;

select first_name ,last_name,
concat(first_name,'_' , last_name,'xyz'),
concat_ws('-',first_name , last_name,'xyz')
from actor;

select * from actor
where concat(first_name,last_name) = 'EDCHASE';


-- SUBSTRINGG

SELECT first_name ,
SUBSTR(first_name,1),
SUBSTR(first_name,1 ,3) FROM ACTOR;

SELECT first_name ,
SUBSTR(first_name,-3),
SUBSTR(first_name,1 ,3) FROM ACTOR;


-- INSTR
SELECT first_name ,
INSTR(first_name,'E')
FROM ACTOR;

-- LOCATE()

SELECT first_name ,
INSTR(first_name,'E'),
locate('E',first_name,2),
-- char_length()
char_length(first_name)
FROM ACTOR;

-- length
-- dual table

select 'hey','hello' from dual;

select length('月'),char_length('月')
from dual;


select amount from payment;

select first_name,lpad(first_name,5,'$')
 from actor;
 
 select first_name,rpad(first_name,3,'$')
 from actor;
 
 select   '      hey    ',
 trim('     hey    ')
 from dual;
 
select   '      hey    ',
 trim( leading 'z' from 'zzzzheyzzzzz'),
 trim( trailing'z' from 'zzzzheyzzzzz')
 from dual;
 
 
 -- replace
 select first_name ,replace(first_name,'E','X')
 from actor;
 
 
 
 
 













