use book_shop;

select * from books;

 SELECT title ,released_year,
 CASE
	 when released_year >=2000 then 'modern lit'
	 when released_year <=2000 then 'viashl'	  	
 END as genre
 from books
 
 select title,pages,
 case
 	when pages >=300 then 'big book'
 	else 'small book'
 end as size
 from books;
 