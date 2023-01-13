SELECT first_name, last_name
FROM customer;




INSERT INTO customer(
age,
first_name,
last_name,
email
) VALUES (
    18,
    'Nick',
    'Jeanfils',
    'Nickjean1@gmail.com'
),(
   25,
   'John',
   'Williams',
   'JohnW@gmail.com'
),(
    40,
    'LeBron',
    'James',
    'LeBronJames@gmail.com'
);
SELECT * FROM tickets;
INSERT INTO tickets(
    customer_id,
    tickets_price
) VALUES(
    3,
   25.99
);
SELECT *
FROM movies;
INSERT INTO movies(
    customer_id,
    tickets_id,
    movie_name,
    movie_rating
) VALUES (
    3,
    3,
    'Inception',
    'R'
);
SELECT * FROM consession;
INSERT INTO consession(
    food_name,
    food_description,
    food_price,
    movie_id
) VALUES(
    'Popcorn',
    'Butterly and salty',
     10.99,
     2
),(
    'Nachos',
    'Chessy goodness side of chips',
     11.00,
     4
),(
    'Skittles',
    'Sugary,colorfull goodness',
     10.99,
     5
);
