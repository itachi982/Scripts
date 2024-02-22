show databases;
use test;
CREATE table cats
(
	name varchar(50),
	age INT,
	Weight INT
);
show tables;

INSERT INTO cats(name,age,weight) 
values 
('pussy',7,12)
,('maggie',2,5)
,('misha',5,6)
,('sed',7,8);

SELECT * from cats;

DROP table people;

CREATE table people
(
	first_name varchar(20),
	last_name varchar(20),
	age INT
);

INSERT into people (first_name,last_name,age)
values
('Tina','belcher',13);

INSERT into people(first_name,last_name,age)
values
('Bob','belcher',42);

Insert into people(first_name,last_name)
values
('Linda','Belcher'),
('Phillip','Frond'),
('Calvin','Fischoeder');

SELECT * from people;
desc people

CREATE table people2
(
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	age INT not null
);

desc people2


Insert into people2(first_name,last_name,age)
values
('Linda','Belcher',23),
('Phillip','Frond',56),
('Calvin','Fischoeder',67);

select * from people2;

CREATE table people3
(
	first_name varchar(20)  default 'MYSTERY',
	last_name varchar(20)  default 'MYSTERY',
	age INT  default 0
);
drop table people3;
desc people3;

INSERT into people3 (age)
values
(5);

select * from people3;

CREATE table people4
(
	first_name varchar(50),
	last_name varchar (50),
	age INT,
	people_id INT not null primary key auto_increment

)


drop table people4;

Insert into people4(first_name,last_name,age,people_id)
values
('vishal','patsariya',23,1);

Insert into people4(first_name,last_name,age)
values
('vishal','patsariya',23);

select * from people4;
desc people4;

















