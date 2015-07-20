<?php
function count_words($content) {
  $word = str_word_count($content,1); 
  
  return $word; 
}
  $content = file_get_contents('/var/www/test1.txt');
  $words = count_words($content);
  $result = array_count_values($words);
  ksort($result);
  
  //echo $content;
  echo "<pre>";
  print_r($result);
  echo "</pre>";
//$name = $_get['input_name'];
 //$fp = @fopen(dirname(__file__).'/'.$name, 'rb');
// $fp = @fopen('/var/www/test1.txt', 'rb');
// if (!$fp) {
//  echo '1111111111';
//  exit;
// }
// while (!feof($fp)) {
//  $content = fgets($fp);
//  echo $content.'<br />';
// }
// fclose($fp);
?>

