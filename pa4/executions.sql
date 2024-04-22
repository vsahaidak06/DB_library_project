-- output the book with specified isbn
CALL find_book ('978-1-23456-789-3');

-- output the newest book (latest published)
CALL latest_book (@the_newest_book);
SELECT @the_newest_book;

-- update the specified due_date for specified user
SET @new_due_date = '2024-02-03';
CALL update_due_date (10, @new_due_date);
SELECT @new_due_date;

-- update price of specified book and add it into new table, if new price is not higher than 16
CALL updating_book_price (3, 10); -- rollback has worked
CALL updating_book_price (3, 3); -- commit has worked (updated)
