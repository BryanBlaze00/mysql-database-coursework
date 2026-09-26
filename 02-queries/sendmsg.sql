DROP PROCEDURE IF EXISTS sendmsg;

DELIMITER //
CREATE PROCEDURE sendmsg()
BEGIN
    SELECT "This is a message" AS message;
END//
DELIMITER ;

CALL sendmsg();