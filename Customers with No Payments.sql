SELECT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM 
    customer c
LEFT JOIN 
    payment p ON c.customer_id = p.customer_id
WHERE 
    p.payment_id IS NULL;
