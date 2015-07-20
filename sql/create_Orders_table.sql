CREATE TABLE Orders
(
  o_id int(8) AUTO_INCREMENT,
  o_xref_i_id INT(11) NOT NULL,
  o_item_amount int(2) NOT NULL,
  o_number VARCHAR(25) NOT NULL DEFAULT '',
  o_date DATE NOT NULL,
  o_xref_c_name VARCHAR(255),
  o_xref_c_address VARCHAR(255),
  o_xref_c_postcode char(6),
  o_price_before_tax DOUBLE,
  o_estimate_shipping_fee DOUBLE, 
  o_real_shipping_fee DOUBLE,
  o_insurance_fee DOUBLE,
  o_payment_amount DOUBLE,
  o_payment_method VARCHAR(255)
  o_payment_date DATE
  o_transaction_number VARCHAR(255),
  o_real_receiver VARCHAR(255),
  o_base_cost DOUBLE
  PRIMARY KEY(o_id)
) AUTO_INCREMENT=10000000 CHARSET=utf8;
