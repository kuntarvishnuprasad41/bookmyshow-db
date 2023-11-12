# CREATE DATABASE book_my_show;

use book_my_show;

CREATE TABLE users(
    id BIGINT(20) NOT NULL,
    mobile varchar(13),
    email varchar(50),
    first_name varchar(20),
    middle_name varchar(20),
    last_name varchar(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id)
);

CREATE TABLE movies(
    id BIGINT(20) NOT NULL,
    censor_certificate_type varchar(5) NOT NULL,
    language varchar(20) NOT NULL,
    name varchar(20) NOT NULL,
    release_date varchar(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key(id)
);


CREATE TABLE tickets(
    id BIGINT(20) NOT NULL,
    seats_allotted varchar(255) NOT NULL,
    amount DOUBLE NOT NULL ,
    booked_at DATETIME NOT NULL,
    movie_id BIGINT(20) NOT NULL ,
    user_id BIGINT(20) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (id),
    CONSTRAINT movie_id FOREIGN KEY (movie_id) REFERENCES movies(id),
    CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id)
);


