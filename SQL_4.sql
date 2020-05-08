DROP DATABASE IF EXISTS library;
DROP DATABASE IF EXISTS Yniver;
CREATE DATABASE library;

USE LIBRARY;

CREATE TABLE book(
	id INT PRIMARY KEY auto_increment,
	name CHAR,
    discription TEXT,
    price DOUBLE,
    isbn CHAR
);

CREATE TABLE author(
	id INT PRIMARY KEY auto_increment,
	name char,
    sername char
);

create table book_athor(
	book_id int not null unique,
    author_id_ int not null
);

ALTER table book_athor add foreign key(book_id) references book(id);
ALTER table book_athor add foreign key(author_id_) references author(id);

CREATE TABLE category(
	id INT PRIMARY KEY auto_increment,
    name_of_category CHAR
);

create table book_category(
	book_id Int not null,
    category_id int not null unique
);

Alter table book_category add foreign key(book_id) references book(id);
alter table book_category add foreign key(category_id) references category(id);

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
    name Char(20),
    sername char (20),
	instutyt char(4),
    city_id int not null
);

CREATE TABLE student_univer (
    university_id INT NOT NULL,
    student_id INT NOT NULL UNIQUE
);

ALTER table student_univer add foreign key(university_id) references university(id);
ALTER table student_univer add foreign key(student_id) references student(id);

create table city(
	id int primary key auto_increment,
    name char
);

create table city_student(
	city_id INT NOT NULL,
    student_id INT NOT NULL UNIQUE
);

ALTER table city_student add foreign key(city_id) references city(id);
ALTER table city_student add foreign key(student_id) references student(id);

create table city_univer(
    city_id INT NOT NULL,
    univer INT NOT NULL UNIQUE
);

ALTER table city_univer add foreign key(city_id) references city(id);
ALTER table city_univer add foreign key(univer) references university(id);

