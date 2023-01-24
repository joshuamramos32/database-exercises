USE codeup_test_db;

    truncate albums;

INSERT INTO albums (artist_name, album_name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 51.2, 'Pop, post-disco, funk, rock'),
    ('AC/DC', 'Back in Black', 1980, 30.1, 'Hard rock'),
    ('Eagles', 'Their Greatest hits(1971 - 1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
    ('Eagles', 'Hotel California', 1976, 31.8, 'Soft rock'),
    ('Shania Twain', 'Come On Over', 1997, 30.4, 'Country, pop'),
    ('Led Zeppelin', 'Led Zeppelin IV', 1971, 30.4, 'Hard rock,heavy metal,folk rock');
