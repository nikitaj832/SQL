show databases;

use sakila;

show tables;

describe actor;

select * from actor;

select first_name ,ACTOR_ID from actor;


select * from actor
   where actor_id <> 2;
   
select * from actor
	where actor_id between 1 and 5;
    
select * from actor
	where actor_id in (2,5,500);
    
select * from actor
	where first_name in ('NICK','ED');
    
select * from actor
	where first_name= 'A';
    
select * from actor
	where first_name like 'A%';

select * from actor
	where first_name like '%Y' ;
    
select * from actor
	where first_name like 'S%A' ;
    
select * from actor
	where first_name like '%A%' ;
    
select * from actor
	where first_name like '%SA%' ;

select * from actor
	where first_name like 'E%' ;

select * from actor
	where first_name like 'E_' ;

select * from actor
	where first_name like '_A%' ;
    
select * from actor
	where first_name like '_A_' ;

   
select * from actor
	where first_name like '____' ;
   
select * from actor
	where first_name like '%I__' ;
    
   
select * from actor
	where first_name like '%_E_%' ;
    
   
select * from actor
	where first_name like '_R__' ;

   
select * from actor
	where first_name like '%EE%' ;

   
select * from actor
	where first_name like '_H%Z_' ;

    
    
    
    
    