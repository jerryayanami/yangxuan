CREATE TABLE Item
(
  i_id int(11) auto_increment,
  i_name varchar(255) not null,
  i_brand varchar(255),
  i_original_price double not null,
  i_barcode varchar(255),
  i_remark varchar(255),
  i_date date not null,
  primary key(i_id)
--  i_pic
);
