CREATE TABLE Users (
  user_id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20),
  registration_date DATE NOT NULL,
  user_type VARCHAR(10) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE Platforms (
  platform_id INT NOT NULL AUTO_INCREMENT,
  platform_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (platform_id)
);

CREATE TABLE Genres (
  genre_id INT NOT NULL AUTO_INCREMENT,
  genre_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (genre_id)
);

CREATE TABLE Publishers (
  publisher_id INT NOT NULL AUTO_INCREMENT,
  publisher_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE Developers (
  developer_id INT NOT NULL AUTO_INCREMENT,
  developer_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (developer_id)
);

CREATE TABLE Games (
  game_id INT NOT NULL AUTO_INCREMENT,
  gameName VARCHAR(255) NOT NULL,
  release_date DATE NOT NULL,

  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  availability_status VARCHAR(20) NOT NULL,
  genre_id INT NOT NULL,
  publisher_id INT NOT NULL,
  developer_id INT NOT NULL,
  platform_id INT NOT NULL,
  seller_id INT NOT NULL,
  PRIMARY KEY (game_id),
  FOREIGN KEY (platform_id) REFERENCES Platforms(platform_id),
  FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
  FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id),
  FOREIGN KEY (developer_id) REFERENCES Developers(developer_id),
  FOREIGN KEY (seller_id) REFERENCES Users(user_id)
);

CREATE TABLE Transactions (
  transaction_id INT NOT NULL AUTO_INCREMENT,
  buyer_id INT NOT NULL,
  seller_id INT NOT NULL,
  game_id INT NOT NULL,
  transaction_date DATE NOT NULL,
  delivery_status VARCHAR(255),
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (buyer_id) REFERENCES Users(user_id),
  FOREIGN KEY (buyer_id) REFERENCES Users(user_id),
  FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

CREATE TABLE Reviews (
  review_id INT NOT NULL AUTO_INCREMENT,
  game_id INT NOT NULL,
  user_id INT NOT NULL,
  review_text TEXT,
  review_date DATE NOT NULL,
  PRIMARY KEY (review_id),
  FOREIGN KEY (game_id) REFERENCES Games(game_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);