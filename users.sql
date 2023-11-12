CREATE DATABASE book_my_show;

use book_my_show;

CREATE TABLE users(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    mobile varchar(13),
    email varchar(50),
    first_name varchar(20),
    middle_name varchar(20),
    last_name varchar(20),
    primary key (id)
);
