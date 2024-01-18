
UPDATE film
SET rental_duration = 3, rental_rate = 9.99
WHERE title = 'Avengers End Game';



UPDATE customer
SET first_name = 'Azizbek', last_name = 'Adkhamov', email = 'Adkhamovaz26@gmail.com'
WHERE 1 IN (
    SELECT c.customer_id
    FROM customer c
             JOIN payment p ON c.customer_id = p.customer_id
             JOIN rental r ON c.customer_id = r.customer_id
    GROUP BY c.customer_id
    HAVING COUNT(DISTINCT p.payment_id) >= 10 AND COUNT(DISTINCT r.rental_id) >= 10
);

UPDATE customer
SET address_id = (SELECT address_id FROM address ORDER BY RANDOM() LIMIT 1)
WHERE customer_id IN (
    SELECT c.customer_id
    FROM customer c
             JOIN payment p ON c.customer_id = p.customer_id
             JOIN rental r ON c.customer_id = r.customer_id
    GROUP BY c.customer_id
    HAVING COUNT(DISTINCT p.payment_id) >= 10 AND COUNT(DISTINCT r.rental_id) >= 10
);


UPDATE customer
SET create_date = CURRENT_DATE
WHERE customer_id IN (
    SELECT c.customer_id
    FROM customer c
             JOIN payment p ON c.customer_id = p.customer_id
             JOIN rental r ON c.customer_id = r.customer_id
    GROUP BY c.customer_id
    HAVING COUNT(DISTINCT p.payment_id) >= 10 AND COUNT(DISTINCT r.rental_id) >= 10
);

