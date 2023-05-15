CREATE VIEW GameDetails AS 
SELECT g.game_id, g.gameName, g.release_date, g.description, g.price, g.availability_status, 
    p.platform_name, gn.genre_name, pb.publisher_name, d.developer_name
FROM Games g
JOIN Platforms p ON g.platform_id = p.platform_id
JOIN Genres gn ON g.genre_id = gn.genre_id
JOIN Publishers pb ON g.publisher_id = pb.publisher_id
JOIN Developers d ON g.developer_id = d.developer_id;

CREATE VIEW ReviewDetails AS 
SELECT r.review_id, g.gameName, u.username, r.review_text, r.review_date
FROM Reviews r
JOIN Games g ON r.game_id = g.game_id
JOIN Users u ON r.user_id = u.user_id;

CREATE VIEW TransactionDetails AS 
SELECT t.transaction_id, b.username AS buyer, s.username AS seller, g.gameName, t.transaction_date, t.delivery_status
FROM Transactions t
JOIN Users b ON t.buyer_id = b.user_id
JOIN Users s ON t.seller_id = s.user_id
JOIN Games g ON t.game_id = g.game_id;