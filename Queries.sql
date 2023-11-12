use book_my_show;

SELECT m.id as "Movie id", m.name as "Movie", m.censor_certificate_type as "Censor Ratings", m.language as "Language", s.show_timings as time, s.screen_ref as screen, t.name as "theater name", s.seats_available
FROM movies m
INNER JOIN screens s on m.id = s.movie_id
INNER JOIN theaters t on s.theater_id = t.id
where s.show_date = '2023-11-03' AND t.id = 1
ORDER BY s.show_timings ASC ;

INSERT screens(screen_ref,seats_available, theater_id, show_timings,show_date, movie_id) VALUES (1,250,1,'08:30:00','2023-11-03',3);
DELETE FROM screens where id = 13
