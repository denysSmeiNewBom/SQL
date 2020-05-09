DROP DATABASE IF EXISTS library;
DROP DATABASE IF EXISTS Yniver;
CREATE DATABASE library;

USE LIBRARY;

CREATE TABLE book(
	id INT PRIMARY KEY auto_increment,
	name CHAR(40),
    discription TEXT,
    price DOUBLE,
    isbn CHAR(20)
);

CREATE TABLE author(
	id INT PRIMARY KEY auto_increment,
	name char(40),
    sername char(40)
);

create table book_athor(
	book_id int not null unique,
    author_id_ int not null
);

ALTER table book_athor add foreign key(book_id) references book(id);
ALTER table book_athor add foreign key(author_id_) references author(id);

CREATE TABLE category(
	id INT PRIMARY KEY auto_increment,
    name_of_category CHAR(40),
	age_of_category Text(20)
);

create table book_category(
	book_id Int not null,
    category_id int not null
);

Alter table book_category add foreign key(book_id) references book(id);
alter table book_category add foreign key(category_id) references category(id);

insert into book(name,discription,price,isbn) values
('Potter', 'A lot of chapters', 250.45, 'HZ1'),
('Spiderman', 'About hero' , 150.32, 'HZ2'),
('Batman', 'About bad hero' , 210.45, 'HZ3');

insert into category(name_of_category,age_of_category) values
('Comix','From 11 and older'),
('Fantasy','From 8 and older'),
('Horrir', 'From 16 and older');

insert into book_category(book_id,category_id) values
(1,2),
(2,1),
(3,2);

#select name, name_of_category, age_of_category, discription, price, isbn from book inner join (book_category inner join category on book_category.category_id = category.id) on book.id = book_category.book_id;


create database Yniver;

use Yniver;

create table university(
	id int primary key auto_increment,
    name Char (20) not null,
    dicription text
);

create table prifessors(
	id int primary key auto_increment,
    name Char(20),
    sername char (20),
	degree char(20),
    university_id int not null
);

ALTER table prifessors add foreign key(university_id) references university(id);

create table student(
	id int primary key auto_increment,
    student_name Char(20),
    student_sername char (20),
	student_instutyt char(4),
    student_city_id int not null
);

insert into student(student_name, student_sername, student_instutyt, student_city_id) values
("Tom", 'Petrenko', "IMFN", 2),
("Igor", 'Washington', "IBID", 1);

create table city(
	id int primary key auto_increment,
    city_name char(40)
);

insert into city(city_name) values
("Lviv"),
("Kyiv");

create table city_student(
	city_id INT NOT NULL,
    student_id INT NOT NULL 
);

insert into city_student values
(1,2),
(2,2),
(1,1);

ALTER table city_student add foreign key(city_id) references city(id);
ALTER table city_student add foreign key(student_id) references student(id);

select student_name, student_sername, student_instutyt, city_name from student inner join(city_student inner join city on city_student.city_id = city.id) on student.id = city_student.student_id ;

CREATE TABLE student_univer (
    university_id INT NOT NULL,
    student_id INT NOT NULL 
);

ALTER table student_univer add foreign key(university_id) references university(id);
ALTER table student_univer add foreign key(student_id) references student(id);

create table city_univer(
    city_id INT NOT NULL,
    univer INT NOT NULL 
);

ALTER table city_univer add foreign key(city_id) references city(id);
ALTER table city_univer add foreign key(univer) references university(id);

