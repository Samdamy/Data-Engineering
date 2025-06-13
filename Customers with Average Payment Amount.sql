SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    AVG(p.amount) AS avg_payment_amount
FROM 
    customer c
    JOIN payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id, c.first_name, c.last_name
ORDER BY 
    c.last_name, c.first_name;
