show databases;
use book_shop;
show tables;

desc books;

select * from books;

select DISTINCT author_lname from books;

select DISTINCT concat(author_fname,' ',author_lname)from books;

select DISTINCT author_fname,author_lname from books;

select DISTINCT author_fname,author_lname,released_year  from books;

SELECT book_id,title,author_lname  from books order by author_lname;

SELECT book_id,title,author_lname  from books order by author_lname desc;

select title,pages from books order by pages;

select title,pages,released_year  from books order by released_year,pages ;

select title,pages,released_year  from books order by 1 ;

select title,pages,released_year  from books order by 3 limit 5;

SELECT title,author_fname,author_lname FROM books WHERE author_fname LIKE '%da%';

SELECT title from books where title like '%:%';

select * from books where author_fname like '____';

-- wildcard

select * from books where title like '%\%%';

select author_fname from books;

select released_year from books order by released_year;

select book_id,released_year  from books order by released_year  desc limit 1,1 ;


-- logical operators
 
select * from books where book_id != 2;

select * from books where title not like '%the%';

select * from books where book_id >5;
select * from books where book_id <=5;

SELECT  * from books where book_id BETWEEN 1 and 5;


-- dates

-- select * from people where birthdate < '2005-01-01' ;

-- -- select * from people where birthtime > '09:00:00' ;

-- select * from people where hour(birthtime) > '09:00:00' ;

-- CAST

select cast('09:00:00' as time);

select cast('12-01-01' as date);

-- select * from people where birthtime between cast('12:00:00 as time) and ('17:00:00' as time);


-- IN -- -- -- -- - -- - - - - 

SELECT  title ,author_lname from books where author_lname = 'carver' or author_lname='lahiri' or author_lname ='smith';

select title ,author_lname from books where author_lname in ('carver','lahiri','smith');

select title ,author_lname from books where author_lname not in ('carver','lahiri','smith');

-- problem

select title ,released_year from books where released_year not in (2000,2002,2004,2006,2008,2010,2012,2014);






















