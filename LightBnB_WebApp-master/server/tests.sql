SELECT * FROM users
WHERE users.email = 'dmitry.petrov0918@gmail.com';

INSERT INTO users (name, email, password)
VALUES ('Scruff McGruff', 1980, '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')
RETURNING *;