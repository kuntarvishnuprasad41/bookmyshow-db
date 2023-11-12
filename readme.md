# Welcome to Bookmyshow DB Design

In this  **DB** We have the following tables

 1. Users
 2. Movies
 3. Theaters
 4. Cities
 5. Screens
 6. Tickets
 7. Ratings


Here the transactions were also implemented while booking the ticket. 


# Users

This table stores  **users** 
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| mobile| VARCHAR(13), NOT NULL|
| email | VARCHAR(50), NOT NULL|
|first_name | VARCHAR(20) NOT NULL|
|middle_name | VARCHAR(20) NOT NULL|
|last_name | VARCHAR(20) NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|
 
## Movies

Has the list of all **movies**
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| name| VARCHAR(50), NOT NULL|
| censor_certificate_type | VARCHAR(50), NOT NULL|
|language | VARCHAR(20) NOT NULL|
|release_date | VARCHAR(20) NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|

## Theaters

Has the list of all **theaters**
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| address | VARCHAR(50), NOT NULL|
| name | VARCHAR(50), NOT NULL|
|phone | VARCHAR(13) NOT NULL|
|email | VARCHAR(50) NOT NULL|
|city_id | BIGINT(20) NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|

## Cities

Has the list of all **cities**
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| city_name | VARCHAR(50), NOT NULL|
|pincode | INT NOT NULL|
|state | VARCHAR(50) NOT NULL|

## Screens

Has the list of all **Screens** with reference to theaters
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| scren_ref | INT , NOT NULL |
| seats_available | INT, NOT NULL|
| theater_id | BIGINT(20), NOT NULL|
|show_timings | TIME, NOT NULL|
|show_date | DATE, NOT NULL|
|movie_id | BIGINT(20) NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|

## Tickets

Has the list of all **Tickers** with reference to theaters and screens
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| user_id | BIGINT(20) , NOT NULL |
| seats_allotted | VARCHAR(255), NOT NULL|
| amount | DOUBLE, NOT NULL|
|screen_id | BIGINT(20), NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|

## Ratings

Has the list of all **Ratings** for a particular movie
**Schema :**
|Key|Constraints  |
|--|--|
| id | BIGINT(20), PRIMARY KEY , NOT NULL |
| movie_id | BIGINT(20) , NOT NULL |
| user_id | BIGINT(20) , NOT NULL |
| rating | DOUBLE, NOT NULL|
|created_at | TIMESTAMP|
|updated_at | TIMESTAMP|
