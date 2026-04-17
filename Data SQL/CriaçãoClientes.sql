DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO customers (customer_name, email, created_at)
    VALUES (
        CONCAT('Cliente ', @i),
        CONCAT('cliente', @i, '@email.com'),
        DATEADD(DAY, -FLOOR(RAND(CHECKSUM(NEWID())) * 365), GETDATE())
    );

    SET @i = @i + 1;
END;

