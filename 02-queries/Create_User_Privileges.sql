CREATE USER IF NOT EXISTS 'bmoffett'@'%.csuglobal.edu' IDENTIFIED BY 'Password123!';

GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.customers TO 'bmoffett'@'%.csuglobal.edu';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.addresses TO 'bmoffett'@'%.csuglobal.edu';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.orders TO 'bmoffett'@'%.csuglobal.edu';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.order_items TO 'bmoffett'@'%.csuglobal.edu';

GRANT SELECT ON my_guitar_shop.products TO 'bmoffett'@'%.csuglobal.edu';
GRANT SELECT ON my_guitar_shop.categories TO 'bmoffett'@'%.csuglobal.edu';

SHOW GRANTS FOR 'bmoffett'@'%.csuglobal.edu';