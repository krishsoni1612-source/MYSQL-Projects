SELECT 
    c.customer_name, 
    SUM(p.price * s.quantity) AS total_spent
FROM customers AS c
INNER JOIN sales AS s ON c.customer_id = s.customer_id
INNER JOIN products AS p ON s.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;
