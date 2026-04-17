DECLARE @i INT = 1;

WHILE @i <= 1000
BEGIN
    INSERT INTO order_items (order_id, product_id, quantity, unit_price)
    VALUES (
        FLOOR(1 + RAND(CHECKSUM(NEWID())) * 500),
        FLOOR(1 + RAND(CHECKSUM(NEWID())) * 50),
        FLOOR(1 + RAND(CHECKSUM(NEWID())) * 3) + 1,
        (SELECT price FROM products WHERE product_id = FLOOR(1 + RAND(CHECKSUM(NEWID())) * 50))
    );

    SET @i = @i + 1;
END;