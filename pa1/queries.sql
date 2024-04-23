SELECT * 
FROM book
WHERE release_year = '2019'
LIMIT 2;

SELECT * 
FROM genre
ORDER BY name DESC;

SELECT COUNT(customer_id), return_date 
FROM loan
GROUP BY return_date
HAVING COUNT(customer_id) > 3;

SELECT b.title, c.name
FROM loan l
         JOIN book b ON l.book_id = b.id
         JOIN customer c ON l.customer_id = c.id
WHERE l.return_date IS NULL AND l.due_date < CURRENT_DATE;
