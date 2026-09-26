DROP PROCEDURE IF EXISTS ordersum;

DELIMITER //
CREATE PROCEDURE ordersum(num INT)
BEGIN
	DECLARE max_item_total		DECIMAL(9,2);
    DECLARE min_item_total		DECIMAL(9,2);
    DECLARE percent_difference	DECIMAL(9,4);
    DECLARE count_items 		INT;
    DECLARE quantity_num	 	INT;
    
    SET quantity_num = num;
    
    SELECT MAX(item_price), MIN(item_price), COUNT(order_id)
    INTO max_item_total, min_item_total, count_items
    FROM order_items WHERE quantity = quantity_num;
    
    SET percent_difference = (max_item_total - min_item_total) / min_item_total * 100;
    
    SELECT 	CONCAT('$', max_item_total) AS 'Max Item',
			CONCAT('$', min_item_total) AS 'Min Item',
			CONCAT('$', ROUND(percent_difference, 2)) AS 'Percent Difference',
            count_items AS 'Number of Items';    
END//

CALL ordersum(1);