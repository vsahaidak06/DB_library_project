-- select books, which have the same edition as books, which release year is 1967
SELECT title
FROM book
WHERE edition = (SELECT edition
                 FROM book
                 WHERE release_year = 1967);

-- select all info about books, which was written by british authors
SELECT title
FROM book
WHERE author_id IN (SELECT id
                    FROM author
                    WHERE nationality = 'British');

-- select all info about books, if their genres not thriller or mystery
SELECT isbn
FROM book
WHERE genre_id NOT IN (SELECT id
                       FROM genre
                       WHERE name = 'Thriller' OR name = 'Mystery');

-- select all genres, if poetry genre is exists
SELECT name
FROM genre
WHERE EXISTS (SELECT 1
              FROM genre
              WHERE name = 'Poetry');

-- select author`s name, if Polish nationality don`t exists
SELECT name
FROM author
WHERE NOT EXISTS (SELECT 1
                  FROM author
                  WHERE nationality = 'Polish');

-- select author by book id
SELECT name
FROM author
WHERE id = (SELECT author_id
            FROM book
            WHERE book.id = 3);

-- select books, which had borrowed by exact loan date
SELECT title
FROM book
WHERE id IN (SELECT book_id
             FROM loan
             WHERE loan_date < '2024-01-10'
             AND book.id = loan.book_id);

-- select publisher, where average book`s price is more than 10
SELECT p.name
FROM publisher p
WHERE p.id NOT IN (SELECT b.publisher_id
                   FROM book b
                   WHERE p.id = b.publisher_id
                   GROUP BY b.publisher_id
                   HAVING AVG(price) < 10);

-- select book`s title, if it was borrowed at least once
SELECT b.title
FROM book b
WHERE EXISTS (SELECT 1
              FROM book2loan bl
              WHERE bl.book_id = b.id);

-- select genre`s name, if it does`nt exist in any book
SELECT g.name
FROM genre g
WHERE NOT EXISTS (SELECT 1
                  FROM genre2book gb
                  WHERE gb.genre_id = g.id);




-- update author`s nationality, whose birth date is the earliest
UPDATE author
SET nationality = 'Ukrainian'
WHERE birth_date = (SELECT birth_date
                    FROM (SELECT MIN(birth_date)
                          FROM author) AS new_author);

-- update customer`s address, if their phone number starts from '380'
UPDATE customer
SET address = 'Ukraine'
WHERE phone IN (SELECT phone
                FROM (SELECT phone
                      FROM customer
                      WHERE phone LIKE'380%') AS new_customer);

-- update return date into NULL, if due date less than it was mentioned
UPDATE loan
SET return_date = NULL
WHERE due_date NOT IN (SELECT due_date
                       FROM (SELECT due_date
                             FROM loan
                             WHERE due_date > '2024-02-10') AS new_loan);

-- update return date for one dya later, if due date is equal to mentioned date
UPDATE loan
SET return_date = '2024-02-11'
WHERE EXISTS (SELECT 1
              FROM (SELECT 1
                    FROM loan
                    WHERE due_date = '2024-02-10') AS new_loan1);

-- make price less by 1, if there is no book, which was released after 2019 year
UPDATE book
SET price = price - 1
WHERE NOT EXISTS (SELECT 1
                  FROM (SELECT 1
                        FROM book
                        WHERE release_year > 2019) AS new_book);




-- delete row from author`s table, where author`s birth date is the earliest
DELETE
FROM author
WHERE birth_date = (SELECT birth_date
                    FROM (SELECT MIN(birth_date)
                          FROM author) AS delete_author);

-- delete row from author`s table, where author`s nationality is russian
DELETE
FROM author
WHERE nationality IN (SELECT nationality
                      FROM (SELECT nationality
                            FROM author
                            WHERE nationality = 'Russian') AS delete_author);

-- delete row from publisher`s table, if their address is not in New York
DELETE
FROM publisher
WHERE address NOT IN (SELECT address
                      FROM (SELECT address
                            FROM publisher
                            WHERE address LIKE '%NY%') AS delete_publisher);

-- delete all from publisher`s table, if there is at least one phone number, which starts from '7'
DELETE
FROM publisher
WHERE EXISTS (SELECT 1
              FROM (SELECT 1
                    FROM publisher
                    WHERE phone LIKE '7%') AS delete_publisher);

-- delete all from customer`s table, if there is no info in loan table
DELETE
FROM customer
WHERE NOT EXISTS (SELECT 1
                  FROM (SELECT 1
                        FROM loan) AS delete_customer);

-- delete books, which had`nt returned by due date 
DELETE
FROM book b
WHERE b.id IN (SELECT l.book_id
               FROM loan l
               WHERE l.book_id = b.id
                 AND return_date IS NULL);

-- delete authors, who does`nt have any book in book`s table
DELETE
FROM author a
WHERE a.id NOT IN (SELECT b.author_id
                   FROM book b
                   WHERE b.author_id = a.id);

-- delete genres, if book`s price with this genre less then 8 
DELETE
FROM genre g
WHERE EXISTS (SELECT 1
              FROM book b
              WHERE g.id = b.genre_id
                AND b.price < 8);

-- delete genres, if it does`nt exists in any book
DELETE
FROM genre g
WHERE NOT EXISTS (SELECT 1
                  FROM book b
                  WHERE b.genre_id = g.id);




-- union author`s and publisher`s tables, if they are locate in England
SELECT name, nationality
FROM author
WHERE nationality = 'British'
UNION
SELECT name, address
FROM publisher
WHERE address LIKE '%GBR%';

-- union all from author`s and customer`s tables by their name and native country
SELECT name, nationality
FROM author
UNION ALL
SELECT name, address
FROM customer
ORDER BY nationality;

-- select address from publisher`s and customer`s tables, if it is common
SELECT address
FROM publisher
INTERSECT
SELECT address
FROM customer;

-- select all names from author`s and customer`s tables, except common
SELECT name
FROM author
EXCEPT
SELECT name
FROM customer
ORDER BY name;
