show databases;
use sakila;
show tables;
-- select some data

describe actor;
desc actor;

-- dql statement
select * from actor;

select actor_id ,first_name 
from
 actor;
 -- code can be in multiple lines also
 -- codes are not case sensitive only data is case sensitive
 
 desc actor_info;
 
 -- projection and selection
 -- selecting a columns is projection and selection is selection on rows
 
 select * from actor_info;
 
 select actor_id from actor_info;
 
 select actor_ID , ACTOR_ID*10 from actor_INFO;
 
 select * from actor_info;
 
 -- where clause   , - for selecting a row
 
 select * from actor_info where actor_id=2;
 
select actor_id, first_name
 from actor_info where actor_id=2;
 
 select actor_id, first_name
 from actor_info where actor_id>2;
 
 select  first_name
 from actor_info where actor_id>2;
 
 select * from actor_info where first_name = "ED";
 
use sakila;
 -- DQL SELECT STATEMENT
 select database();
 
 show tables;
 show columns from actor;
 desc actor;
 
 
 select * from actor;
 
 select * from sakila.actor;
 
 select name from sakila.language;
 
 select * from language where name='English';
 
 select * from language where language_id <> 3;
 
select * from language where name > 'I';
-- data is not case sensitive in mysql

select first_name from actor where first_name > 'ed';


select * from film;

select * from film where title like '%dinosaur%';

select * from film where description like '%drama%';
select * from film;

select  title, description, release_year from film where title like 'a%les';

select * from film where title like 'dinosaur%';



select * from film where title like 'a%';

select * from film where title like 'a%r';

select * from film where title like '%dinosaur';

desc film;

select * from film where title like 'a_%';

select * from film where title like 'a_e%';

-- here % denotes zero or more character and _ denotes only one values

select * from film;

-- find data which has minumum 4 char. and last 4 char. must be t
-- find whoes sec. char. is F and fourth ch. is I and ends with EGG
-- which has minimum 5 char. and third char. must be a

select * from film;
select title, film_id , release_year , description from film where title like '_c%';
select title, film_id , release_year , description from film where title like 'a%an';
select title, film_id , release_year , description from film where title like '%t___';
select title, film_id , release_year , description from film where title like '_f_i%egg';
select title, film_id , release_year , description from film where title like '__a__%';

use sakila;

-- logical and or not
select * from actor;

-- and logical

select * from actor where first_name = 'NICK' and actor_id=2;

select * from actor where first_name = 'NICK' and actor_id=211;

-- or condition

select * from actor where first_name = 'nick' or actor_id =23;

show tables;
select * from actor_info;

select * from actor_info where film_info like 'Animation%'  and first_name = 'GOLDIE';

select * from actor_info where first_name like 'GOLDIE';

SELECT * from actor_info where film_info like 'animation%' and first_name = 'goldie' or first_name = 'nick';


select category, rating, title from film_list where category like 'sci-fi' and rating like 'pg';

select category, rating, title from film_list where category like 'sci-fi' or category like 'family' and  rating like 'pg';
-- first and condition is fulfiled and than or condition

select category, rating, title from film_list where( category like 'sci-fi' or category like 'family') and  rating like 'pg';
-- if we use brackets than the priority will be given to the value which is in brackets**

select 2+2*3;
select (2+2)*3;

select * from actor
where actor_id between 2 and 5;

select * from actor where actor_id>=2 and actor_id<=5;

select * from actor
where actor_id between 5 and 2;
-- first value of range should be smaller 

select * from actor
where first_name between 'b' and 'd';

select * from actor
where first_name between 'd' and 'b';

select * from actor where first_name > 'd';

-- in operator

select * from actor where actor_id in (1,5,7);

-- not operator  , <> , !=

select * from actor;
use sakila;
show tables;
select * from actor;
select * from actor where actor_id between 2 and 7 and first_name = 'nick' or first_name = 'ed';

select * from actor where last_name != '%a%' or last_name != '%e%';

use sakila;
select fid, title from film_list where fid < 7 and not (fid =4 or fid = 6);

-- while using like operator we do not use % sign in starting 

select * from film_list;

-- order by clause => sort ascendinng or descending

select * from film_list order by category;
-- it is for ascending order and it is by default

-- for descending order\
select * from film_list order by category desc;

desc film_list;
select * from film_list order by 4;

select fid , title from film_list order by 2;

select fid , title, category from film_list order by 3;

select fid , title, category from film_list order by price;

select * from address order by district;

select district, address, address_id from address order by district;

select district, address, address_id from address order by district, address_id;


select district, address, address_id from address order by district, address_id desc;


select district, address, address_id from address order by district desc, address_id;

select * from address limit 3;

--  if we want to sort and limit then first we have to sort then we can apply limit and not vice-a-versa

select * from address limit 3,2;
-- here 3 is ofset means we have to skip 3 lines first and then we want 2 rows

select * from address limit 3 offset 2;

-- table => dual dummy table => to check logics , kind of practice table 

use sakila;

desc actor;

select 1+2 from dual;


 select now() from dual;
 -- pseduo column => column=> specific meaning
 -- already available  with your system
 
 select now();
 
 -- concat, concat_ws, substr
 
 
 select length('最近怎么样');
 
 select char_length('最近怎么样');
 
 select concat('hey', '-', 'y') ;
 
 select concat_ws('$', 'hey', 'hello', 'hi') from dual;
 
 select upper('hi');
 
 -- substr
 select substr('hello', 2);
 
 select substr('hello', -2);
 
  select substr('hello', 2 , 3);
  
  select substr( substr('hello', 2 , 3), 2) ;
  
  -- instr
  select instr('hello', 'e');
  
  select instr('hello', 'ez');

-- locate
select locate('a', 'rajasthan' ); 

select locate('a', 'rajasthan' , 3);

-- ltrim 

select ltrim('   ---xyz');

-- rtrim
select rtrim('xyz   ');

-- trim

select trim('     xyz     '); 

select trim(leading ' ' from '     xyz     ');

select trim(trailing " " from "     xyz   ");

select trim(both "z" from "zzz     xyz"); 
-- will remove z from starting and end but not in between

-- lpad , rpad

select lpad('helloo12', 6 , '#');

select rpad('hell', 6 , '#');

-- replace

select replace('tushars', 'a', '#');

select replace('tushars', 'as', '#');

select now();

show databases;

use sakila;

select * from language;

select count(*) from language;

-- dml

-- with pandas create a datafram with mysql

-- insert statement insert in to table values (val, val2, val3)

insert into language values (10, 'portuese1', now());

insert into language values (13, 'portuese12', now());







