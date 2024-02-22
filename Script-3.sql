show databases;

CREATE database javaproject;

use javaproject;

show tables;

CREATE Table User 
(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(20),
	password VARCHAR(50),
	first_name varchar(20),
	last_name varchar(20)

);

INSERT INTO User(username,password,first_name,last_name) 
values
('itachi','Vishal@98273078','vishal','patsariya'),
('itachi982','Vishal@123','vishal2','patsariya2'),
('itachi9','Vishal@98273078','vishal3','patsariya3'),
('itachi98','Vishal@98273078','vishal4','patsariy4'),
('gmads','Vishal@98273078','vishal5','patsariya5'),
('arum','Vishal@98273078','vishal6','patsariya6')

SELECT * from User;