CREATE TABLE author2book (
     author_id INTEGER,
     book_id INTEGER,
     PRIMARY KEY (author_id, book_id),
     FOREIGN KEY (author_id) REFERENCES author(id),
     FOREIGN KEY (book_id) REFERENCES book(id)
);

INSERT INTO author2book (author_id, book_id) VALUES
     (1, 18),
     (2, 17),
     (3, 16),
     (10, 15),
     (4, 14),
     (5, 14),
     (6, 13),
     (7, 12),
     (7, 11),
     (8, 10),
     (9, 9),
     (10, 8),
     (11, 8),
     (12, 7),
     (12, 6),
     (13, 5),
     (11, 15),
     (15, 4),
     (16, 3),
     (14, 2),
     (17, 1),
     (18, 1);


CREATE TABLE genre2book (
    genre_id INTEGER,
    book_id INTEGER,
    PRIMARY KEY (genre_id, book_id),
    FOREIGN KEY (genre_id) REFERENCES genre(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
);

INSERT INTO genre2book (genre_id, book_id) VALUES
       (1, 18),
       (2, 17),
       (3, 16),
       (3, 15),
       (4, 14),
       (5, 8),
       (6, 13),
       (7, 12),
       (2, 11),
       (2, 10),
       (3, 9),
       (3, 8),
       (4, 8),
       (2, 7),
       (5, 6),
       (5, 5),
       (4, 4),
       (1, 4),
       (1, 3),
       (2, 2),
       (7, 1),
       (6, 1);


CREATE TABLE book2loan (
       book_id INTEGER,
       loan_id INTEGER,
       PRIMARY KEY (book_id, loan_id),
       FOREIGN KEY (book_id) REFERENCES book(id),
       FOREIGN KEY (loan_id) REFERENCES loan(id)
);

INSERT INTO book2loan (book_id, loan_id) VALUES
     (1, 17),
     (2, 17),
     (3, 16),
     (3, 15),
     (4, 14),
     (5, 14),
     (6, 13),
     (7, 12),
     (9, 11),
     (8, 10),
     (9, 9),
     (10, 8),
     (11, 8),
     (12, 7),
     (12, 6),
     (13, 5),
     (14, 4),
     (15, 4),
     (15, 3),
     (16, 2),
     (17, 1),
     (18, 6);
