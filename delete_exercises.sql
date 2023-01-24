USE codeup_test_db;

SELECT * FROM albums WHERE release_date > 1991;

SELECT * FROM albums WHERE genre = 'Hard rock';

SELECT * FROM albums WHERE artist_name = 'Led Zeppelin';

DELETE  FROM albums WHERE release_date > 1991;

DELETE  FROM albums WHERE genre = 'Hard rock';

DELETE  FROM albums WHERE artist_name = 'Led Zeppelin';