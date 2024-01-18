INSERT INTO film (title, language_id, rental_rate, rental_duration)
VALUES ('Avengers End Game',1,4.99,14);

e
INSERT INTO actor (first_name, last_name)
VALUES
    ('Chris', 'Hemsworth'),
    ('Scarlett ', 'Johansson'),
    ('Benedict ', 'Wong'),
    ('Gwyneth ','Paltrow');


SELECT film_id
FROM film
WHERE title = 'Avengers End Game';



INSERT INTO film_actor (actor_id, film_id)
VALUES
    ((SELECT 201 FROM actor WHERE first_name = 'Chris' AND last_name = 'Hemsworth'), 1004),
    ((SELECT 202 FROM actor WHERE first_name = 'Scarlett' AND last_name = 'Johansson'), 1004),
    ((SELECT 203 FROM actor WHERE first_name = 'Benedict' AND last_name = 'Wong'), 1004),
    ((SELECT 204 FROM actor WHERE first_name = 'Gwyneth' AND last_name = 'Paltrow'), 1004);



INSERT INTO inventory (film_id, store_id)
VALUES (1004, 1);

