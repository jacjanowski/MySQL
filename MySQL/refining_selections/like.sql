# SELECT title,author_fname FROM books WHERE author_fname LIKE 'da%';

# SELECT title FROM books WHERE title LIKE '%the%';

# SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___';

SELECT title FROM books WHERE title LIKE '%\_%';