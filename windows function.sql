use sakila;


create table employees(id int primary key auto_increment ,dept varchar(20),salary int);
insert into employees(dept ,salary) values ('hr',200),('hr',100),('marketing',70),('marketing',50),
('marketing',400),('marketing',600),('marketing',200);
insert into employees(dept ,salary) values ('hr',300);
insert into employees(dept ,salary) values ('dsa',150) ,('dsa',120),('dsa',40),('dsa',90),('dsa',500);
select * from employees;

select *,(select sum(salary) from employees)
from employees;

-- windows function

select * ,
sum(salary) over(),avg(salary) over(),max(salary) over()
from employees;

-- windows partition by

select * , 
sum(salary) over(),
sum(salary) over(partition by dept)
from employees;

select * from employees;


-- running sum -- cumulative sum
select *,
sum(salary) over(order by salary desc)  from employees;

-- window partition by and running sum
select *,
sum(salary) over(partition by dept order by salary desc)  from employees;

select * ,
avg(salary) over(partition by dept ) ,avg(salary) over(order by dept)  from employees;


-- window functions --> 1 . row_number

select * ,row_number() over (partition by dept order by salary)
from employees;

-- > 2. rank()
select * ,rank() over (order by salary)
from employees;

-- > 3 dense_rank()
select * ,rank() over (order by salary),
dense_rank() over (order by salary)
from employees;

select * ,rank() over (partition by dept order by salary)
from employees;

-- 4. lag()
SELECT *,
    LAG(salary,1) OVER (ORDER BY salary desc) AS previous_salary
FROM employees;


-- 5. lead()
SELECT *,
    Lead(salary) OVER (ORDER BY salary desc)
FROM employees;

SELECT *,
    Lead(salary,3)  OVER ()
FROM employees;

-- 6. NTILE(n)

SELECT *,
    ntile(3) OVER (ORDER BY salary)
FROM employees;















