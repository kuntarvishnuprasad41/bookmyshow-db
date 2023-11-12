# CREATE DATABASE book_my_show;

use book_my_show;

CREATE TABLE users(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    mobile varchar(13),
    email varchar(50),
    first_name varchar(20),
    middle_name varchar(20),
    last_name varchar(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id)
);



INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+917012844497','vishnup41@outlook.com','Vishnu','Prasad','Kuntar');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+918547580204','ravi@gmail.com','Ravi','Prasad','K');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+919916090084','sudeep@hotmail.com','Sudeep','Kumar','Hassan');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+917012855591','mohan@live.com','Mohan','Kumar','Mangalore');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+919447490850','bala@protonmail.com','Bala','Subrahmanya','Kudlu');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+916362587452','Jagadeesh@microsoft.com','Jagadeesh','','Kuntar');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+916596213197','lakshmi@ibm.com','Lakshmi','Prasanna','K');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+912494865233','supriya@meta.com','Supriya','Karanth','Kalladka');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+919746313676','Pooja@iit.ac.in','Pooja','Baasri','Kadri');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+916893313378','suresh@sevenchats.com','Suresh','Raina','M');
INSERT INTO users( mobile, email, first_name, middle_name, last_name) VALUES ('+916788513324','ramesh@pet-friend.com','Ramesh','Kumar','Pune');

SELECT * FROM users;

CREATE TABLE movies(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    censor_certificate_type varchar(5) NOT NULL,
    language varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    release_date varchar(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key(id)
);




CREATE TABLE theatres(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    address varchar(255) NOT NULL,
    name varchar(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key(id)
);

CREATE TABLE screens(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    seats_available INT NOT NULL,
    theatre_id BIGINT(20) NOT NULL ,
    show_timings DATETIME NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT theatre_id FOREIGN KEY (theatre_id) REFERENCES theatres(id)
);


CREATE TABLE tickets(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    seats_allotted varchar(255) NOT NULL,
    amount DOUBLE NOT NULL ,
    booked_at DATETIME NOT NULL,
    movie_id BIGINT(20) NOT NULL ,
    user_id BIGINT(20) NOT NULL ,
    screen_id BIGINT(20) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id),
    CONSTRAINT movie_id FOREIGN KEY (movie_id) REFERENCES movies(id),
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT screen_id FOREIGN KEY (screen_id) REFERENCES screens(id)
);


