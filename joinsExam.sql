show databases;
CREATE DATABASE 12MANYExam;
 use 12MANYExam;
 
show TABLES;

CREATE TABLE STUDENTS
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50)
)


CREATE TABLE PAPERS
(
	title VARCHAR(50) NOT NULL,
	grade DECIMAL(8,2) NOT NULL,
	Student_id INT,
	FOREIGN KEY (Student_id) REFERENCES STUDENTS(id) ON DELETE CASCADE
)

DROP TABLE PAPERS;

DROP TABLE STUDENTS;

INSERT INTO STUDENTS (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO PAPERS (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


select * from STUDENTS;
select * FROM PAPERS;

-- QUESTION 1
SELECT first_name,title,grade from STUDENTS 
INNER JOIN
PAPERS ON STUDENTS.id=PAPERS.Student_id
ORDER BY grade desc;


-- QUESTION 2

SELECT first_name,IFNULL(title,'MISSING') as title,IFNULL(grade,0) as grade from STUDENTS
LEFT JOIN 
PAPERS ON STUDENTS.id=PAPERS.Student_id;


-- QUESTION 3

SELECT first_name,IFNULL(AVG(grade),0) as Average from PAPERS 
RIGHT join 
STUDENTS on STUDENTS.id=PAPERS.Student_id
GROUP BY first_name ORDER BY Average desc;

-- QUESTION 4

SELECT first_name,IFNULL(AVG(grade),0) as Average,
CASE
	WHEN AVG(grade)>=75 THEN 'PASSING'
	ELSE 'FAILING'
END as Passing_status
from STUDENTS
LEFT JOIN 
PAPERS on STUDENTS.id=PAPERS.Student_id
GROUP BY first_name ORDER BY Average desc;






















