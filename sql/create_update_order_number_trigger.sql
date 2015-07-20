DELIMITER //
DROP TRIGGER IF EXISTS update_order_number //
CREATE TRIGGER update_order_number AFTER INSERT ON Orders FOR EACH ROW
BEGIN
  UPDATE Orders o SET NEW.o_number=CONCAT(SUBSTRING(o.o_xref_c_name, 1, 2), DATE_FORMAT(NOW(),'%y%m%d%H%i')) WHERE o.o_id = old.o_id;
END //
DELIMITER ;
