-- create database book_shop;
show databases;
use book_shop;

CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
  

desc books;
select * from books;

select Concat (author_fname,' ',author_lname) as full_name from books;
select Concat_WS ('-',title,author_fname,author_lname) as full_name from books;


SELECT SUBSTRING('hello world',-1,3); 

SELECT SUBSTRING(title,1,15) from books ;

SELECT substr(title,1,15) from books;

select concat(substr(author_fname,1,1) ,'.',author_lname) as initial from books;

select concat(SUBSTR(title,1,10),'....') as title from books;

select REPLACE('visahl','a','@#$%');

select replace(title,' ','-') from books;

select reverse(title) from books;
SELECT CHAR_LENGTH(title),title from books; 

SELECT UPPER(title) from books;

select LOWER(title) from books;

SELECT  Insert('vishal',3,0,'insert');

SELECT  left('omghahalol',3);
SELECT  right('omghahalol',3);


select REPEAT ('mysql',100);

SELECT TRIM('   visahl  ');






















