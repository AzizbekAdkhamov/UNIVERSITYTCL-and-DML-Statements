DELETE FROM rental WHERE inventory_id IN (SELECT inventory_id FROM inventory WHERE film_id = 1004);

DELETE FROM inventory WHERE film_id = 1004;


DELETE FROM payment
WHERE customer_id = '1';


DELETE FROM rental
WHERE customer_id = '1';


DELETE FROM staff
WHERE staff_id IN (
    SELECT staff_id
    FROM rental
    WHERE customer_id = '1'
);

 DELETE FROM address
 WHERE address_id IN (
     SELECT address_id
     FROM customer
     WHERE customer_id = '1'
 );

DELETE FROM inventory
WHERE store_id IN (
    SELECT store_id
    FROM customer
    WHERE customer_id = '1'
);

