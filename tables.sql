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
    name varchar(80) NOT NULL,
    censor_certificate_type varchar(5) NOT NULL,
    language varchar(20) NOT NULL,
    release_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key(id)
);

INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Sholay', 'U' , 'Hindi' , '2023-11-03');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Avengers Age of Ultron', 'A' , 'English' , '2023-11-03');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Deadpool', 'R' , 'English' , '2023-11-03');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Scooby Do', 'U/A' , 'English' , '2023-11-08');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('IronMan', 'A' , 'English' , '2023-11-03');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Avengers Infinity War ', 'UA' , 'English' , '2023-10-03');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Avengers End Game', 'UA' , 'English' , '2023-11-08');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('OppenHeimer', 'A' , 'English' , '2023-11-11');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Chaplin', 'U' , 'English' , '2023-11-08');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Dolittle', 'U' , 'English' ,'2023-11-08');
INSERT INTO movies(name, censor_certificate_type, language, release_date) VALUES ('Bangalore Days', 'U' , 'Malayalam' , '2023-11-08');
SELECT * FROM movies;


CREATE TABLE ratings(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    movie_id BIGINT(20) NOT NULL ,
    user_id BIGINT(20) NOT NULL ,
    rating DOUBLE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id),
    CONSTRAINT movie_id FOREIGN KEY (movie_id) REFERENCES movies(id),
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO ratings(movie_id, user_id, rating) VALUES (1, 5, 3.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (2, 4, 4.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (3, 8, 1.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (1, 1, 4.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (4, 2, 5.0);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (3, 1, 4.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (5, 10, 4.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (5, 11, 3.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (1, 3, 3.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (3, 2, 4.5);
INSERT INTO ratings(movie_id, user_id, rating) VALUES (5, 1, 4.5);
SELECT * FROM ratings;


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


