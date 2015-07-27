CREATE TABLE Orders
(
  o_id int(8) AUTO_INCREMENT,
  o_xref_i_id INT(11) NOT NULL,
  o_item_amount int(2) NOT NULL,
  o_number VARCHAR(25) NOT NULL DEFAULT '',
  o_date DATE NOT NULL,
  o_xref_c_name VARCHAR(255),
  o_xref_c_address VARCHAR(255),
  o_xref_c_mobile CHAR(11),
  o_xref_c_postcode char(6),
  o_price_before_tax DOUBLE,
  o_estimate_shipping_fee DOUBLE, 
  o_real_shipping_fee DOUBLE,
  o_insurance_fee DOUBLE,
  o_payment_amount DOUBLE,
  o_payment_method VARCHAR(255),
  o_payment_date DATE,
  o_transaction_number VARCHAR(255),
  o_real_receiver VARCHAR(255),
  o_base_cost DOUBLE,
  o_state VARCHAR(25),
  PRIMARY KEY(o_id),
  INDEX ind_order_customer(o_xref_c_name,o_xref_c_address,o_xref_c_mobile,o_xref_c_postcode),
  FOREIGN KEY(o_xref_c_name,o_xref_c_address,o_xref_c_mobile,o_xref_c_postcode)
    REFERENCES Customer(c_name,c_address,c_mobile,c_postcode)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  INDEX ind_order_item(o_xref_i_id),
  FOREIGN KEY(o_xref_i_id)
    REFERENCES Item(i_id)
    ON UPDATE CASCADE
) AUTO_INCREMENT=10000000 CHARSET=utf8;
