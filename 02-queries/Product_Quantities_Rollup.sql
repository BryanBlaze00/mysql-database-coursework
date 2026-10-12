SELECT c.category_name, p.product_name, SUM(oi.quantity) AS total_quantity
FROM categories c
JOIN products p ON c.category_id = p.category_id
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY c.category_name, p.product_name WITH ROLLUP;