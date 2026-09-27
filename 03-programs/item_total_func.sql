/* Create and Call the "item_total" Stored Function: 
1- Write a script that creates and calls a stored function named item_total.
	A- This stored function should calculate the total amount of an item in the Order_Items table (discount price multiplied by quantity) 
	(Ex: "discount price" x "quantity"). 
	B- To do that, this function should accept one parameter for the item ID. It should also use the "discount_price" function that you created in Task 2. 
	And it should return the value of the total value of that item.*/
SELECT * FROM order_items ORDER BY quantity DESC;

DROP FUNCTION IF EXISTS item_total;
DELIMITER //
CREATE FUNCTION item_total(item_id_param INT)
RETURNS DECIMAL(10,2) DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE total_amount DECIMAL(10,2);
    
    SELECT discount_price(item_id_param) * quantity
    INTO total_amount
    FROM order_items
    WHERE item_id = item_id_param;
    
	RETURN total_amount;
END//
DELIMITER ;

SELECT item_total(5) AS 'Multi Item Total';