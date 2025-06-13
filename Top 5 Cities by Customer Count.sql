SELECT 
    ci.city,
    COUNT(c.customer_id) AS customer_count
FROM 
    customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ci ON a.city_id = ci.city_id
GROUP BY 
    ci.city_id, ci.city
ORDER BY 
    customer_count DESC
LIMIT 5;