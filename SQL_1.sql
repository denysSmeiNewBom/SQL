DROP DATABASE IF EXISTS library;
CREATE DATABASE library;
SELECT database();
USE library;
CREATE TABLE book (
	name_of_book VARCHAR(120)NOT NULL,
    description VARCHAR(2000) DEFAULT 'No Description',
    data_of_publ DATE DEFAULT '2018-01-01',
    ath VARCHAR(60),
    cat VARCHAR(30)
);
SELECT * FROM book;
INSERT INTO book value('Harry Potter','A lot of parts', '2000-01-01', 'J.K. Rolling','Fantasy');
INSERT INTO book value('Robinson Crusoe','First interesting book','2001-01-01','Daniel Defoe','Adventure');
INSERT INTO book value('Thinking in JAVA','great creature','2004-11-05','Bruce Eckel','Science');
INSERT INTO book value('Tom Sawyer','Forgotten','2000-01-01','Hermine Huntgenburg','Adventure');
INSERT INTO book value('Alice In Wonderland','Not read','2000-01-01','Lewis Kroll','Adventure, Fantasy');
INSERT INTO book value('Sherlock Holmes','Intriguing','2000-01-01','Arthur Conan Doyle','Detective');
INSERT INTO book value('A brief history of time','Incredibly interesting','2000-01-01','Stephen Hawking','Science');
INSERT INTO book value('Toreadors from Vasyukivka','Top','2000-01-01','Vsevolod Nestayko','Adventure');
INSERT INTO book value('Elements of the theory of function of a complex variable','','2000-01-01','Wuhanskaya','Science');
INSERT INTO book value('Mathematical Analysis Part 3','The name says it all','1979-01-01','Strochik Nikolay Nikolaevich','Science');
select * from book;