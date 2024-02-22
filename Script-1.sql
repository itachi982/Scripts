show databases;

use test;

show tables;

CREATE table Employees
(
	id INT not null primary key auto_increment,
	last_name varchar(50) not null,
	first_name varchar(50) not null,
	middle_name varchar(50),
	age INT not null,
	current_status varchar(100) not null default 'employed'

);

desc Employees;

INSERT into Employees(last_name,first_name,middle_name,age)
values
('patsariy2','vishal1',NULL,23);

SELECT  * from Employees;
