USE codeup_test_db;

SELECT artist_name AS 'Albums by Pink Floyd' FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE artist_name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS 'Genre for the Bee Gees' FROM albums WHERE artist_name = 'Saturday Night Fever';

SELECT artist_name AS 'Albums released in the 90s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SElECT artist_name AS 'Less than 20Mil Sales' FROM albums WHERE sales < 20.0;

SELECT artist_name AS 'Albums with the genre of Rock' FROM albums WHERE genre = 'Rock';
