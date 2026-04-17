SELECT 
    SUM(quantity * unit_price) AS total_revenue
FROM order_items;

SELECT 
    AVG(order_total) AS average_order_value
FROM (
    SELECT 
        o.order_id,
        SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
) t;

SELECT 
    o.customer_id,
    SUM(oi.quantity * oi.unit_price) AS lifetime_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY lifetime_value DESC;

SELECT 
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

SELECT 
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;