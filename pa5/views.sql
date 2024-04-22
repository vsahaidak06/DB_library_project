CREATE VIEW info_about_books AS
SELECT b.title AS book_title,
       GROUP_CONCAT(a.name ORDER BY a.name SEPARATOR ', ') AS author_name,
       CONCAT(p.name, ', ', b.release_year) AS publisher_release_year,
       l.loan_date,
       l.left_days
FROM book b

         INNER JOIN author2book ab ON b.id = ab.book_id
         INNER JOIN author a ON a.id = ab.author_id
         INNER JOIN publisher p ON p.id = b.publisher_id

         INNER JOIN (SELECT l.book_id,
                            DATEDIFF(l.due_date, CURDATE()) AS left_days,
                            DATE_FORMAT(loan_date, '%b, %d, %Y') AS loan_date
                     FROM loan l) l ON b.id = l.book_id

GROUP BY b.title, l.left_days, publisher_release_year, loan_date;


SELECT * FROM info_about_books;


CREATE INDEX book_title ON book(title);
CREATE INDEX author_name ON author(name);
CREATE INDEX publisher_name ON publisher(name);
CREATE INDEX books_release_year ON book(release_year);
CREATE INDEX books_loan_date ON loan(loan_date);
CREATE INDEX books_due_date ON loan(due_date);
