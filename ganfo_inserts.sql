INSERT INTO Users (username, password, address, email, phone_number, registration_date, user_type) VALUES 
('Alexa123', 'al$29a', '123 Main St.', 'alexa_abbey122@gmail.com', '1-456-7890', '2023-05-14', 'seller'),
('pinkiez', 'password456', '456 Oak St, Anytown USA', 'p1_p1nk@gmail.com', '1-555-5678', '2022-01-01', 'seller'),
('kinz', 'admin123', '789 Elm St, Anytown USA', 'crown.guy@yahoo.com', '1-555-9012', '2022-01-01', 'customer');

INSERT INTO Platforms (platform_name) VALUES
('PC'),
('PlayStation 4'),
('PlayStation 5'),
('Xbox One'),
('Xbox Series X'),
('Nintendo Switch'),
('iOS'),
('Android');

INSERT INTO Genres (genre_name) VALUES
('Action'),
('Adventure'),
('RPG'),
('Strategy'),
('Simulation'),
('Sports'),
('Fighting'),
('Horror');

INSERT INTO Publishers (publisher_name) VALUES
('Electronic Arts'),
('Ubisoft'),
('Activision'),
('Bethesda'),
('Square Enix'),
('Rockstar Games'),
('Capcom'),
('Sega');

INSERT INTO Developers (developer_name) VALUES
('CD Projekt RED'),
('Naughty Dog'),
('Rockstar North'),
('Bethesda Game Studios'),
('Ubisoft Montreal'),
('Respawn Entertainment'),
('Capcom'),
('Epic Games');

INSERT INTO Games (gameName, release_date, description, price, availability_status, genre_id, publisher_id, developer_id, platform_id, seller_id) VALUES
('Grand Theft Auto V', '2013-09-17', 'An action-adventure game that you can control. This game is rated M', 19.99, 'In Stock', 1, 6, 3, 1, 1),
('The Elder Scrolls V: Skyrim', '2011-11-11', 'An open-world RPG that you will explore for hundreds of hours with many different things to do!', 29.99, 'Out of Stock', 3, 4, 4, 1, 1),
('Red Dead Redemption 2', '2018-10-26', 'A western action-adventure game', 59.99, 'In Stock', 1, 6, 3, 2, 2),
('Assassin''s Creed Valhalla', '2020-11-10', 'An action RPG set in Viking times', 49.99, 'In Stock', 3, 2, 5, 1, 2),
('Resident Evil Village', '2021-05-07', 'A survival horror game', 59.99, 'In Stock', 8, 7, 7, 1, 2);

INSERT INTO Transactions (buyer_id, seller_id, game_id, transaction_date, delivery_status) VALUES
(3, 1, 1, '2022-04-01', 'Delivered'),
(2, 1, 3, '2022-03-20', 'Delivered'),
(1, 2, 4, '2022-02-15', 'In Transit'),
(3, 2, 5, '2022-04-30', 'Delivered');

INSERT INTO Reviews (game_id, user_id, review_text, review_date) VALUES
(1, 1, 'The game is too long and boring. I prefer the previous installations of the game. I do not recommend.', '2022-04-05'),
(2, 2, 'I''ve played this game for hundreds of hours and I still haven''t fully finished the game lol. ', '2022-03-25'),
(3, 3, 'One of the best games I''ve ever played. 10/10 cowboy simulator.', '2022-02-20'),
(5, 1, 'The baby part is HORRIFYING! You should definitely try this out!', '2022-05-03');