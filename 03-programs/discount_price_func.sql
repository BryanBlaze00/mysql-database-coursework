/* Create and Call the "discount_price" Stored Function: 
1- Write a script that creates and calls a stored function named discount_price.
	A- This stored function should calculate the discount price of an item in the Order_Items table (discount amount subtracted from item price) 
	(Ex: "item_price" - "discount_amount").
	B- To do that, this function should accept one parameter for the item ID and it should return the value of the discount price for that item.*/

DROP FUNCTION IF EXISTS discount_price;
DELIMITER //
CREATE FUNCTION discount_price(item_id_param INT)
RETURNS DECIMAL(10,2) DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE discounted_price DECIMAL(10,2);
    
    SELECT item_price - discount_amount
    INTO discounted_price
    FROM order_items
    WHERE item_id = item_id_param;
    
	RETURN discounted_price;
END//
DELIMITER ;

SELECT discount_price(5);