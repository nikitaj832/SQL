-- permission (privileges)

create user test identified by 'test123';

GRANT ALL PRIVILEGES ON *.* to test;
GRANT ALL PRIVILEGES ON sakila.* to test;

select * from mysql.user where user ="test";
show grants for test;

-- revoke
revoke all privileges on sakila.* from  test;
grant select(staff_id , first_name) on sakila.staff to test;
grant select on sakila.* to test;
-- alter
alter user 'test' identified by 'regex';

alter user 'test' account lock;
alter user 'test' account unlock;

grant first_name,staff_id on sakila.staff to test;
-- creating role
create role sales2;

grant select on sakila.* to sales2;
create user 'isha' identified by 'isha';

show grants for isha;
grant sales2 to isha;


set default role all to isha;

flush privileges;
show grants for "isha";


