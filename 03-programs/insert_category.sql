/* Create and Call the "insert_category" Stored Procedure: 
1- Write a script that creates and calls a stored procedure named insert_category.
	A- First, code a statement that creates a procedure that adds a new row to the Categories table.
	B- To do that, this procedure should have one parameter for the category name.
2- Code at least two CALL statements to test this procedure with different category names. (NOTE: The Categories table doesn’t allow duplicate category names).*/

DROP PROCEDURE IF EXISTS insert_category
DELIMITER //
CREATE PROCEDURE insert_category(new_category_param VARCHAR(255))
BEGIN
	INSERT INTO categories (category_name) VALUES (new_category_param);
END//
DELIMITER ;

CALL insert_category('Brass');
CALL insert_category('Woodwinds');

SELECT * FROM categories;