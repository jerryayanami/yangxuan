CREATE TABLE Customer
(
  c_id int(11) auto_increment,
  c_name varchar(255) not null,
  c_address varchar(255),
  c_mobile char(11),
  c_postcode char(6),
  c_remark varchar(255),
  primary key(c_id)
);
