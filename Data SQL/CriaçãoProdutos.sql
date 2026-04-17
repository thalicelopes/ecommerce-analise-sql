DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN
    INSERT INTO products (product_name, category, price)
    VALUES (
        CONCAT('Produto ', @i),
        CASE 
            WHEN @i % 4 = 0 THEN 'Eletrônicos'
            WHEN @i % 4 = 1 THEN 'Roupas'
            WHEN @i % 4 = 2 THEN 'Calçados'
            ELSE 'Acessórios'
        END,
        ROUND(20 + (RAND(CHECKSUM(NEWID())) * 480), 2)
    );

    SET @i = @i + 1;
END;