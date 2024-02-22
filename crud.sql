c=CREATE 
r=Read
u=UPDATE 
d=delete


-- CREATE database crud;
show databases;
use crud;

CREATE table cats
(
	cat_id INT not null auto_increment,
	name varchar(100),
	age INT,
	breed varchar(100),
	primary key(cat_id)

);

drop table cats;
desc cats;

INSERT into cats(name,age,breed)
values
('Cindy',10,'Maine Coon'),
('Dumbledore',11,'Maine Coon'),
('Egg',4,'Persian'),
('Misty',13,'Taby'),
('George Micheal',9,'Ragdoll'),
('Jackson',7,'Sphynx');

select * from cats;
select age from cats;
select name from cats;
select breed from cats;

select * from cats where age=4;

select name as N ,age as A from cats where age=4;

-- UPDATE STATEMENTS

Update cats set breed='indian' where cat_id =7;

update cats set name='jack' where name='jackson';


update cats set breed='British Shorthair' where name='Ringo';

update cats set age=12 where breed ='Maine Coon';

delete from cats where name='egg'






