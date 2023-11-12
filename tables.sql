# DROP DATABASE book_my_show;
CREATE DATABASE book_my_show;

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

CREATE TABLE cities(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    city_name varchar(50),
    pincode INT NOT NULL,
    state varchar(50) NOT NULL,
    primary key (id)
);

INSERT INTO cities(city_name, pincode, state) VALUES ('Jayanagar', 575003, 'Karnataka');
INSERT INTO cities(city_name, pincode, state) VALUES ('Kasaragod', 671121, 'Kerala');
INSERT INTO cities(city_name, pincode, state) VALUES ('Vasant Nagar', 671543, 'Kerala');
INSERT INTO cities(city_name, pincode, state) VALUES ('JP Nagar', 575002, 'Karnataka');
INSERT INTO cities(city_name, pincode, state) VALUES ('Kuntar', 671542, 'Kerala');
INSERT INTO cities(city_name, pincode, state) VALUES ('Kudlu', 671121, 'Kerala');
INSERT INTO cities(city_name, pincode, state) VALUES ('Tilak Nagar', 671121, 'Kerala');
SELECT * FROM cities;

CREATE TABLE theaters(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    address varchar(255) NOT NULL,
    name varchar(20) NOT NULL,
    phone varchar(13) NOT NULL ,
    email varchar(50) NOT NULL,
    city_id BIGINT(20) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key(id)
);

INSERT INTO theaters(address, name, phone, email, city_id) VALUES ('Jayanagar 4th Block', 'INOX Garuda', '080-2500201', 'jayanagar@inox.com',1);
INSERT INTO theaters(address, name, phone, email, city_id) VALUES ('Vidya Nagar,Kasaragodk', 'IMAX ', '1800-15240', 'cidyakgq@imax.com',2);
INSERT INTO theaters(address, name, phone, email, city_id) VALUES ('JP 7 Phase', 'Satyam ', '080-2500202', 'jpnagar@isatyam.com',1);
INSERT INTO theaters(address, name, phone, email, city_id) VALUES ('JP 7 Phase', 'Satyam Cine ', '080-2500202', 'jpnagar@isatyam.com',1);
INSERT INTO theaters(address, name, phone, email, city_id) VALUES ('JP 7 Phase', 'Soundarya ', '080-2500208', 'jpnagar@gmail.com',1);
SELECT * FROM theaters;



CREATE TABLE screens(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    screen_ref INT NOT NULL ,
    seats_available INT NOT NULL,
    theater_id BIGINT(20) NOT NULL ,
    show_timings TIME NOT NULL ,
    show_date DATE NOT NULL ,
    movie_id BIGINT(20) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT theater_id FOREIGN KEY (theater_id) REFERENCES theaters(id),
    CONSTRAINT movie_rel_id FOREIGN KEY (movie_id) REFERENCES movies(id)
);




INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date, movie_id) VALUES (1,250,1,'08:30:00','2023-11-03',1);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (2,150,1,'13:30:00','2023-11-03',3);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (3,200,2,'10:30:00','2023-11-03',1);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (4,250,3,'13:30:00','2023-11-04',2);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (5,300,1,'18:30:00','2023-11-05',4);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (6,450,1,'15:30:00','2023-11-06',5);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (2,350,2,'18:30:00','2023-11-04',6);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (1,150,3,'17:30:00','2023-11-03',7);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (3,550,4,'19:30:00','2023-11-07',8);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (5,350,2,'22:30:00','2023-11-07',9);
INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date,movie_id) VALUES (4,250,3,'20:30:00','2023-11-08',10);
SELECT * FROM screens;

CREATE TABLE tickets(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    user_id BIGINT(20) NOT NULL ,
    seats_allotted varchar(255) NOT NULL,
    amount DOUBLE NOT NULL ,
    screen_id BIGINT(20) NOT NULL ,
    booked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id),
    CONSTRAINT user_rel_id FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT screen_rel_id FOREIGN KEY (screen_id) REFERENCES screens(id)
);


START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (1,'{type:continuous,number_of_seats:5,seat_numbers[10,11,12,13,14,15]}',5500,2);
UPDATE screens SET seats_available = seats_available -5 WHERE id = 2;
COMMIT ;

START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (4,'{type:seperate,number_of_seats:4,seat_numbers[5,7,8,9,18]}',250,2);
UPDATE screens SET seats_available = seats_available -4 WHERE id = 2;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 3;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (3,'{type:continuous,number_of_seats:2,seat_numbers[101,102]}',5500,3);
UPDATE screens SET seats_available = seats_available -2 WHERE id = 3;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (7,'{type:seperate,number_of_seats:3,seat_numbers[100,103]}',5500,2);
UPDATE screens SET seats_available = seats_available -3 WHERE id = 2;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 4;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (9,'{type:continuous,number_of_seats:2,seat_numbers[104,105]}',5500,4);
UPDATE screens SET seats_available = seats_available -2 WHERE id = 4;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (10,'{type:seperate,number_of_seats:2,seat_numbers[106,110]}',5500,2);
UPDATE screens SET seats_available = seats_available -2 WHERE id = 2;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (11,'{type:single,number_of_seats:1,seat_numbers[107]}',5500,2);
UPDATE screens SET seats_available = seats_available -1 WHERE id = 2;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 1;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (2,'{type:single,number_of_seats:1,seat_numbers[108]}',5500,1);
UPDATE screens SET seats_available = seats_available -1 WHERE id = 1;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 1;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (5,'{type:continuous,number_of_seats:2,seat_numbers[201,202]}',5500,1);
UPDATE screens SET seats_available = seats_available -2 WHERE id = 1;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (8,'{type:seperate,number_of_seats:2,seat_numbers[200,203]}',5500,2);
UPDATE screens SET seats_available = seats_available -2 WHERE id = 2;
COMMIT ;
START TRANSACTION ;
SELECT seats_available FROM screens where id = 2;
INSERT INTO tickets(user_id,seats_allotted, amount, screen_id) VALUES (6,'{type:single,number_of_seats:1,seat_numbers[204]}',5500,2);
UPDATE screens SET seats_available = seats_available -1 WHERE id = 2;
COMMIT ;

select * FROM tickets;
SELECT * FROM screens;




