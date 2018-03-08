CREATE TABLE IF NOT EXISTS book
(
  id SERIAL PRIMARY KEY,
  book_title varchar(50) NOT NULL,
  book_author varchar(50) NOT NULL,
  book_price integer NOT NULL
)
