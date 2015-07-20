<?php
$conn_string = "host=127.0.0.1 port=5432 dbname=us2cn user=jerryayanami password=Jingxuan@1213" ;
$dbconn = pg_connect($conn_string);
  if (!$dbconn) {
	echo "\r\n\n\n\n\n\nConnection Failed!!!\r\n";
  }
  else { 
	echo "\r\n\n\n\n\n\nConnection Success!!!\r\n";
  }
pg_close($dbconn);
?>
