WITH cohort AS (
    SELECT 
        customer_id,
        FORMAT(MIN(order_date), 'yyyy-MM') AS cohort_month
    FROM orders
    GROUP BY customer_id
),
activity AS (
    SELECT 
        o.customer_id,
        c.cohort_month,
        FORMAT(o.order_date, 'yyyy-MM') AS order_month
    FROM orders o
    JOIN cohort c ON o.customer_id = c.customer_id
)

SELECT 
    cohort_month,
    order_month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM activity
GROUP BY cohort_month, order_month
ORDER BY cohort_month, order_month;