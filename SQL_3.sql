DROP DATABASE IF EXISTS library;
CREATE DATABASE library;

USE library;

CREATE TABLE book (
	id int not null primary key auto_increment,
	name_of_book VARCHAR(120)NOT NULL,
    description TEXT,
    data_of_publ DATE DEFAULT '2018-01-01',
    author_name CHAR(45)NOT NULL,
    author_surname CHAR (45) NOT NULL,
    category CHAR(30) NOT NULL,
    isbn CHAR(20) NOT NULL UNIQUE,
    nuber_of_pages SMALLINT UNSIGNED NOT NULL,
    email CHAR (100) NOT NULL UNIQUE,
	age_of_Athor TINYINT NOT NULL,
    birthday_of_athor DATE NOT NULL,
	awards CHAR(120) default null ,
    price DOUBLE NOT NULL
);

insert into book (name_of_book,description,data_of_publ,author_name,author_surname,
category,isbn,nuber_of_pages,email,
age_of_Athor,birthday_of_athor,Awards,price) values

('book10','description10','1910-01-01','name10','sername10','сategory10',
'HZ10', 152,'email10@gmai.com', 10, '2010-12-12', 'Oscar10' , 1100),
('book11','description11','1911-01-01','name11','sername11','сategory11',
'HZ11', 2001,'email11@gmai.com', 31, '2011-12-12', 'Oscar11' , 1200),
('book12','description12','1912-01-01','name12','sername12','комедія',
'HZ12', 12,'email12@gmai.com', 12, '2012-12-12', 'Oscar12' , 1300),
('dbook13','description13','1913-01-01','name13','sername13','драма',
'HZ13', 13,'email13@gmai.com', 13, '2013-12-12', 'Oscar13' , 100),
('book14','description14','1914-01-01','name14','sername14','сategory14',
'HZ14', 14,'email14@gmai.com', 14, '2014-12-12', 'Oscar14' , 100.3425),
('book15','description15','1915-01-01','name15','sername15','сategory15',
'HZ15', 15,'email15@gmai.com', 15, '2015-12-12', 'Oscar15' , 100),
('book16','description16','1916-01-01','name16','sername16','сategory16',
'HZ16', 16,'email16@gmai.com', 16, '2016-12-12', 'Oscar16' , 200.4356),
('book17','description17','1917-01-01','name17','sername17','Adventure',
'HZ17', 17,'email17@gmai.com', 17, '2017-12-12', 'Oscar17' , 300),
('book18','description18','1918-01-01','name18','sername18','сategory18',
'HZ18', 18,'email18@gmai.com', 18, '2018-12-12', 'Oscar18' , 400),
('book19','description19','1919-01-01','name19','sername19','сategory19',
'HZ19', 19,'email19@gmai.com', 19, '2019-12-12', 'Oscar19' , 500),
('book20','description20','1920-01-01','name20','sername20','ategory20',
'HZ20', 20,'email20@gmai.com', 20, '2020-12-12', 'Oscar20' , 600),
('book21','description21','1921-01-01','name21','sername21','Adventure',
'HZ21', 21,'email21@gmai.com', 21, '2021-12-12', 'Oscar21' , 600),
('abook22','description22','1922-01-01','name22','sername22','сategory22',
'HZ22', 22,'email22@gmai.com', 22, '2022-12-12', 'Oscar22' , 700),
('book23','description23','1923-01-01','name23','sername23','сategory23',
'HZ23',23,'email23@gmai.com', 23, '2023-12-12', 'Oscar23' , 800),
('book24','description24','1924-01-01','name24','sername24','сategory24',
'HZ24', 24,'email24@gmai.com', 24, '2024-12-12', 'Oscar24' , 800),
('book25','description25','1925-01-01','name25','sername25','сategory25',
'HZ25', 25,'email25@gmai.com', 25, '2025-12-12', 'Oscar25' , 100),
('book26','description26','1926-01-01','name26','sername26','сategory26',
'HZ26', '26','email26@gmai.com', 26, '2026-12-12', 'Oscar26' , 100),
('book27','description27','1927-01-01','name27','sername27','Adventure',
'HZ27', '27','email27@gmai.com', 27, '2027-12-12', 'Oscar27' , 10),
('book28','description28','1928-01-01','name28','sername28','сategory28',
'HZ28', '28','aemail28@gmai.com', 28, '2028-12-12', 'Oscar28' , 100),
('book29','description29','1929-01-01','name29','sername29','сategory29',
'HZ29', '29','email29@gmai.com', 29, '2029-12-12', 'Oscar29' , 100),
('book30','description30','1930-01-01','name30','sername30','сategory30',
'HZ30', '30','email30@gmai.com', 30, '2030-12-12', 'Oscar30' , 100),
('book31','description31','1931-01-01','name31','sername31','сategory31',
'HZ31', '31','email31@gmai.com', 31, '2031-12-12', 'Oscar31' , 100),
('book32','description32','2018-01-01','name32','sername32','сategory32',
'HZ32', '32','bemail32@gmai.com', 32, '2032-12-12', 'Oscar32' , 100),
('book33','description33','2019-01-01','name33','sername33','сategory33',
'HZ33', '33','email33@gmai.com', 33, '2033-12-12', 'Oscar33' , 100);
insert into book (name_of_book,description,data_of_publ,author_name,author_surname,
category,isbn,nuber_of_pages,email,
age_of_Athor,birthday_of_athor,price) values
('book34','description34','1934-01-01','name34','sername34','сategory34',
'HZ34', '34','email34@gmai.com', 34, '2034-12-12' , 100);

select * from book;
update book set author_name = 'Tom' where id = 10;
select el.id from book el where el.author_name = 'Tom';
update book set author_name = 'Emma' where id = 14;
select el.id from book el where el.author_name = 'Emma';
select count(awards) from book;
select el.nuber_of_pages from book el where nuber_of_pages < (select avg(nuber_of_pages) from book) limit 5; 
select avg(price) from book;
select sum(price) from book el where el.category = 'Adventure';
select min(price)  from book;
select * from book where price = (select min(price)  from book);
select * from book where price like '%.____';
select el.* from ((select * from book limit 5, 5) UNION (select * from book limit 10, 6)) el order by el.data_of_publ ASC;
select * from book where author_name like 'Emma';
select * from book where birthday_of_athor like '2010-12-12';
select * from book where email like 'aemail28@gmai.com';
select * from book where price between 1.50 and 120.2;
delete from book where id = 16 and author_name = 'name25' and isbn = 'HZ25';
select * from book;