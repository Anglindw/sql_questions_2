-- Question 1
SELECT COUNT(district)
FROM customer
ON customer.address_id=address.address_id
WHERE district LIKE 'Texas';

--Question 2

SELECT first_name, last_name, amount
FROM customer
RIGHT JOIN payment
ON customer.customer_id=payment.customer_id
WHERE amount > '6.99';

--Question 3
SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 175
    ORDER BY SUM(amount) > DESC
);

-- Question 4
SELECT first_name, last_name, city
FROM customer
INNER JOIN address
ON customer.address_id=address.address_id
INNER JOIN city
ON address.city_id=city.city_id
WHERE country_id ='66';

-- Question 5
SELECT first_name, last_name, COUNT(payment_date)
FROM staff
RIGHT JOIN payment
ON staff.staff_id=payment.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(payment_date) DESC;

-- Question 6
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;

-- QUESTION 7
SELECT  DISTINCT(last_name), payment_id,  amount
FROM(
    SELECT last_name, payment_id, amount
    INNER JOIN customer
    ON customer.customer_id= payment.customer_id
) AS customer_payments
WHERE amount > 6.99;

-- Question 8
SELECT COUNT(amount)
FROM payment
WHERE amount = 0;









