use sakila;

select * from actor where 
first_name = (select first_name from actor where actor_id =3);

select * from payment where 
amount > (select amount from payment where rental_id =1185);

select amount, count(amount) from payment
group by amount;

select amount, count(amount) from payment
group by amount
having count(amount) > (select count(amount) from payment 
where amount =0.99) ;


-- multi row sub quary

select amount from payment
where payment_id in (1,3);

select * from payment 
where amount in (select amount from payment
where payment_id in (1,3));

select * from payment 
where amount =any (select amount from payment
where payment_id in (1,3));


select * from payment 
where amount >any (select amount from payment
where payment_id in (1,3));

select * from payment 
where amount <any (select amount from payment
where payment_id in (1,3));

select * from payment 
where amount >all (select amount from payment
where payment_id in (1,3));

select * from payment 
where amount <all (select amount from payment
where payment_id in (1,3));


