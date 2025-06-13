SELECT 
    s.store_id,
    SUM(p.amount) AS total_revenue
FROM 
    payment p
    JOIN staff s ON p.staff_id = s.staff_id
GROUP BY 
    s.store_id
ORDER BY 
    s.store_id;
