USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED UNIQUE AUTO_INCREMENT,
    artist_name VARCHAR(50),
    album_name VARCHAR(50),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY(ID)
    );


describe albums;
