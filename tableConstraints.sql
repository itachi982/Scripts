create database constraints;
show databases;
use constraints;


create table companies
(
	supplier_id INT auto_increment,
	name varchar(50) not null,
	phone varchar(11) not null unique,
	age int check(age>18),
	address varchar(255) not null,
	primary key(supplier_id)
);

create table palindrome
(
	word varchar(50) check(reverse(word)=word)
);

insert INTO palindrome (word)
values
('123321');


drop table companies;

CREATE table companies
(
	supplier_id INT auto_increment,
	name varchar(50) not null,
	phone varchar(11) not null unique,
	age int,
	constraint age_over_18 check(age>=18),
	address varchar(255) not null,
	primary key(supplier_id)
);

desc companies ;

alter table companies 
add column city varchar(50);

alter table companies 
add column note varchar(50) check(reverse(note)=note);

alter table companies 
drop column note;

-- RENAMING Tables & COLUMNS 

rename table companies to sup;

alter table sup rename to companies;

alter table companies 
rename column name to company_name;

alter table companies 
modify city varchar(100) not null default 'unknown';

alter table companies
modify age int not null;

desc companies ;

-- add constrainst and droping constraints

alter table companies 
drop constraint 'name';







create table companies1
(
	
	name varchar(50) not null,
	address varchar(255) not null,
	constraint name_address unique(name,address) 
	
);

desc companies1;
drop table companies1;

insert into companies1 (name,address)
values
('vishal','patsariya bhavan'),
('visahl','patsariya bhavan1');
















