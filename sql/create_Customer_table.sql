CREATE TABLE Customer
(
  c_id int(11) AUTO_INCREMENT,
  c_name VARCHAR(255) NOT NULL,
  c_address VARCHAR(255),
  c_mobile CHAR(11),
  c_postcode CHAR(6),
  c_remark VARCHAR(255),
  PRIMARY KEY(c_id),
  INDEX index_customer_info(c_name,c_address,c_mobile,c_postcode)
)AUTO_INCREMENT=10000000 CHARSET=utf8;
