SELECT 
    customer_id,
    MAX(order_date) AS last_order_date,
    DATEDIFF(DAY, MAX(order_date), GETDATE()) AS days_inactive
FROM orders
GROUP BY customer_id
HAVING DATEDIFF(DAY, MAX(order_date), GETDATE()) >= 60
ORDER BY days_inactive DESC;

SELECT 
    customer_id,
    DATEDIFF(DAY, MAX(order_date), GETDATE()) AS days_inactive,
    CASE 
        WHEN DATEDIFF(DAY, MAX(order_date), GETDATE()) <= 30 THEN 'Ativo'
        WHEN DATEDIFF(DAY, MAX(order_date), GETDATE()) <= 60 THEN 'Em risco'
        WHEN DATEDIFF(DAY, MAX(order_date), GETDATE()) <= 180 THEN 'Churn leve'
        ELSE 'Churn crítico'
    END AS customer_segment
FROM orders
GROUP BY customer_id;