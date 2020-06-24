-- DELETE FROM users;
-- DELETE FROM properties;
-- DELETE FROM reservations;
-- DELETE FROM property_reviews;

INSERT INTO users (name, email, password)
VALUES ('Scruff McGruff', 1980, '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
       ('Leeroy Jenkins', 1984, '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
       ('Adam Horowitz', 1966, '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url,
                        cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms,
                        country, street, city, province, post_code)
VALUES (1, 'Best property believe me', 'some description here', 'http://some_great_thumb_photo_url1.here',
        'http://the_besten_cover_photo_url1.here', 100, 3, 3, 4, 'Rwanda', '3 People Party Street',
        'Kigali', 'Kigali Province', 'HI2UM8'),
       (3, 'Ahoy me hearties YARR', 'some description here', 'http://some_great_thumb_photo_url2.here',
        'http://the_besten_cover_photo_url2.here', 125, 1, 2, 3, 'Uganda', '30 People Party Street',
        'Kigali', 'Kigali Province', 'HI2UM8'),
       (3, 'Best property believe me', 'some description here', 'http://some_great_thumb_photo_url3.here',
        'http://the_besten_cover_photo_url3.here', 175, 0, 0, 1, 'Burundi', '300 People Party Street',
        'Kigali', 'Kigali Province', 'HI2UM8');

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2020-06-25', '2020-06-30', 3, 2),
       ('2020-06-26', '2020-07-14', 1, 1),
       ('2020-06-27', '2020-07-07', 2, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 2, 5, 'ZOMG was the best'),
       (1, 2, 3, 5, 'Time of my life'),
       (2, 3, 1, 1, 'Ultra crap');
