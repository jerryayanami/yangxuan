CREATE TABLE Item
(
  i_id INT(11) AUTO_INCREMENT,
  i_name VARCHAR(255) NOT NULL,
  i_brand VARCHAR(255),
  i_original_price DOUBLE NOT NULL,
  i_barcode VARCHAR(255),
  i_remark VARCHAR(255),
  i_date DATE NOT NULL,
  i_available TINYINT(1) DEFAULT 1,
  PRIMARY KEY(i_id),
  INDEX index_item_info(i_name,i_brand,i_original_price,i_barcode,i_date)
--  i_pic
) AUTO_INCREMENT=10000000 CHARSET=utf8;
