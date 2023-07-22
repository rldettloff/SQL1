-- DROP Statements - DO NOT MODIFY for C assignment!
DROP TABLE IF EXISTS Book_Genre;
DROP TABLE IF EXISTS Genre;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Book_Author;

-- 1. CREATE Tables here

CREATE TABLE Author(
    author_id INT NOT NULL,
    name VARCHAR(255),
    date_of_birth DATE,

    PRIMARY KEY (author_id)
);

CREATE TABLE Genre(
    genre_id INT NOT NULL,
    name VARCHAR(255),

    PRIMARY KEY (genre_id)
);

CREATE TABLE Book(
    book_id INT NOT NULL,
    title VARCHAR(255),
    author_id INT NOT NULL,
    publication_date DATE,
    
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Book_Genre(
    book_id INT NOT NULL,
    genre_id INT NOT NULL,

    PRIMARY KEY (book_id, genre_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
    
);

CREATE TABLE Book_Author(
    book_id INT NOT NULL,
    author_id INT,

    PRIMARY KEY (book_id, author_id),

    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (author_id) REFERENCES Author(author_id)

);




-- 2. INSERT Statements - DO NOT MODIFY for C assignment!
INSERT INTO Author (author_id, name, date_of_birth) VALUES (1, 'Jane Austen', '1775-12-16');
INSERT INTO Author (author_id, name, date_of_birth) VALUES (2, 'Charles Dickens', '1812-02-07');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (1, 'Pride and Prejudice', 1, '1813-01-28');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (2, 'Oliver Twist', 2, '1838-01-01');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (3, 'Sense and Sensibility', 1, '1811-01-01');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (4, 'Great Expectations', 2, '1861-01-01');
INSERT INTO Genre (genre_id, name) VALUES (1, 'Romance');
INSERT INTO Genre (genre_id, name) VALUES (2, 'Fiction');
INSERT INTO Genre (genre_id, name) VALUES (3, 'Mystery');
INSERT INTO Book_Genre (book_id, genre_id) VALUES (1, 1);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (1, 2);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (2, 2);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (2, 3);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (3, 1);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (3, 2);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (4, 2);
INSERT INTO Book_Author (book_id, author_id) VALUES (1, 1);
INSERT INTO Book_Author (book_id, author_id) VALUES (2, 2);
INSERT INTO Book_Author (book_id, author_id) VALUES (3, 1);
INSERT INTO Book_Author (book_id, author_id) VALUES (4, 2);
INSERT INTO Book_Author (book_id, author_id) VALUES (5, 3);

-- 3. Write CRUD Queries here
-- a 
INSERT INTO Author (author_id, name, date_of_birth) VALUES (3, 'Harper Lee', '1926-04-28');
INSERT INTO Author (author_id, name, date_of_birth) VALUES (4, 'Nadia Shammas', '1994-01-01');
INSERT INTO Author (author_id, name, date_of_birth) VALUES (5, 'Sara Alfageeh', '1996-04-30');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (5, 'To Kill a Mockingbird', 3, '1960-07-11');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (6, 'Squire', 4, '2022-03-01');
INSERT INTO Book (book_id, title, author_id, publication_date) VALUES (7, 'Squire', 5, '2022-03-01');
INSERT INTO Genre (genre_id, name) VALUES (4, 'Southern Gothic Fiction');
INSERT INTO Book_Genre (book_id, genre_id) VALUES (5, 4);
INSERT INTO Book_Genre (book_id, genre_id) VALUES (5, 1);
INSERT INTO Book_Author (book_id, author_id) VALUES (6, 4);
INSERT INTO Book_Author (book_id, author_id) VALUES (7, 5);
-- b
UPDATE Book SET title = 'Pride & Prejudice' WHERE book_id = 1;
UPDATE Book SET title = 'OLIVER TWIST' WHERE title = 'Oliver Twist';
-- c
DELETE FROM Book WHERE title LIKE 'sense%';
-- d
SELECT * FROM Genre;
SELECT * FROM Author;
SELECT Book.book_id, Book.title, Author.author_id, Author.name author_name, Book.publication_date FROM Book, Author WHERE Book.author_id = Author.author_id;




-- 4. Write Search Queries here

-- a
SELECT title FROM Book
WHERE publication_date between '1810-01-01' AND '1840-01-01';

-- b
SELECT * FROM Book
JOIN Author ON Book.Author_id = Author.author_id
WHERE Author.name LIKE '%Dickens';

-- c
SELECT Book.title, Genre.name From Book
JOIN Book_Genre ON Book.book_id = Book_Genre.book_id
JOIN Genre ON Book_Genre.genre_id = Genre.genre_id 
WHERE Book.title = 'OLIVER TWIST';

SELECT Book.title FROM Book
JOIN Book_Genre ON Book.book_id = Book_Genre.book_id
JOIN Genre ON Book_Genre.genre_id = Genre.genre_id
WHERE Genre.name = 'Fiction';
