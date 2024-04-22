-- books, which have more than one genre

SELECT b.id, b.title, COUNT(gb.genre_id) AS amount_genres
FROM book b
         INNER JOIN genre2book gb ON b.id = gb.book_id
GROUP BY b.id, b.title
HAVING COUNT(gb.genre_id) > 1
ORDER BY amount_genres DESC, b.title;


-- authors, who works together the most times

SELECT b.id, b.author_id,
       GROUP_CONCAT(a.name ORDER BY a.name SEPARATOR ', ') AS author_name,
       b.title AS book_title
FROM author a
         INNER JOIN author2book ab ON a.id = ab.author_id
         INNER JOIN book b ON b.id = ab.book_id
GROUP BY b.id
HAVING COUNT(b.author_id) > 1
ORDER BY author_name;
