SELECT * FROM users
WHERE users.id = 1;

-- INSERT INTO users (name, email, password)
-- VALUES ('Scruff McGruff', 'example@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')
-- RETURNING *;

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

SELECT *
FROM reservations
WHERE guest_id = 1;

SELECT properties.title, properties.city
FROM properties
WHERE id = 209 OR id = 129;

-- UPDATE users
-- SET email = 'example@gmail.com'
-- WHERE id = 1;

-- UPDATE users
-- SET password = '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'
-- WHERE id = 1;

SELECT * FROM users
WHERE users.email = 'example@gmail.com';