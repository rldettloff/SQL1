-- DROPPING EXISTING TABLES!
DROP TABLE IF EXISTS rentals;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS customers;

-- table creation
CREATE TABLE genres (
  genre_id INT NOT NULL,
  genre_name VARCHAR(255),
  PRIMARY KEY (genre_id)
);

CREATE TABLE movies (
  movie_id INT NOT NULL,
  movie_title VARCHAR(255),
  genre_id INT NOT NULL,
  PRIMARY KEY (movie_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE customers (
  customer_id INT NOT NULL,
  customer_name VARCHAR(255),
  date_of_birth DATE,W
  customer_address VARCHAR(255),
  PRIMARY KEY (customer_id)
);

CREATE TABLE rentals (
  rental_id INT NOT NULL,
  customer_id INT NOT NULL,
  date_rented DATE,
  date_returned DATE,
  PRIMARY KEY (rental_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- insert statements
INSERT INTO genres VALUES (1, 'Super Hero');
INSERT INTO genres VALUES (2, 'Horror');
INSERT INTO genres VALUES (3, 'Romance');

INSERT INTO movies VALUES (1, 'Avengers', 1);
INSERT INTO movies VALUES (2, 'Conjuring', 2);
INSERT INTO movies VALUES (3, 'Titanic', 3);

INSERT INTO customers VALUES (1, 'Ryder Dettloff', '2001-04-25', '1234 Apple Way');
INSERT INTO customers VALUES (2, 'Keller Flint', '2000-01-01', '2222 Stew Dr');
INSERT INTO customers VALUES (3, 'John Snow', '0283-06-27', '202 The Castle dr');
INSERT INTO customers VALUES (4, 'guy sensei', '1990-04-04', '4964 Leafy Rd');

INSERT INTO rentals VALUES (1, 1, '2023-04-30', NULL);
INSERT INTO rentals VALUES (2, 2, '2023-05-04', '2023-05-06');

-- Search Querie
-- use 'AND' between queries (minus the extra select statement) to view all movies, genres, and availabilities

SELECT * FROM movies WHERE movie_title = 'Avengers';

SELECT * FROM movies WHERE genre_id = 1;

SELECT * FROM rentals WHERE date_returned IS NULL;