DECLARE @i INT = 1;

WHILE @i <= 500
BEGIN
    INSERT INTO orders (customer_id, order_date, status)
    VALUES (
        FLOOR(1 + RAND(CHECKSUM(NEWID())) * 100),
        DATEADD(DAY, -FLOOR(RAND(CHECKSUM(NEWID())) * 365), GETDATE()),
        'completed'
    );

    SET @i = @i + 1;
END;