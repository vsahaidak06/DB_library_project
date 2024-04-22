-- find book by isbn from user input
DELIMITER $$
CREATE PROCEDURE find_book (IN p_isbn VARCHAR(17))
BEGIN
SELECT title, isbn, edition, release_year, price, author_id, genre_id
FROM book b
WHERE b.isbn = p_isbn;
END $$
DELIMITER ;


-- find release_year, which is the latest in books
DELIMITER $$
CREATE PROCEDURE latest_book (OUT latest_release_year YEAR)
BEGIN
SELECT MAX(release_year) INTO latest_release_year
FROM book b;
END $$
DELIMITER ;


-- update due date up to plus 10 days for specified user
DELIMITER $$
CREATE PROCEDURE update_due_date (IN p_customer_id INTEGER,
                                  INOUT p_due_date DATE)
BEGIN
    SET p_due_date = DATE_ADD(p_due_date, INTERVAL 10 DAY);
UPDATE loan l
SET l.due_date = p_due_date
WHERE l.customer_id = p_customer_id;
END $$
DELIMITER ;



-- procedure, that updates the price of a book specified by the user using book_id and raises the price by the amount specified by the user.
-- If the amount is higher than 16.00, then the entire action is canceled by using ROLLBACK, if not - the price is updated in the table and confirmed by the COMMIT command
-- and add to a new empty table.
CREATE TABLE updated_book_price
(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    new_price DOUBLE(10, 2) NOT NULL,
    book_id INTEGER,
    FOREIGN KEY (book_id) REFERENCES book(id)
);

DELIMITER $$

CREATE PROCEDURE updating_book_price (IN p_book_id INTEGER,
                                      IN p_add_price DOUBLE(10, 2))
BEGIN
    DECLARE current_price DOUBLE(10, 2);
    DECLARE new_price DOUBLE(10, 2);

START TRANSACTION;

SELECT b.price INTO current_price
FROM book b
WHERE b.id = p_book_id;

SET new_price = current_price + p_add_price;
        
        IF new_price > 16.00 THEN
            ROLLBACK;
ELSE
UPDATE book b
SET price = new_price
WHERE b.id = p_book_id;

INSERT INTO updated_book_price (new_price, book_id)
SELECT new_price, b.id
FROM book b
WHERE b.id = p_book_id
  AND new_price = b.price;

COMMIT;
END IF;
END $$
DELIMITER ;
