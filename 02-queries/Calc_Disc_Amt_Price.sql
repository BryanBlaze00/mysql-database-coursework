SELECT 
    product_name, 
    list_price, 
    discount_percent,
    ROUND(list_price * discount_percent * 0.01, 2) AS discount_amount,
    ROUND(list_price - (list_price * discount_percent * 0.01), 2) AS discount_price
FROM products
ORDER BY discount_price DESC
LIMIT 5;