SELECT *
FROM customer;



-- Question 1
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3
SELECT film_id, COUNT(inventory_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id) DESC;

-- Question 4
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'Williams';

-- Question 5
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

--Question 6 
SELECT first_name, last_name, COUNT(*) AS COUNT
FROM customer
WHERE last_name LIKE '%es';


--Question 7
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Question 8
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '__es%'
GROUP BY store_id;

--Question 9

SELECT amount, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

-- Question 10
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;
