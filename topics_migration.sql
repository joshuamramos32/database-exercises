USE codeup_test_db;
DROP TABLE IF EXISTS topics;
CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
                             ('Space and Time'),
                             ('Humor'),
                             ('Office Life'),
                             ('Hitchiker''s Guide to the Galaxy');
