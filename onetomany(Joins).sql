CREATE database onetomany;
use onetomany;       
select * from customers;
SELECT * from orders; 
drop database onetomany;

show databases;


CREATE table customers
(
	id INT auto_increment primary key,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) not null,
	email varchar(100) 
);

drop table customers;

CREATE table orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE NOT NULL,
	amount DECIMAL(8,2),
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
      
      drop TABLE orders;
      
      
INSERT INTO orders (order_date,amount,customer_id)
VALUES
('2024-03-23',99.89,5);

SELECT id FROM customers where last_name='george';
SELECT * FROM orders WHERE customer_id=1;

SELECT * FROM orders WHERE customer_id=(SELECT id FROM customers where last_name='george');

       
-- Cross joins --

SELECT * FROM customers ,orders;








-- INNER JOINS --

SELECT first_name,amount  FROM customers 
JOIN orders 
ON customers.id=orders.customer_id ;

SELECT first_name,amount  FROM customers 
INNER JOIN orders 
ON customers.id=orders.customer_id ;


SELECT first_name,last_name,order_date,amount FROM customers
JOIN
orders ON orders.customer_id=customers.id; 

SELECT first_name,last_name,SUM(amount) as total FROM customers
JOIN
orders ON orders.customer_id=customers.id 
GROUP BY first_name ,last_name 
ORDER BY 
total desc  ;


show databases;

INSERT INTO customers(first_name,last_name)
values
('vishal','patsariya'),
('aditya','patsariya');










-- LEFT JOIN --

SELECT first_name,last_name,order_date,amount from customers
LEFT JOIN 
orders on orders.customer_id = customers.id;    

SELECT first_name,last_name,order_date,SUM(amount) as total from customers
LEFT JOIN 
orders on orders.customer_id = customers.id
GROUP BY first_name ,last_name ORDER BY TOTAL DESC;    
      
-- IFNULL(SUM(amount),0)      

SELECT first_name,last_name,IFNULL(order_date,'NOT PLACED'),IFNULL(SUM(amount),0) as total from customers
LEFT JOIN 
orders on orders.customer_id = customers.id
GROUP BY first_name ,last_name ORDER BY TOTAL DESC;


INSERT INTO orders(order_date,amount,customer_id)
VALUES
('2024-08-23',169.023,6);
      








-- RIGHT JOIN ---


INSERT INTO orders(order_date,amount,customer_id)
VALUES
('2024-08-23',169.023,NULL);
     
     
SELECT first_name,last_name,order_date,SUM(amount) as total from customers
RIGHT JOIN 
orders on orders.customer_id = customers.id
GROUP BY 
first_name ,last_name 
Order By total desc; 


-- ON DELETE CASCADE

DELETE FROM customers WHERE last_name='patsariya';  -- Will fail cause another entry in orders table

-- ON DELETE CASCADE (SEE TABLE CREATION FORIGN KEY)

select * from customers;


























