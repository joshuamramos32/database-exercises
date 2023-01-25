USE codeup_test_db;

SELECT * FROM albums WHERE release_date = 1990;

SELECT * FROM albums WHERE release_date > 1990;

SELECT * FROM albums WHERE genre LIKE 'rock';-- case insensitive equals
SELECT * FROM albums WHERE genre LIKE '%rock';-- must end with
SELECT * FROM albums WHERE genre LIKE 'rock%';-- must start with
SELECT * FROM albums WHERE genre LIKE '%rock%';-- must contain

SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;
SELECT * FROM albums WHERE release_date NOT BETWEEN 1990 and 1999;

SELECT * FROM albums WHERE artist_name IN('Pink Floyd', 'Metallica', 'AC/DC');

SELECT * FROM albums WHERE artist_name = 'AC/DC' AND release_date > 1970;
SELECT * FROM albums WHERE artist_name = 'AC/DC' OR release_date > 1970;
