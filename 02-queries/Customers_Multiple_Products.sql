SELECT c.email_address, COUNT(DISTINCT oi.product_id) AS product_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.email_address
HAVING product_count > 1
ORDER BY c.email_address ASC;