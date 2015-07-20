function file_get_content(data) {
 var data;
 var xhr;
 if (window.XMLHttpRequest) {
   xhr = new XMLHttpRequest();
 }else if (window.ActiveXObject) {
   xhr = new ActiveXObject("Microsoft.XMLHTTP");
 }else {
   alert("Your browser does not support XMLHTTP.");
 }
 xhr.onreadystatechange = function () {
  if (xhr.readyState == 4) {
   if (xhr.status == 200) {
    document.getElementById('fade').style.display='none';
    document.getElementById('file_get_content').style.display='none';
    document.getElementById('file_content').innerHTML = xhr.responseText;
   }
  }
 }
 xhr.open('GET','ajax/test1.php?action=getcontent&'+data);
 xhr.setRequestHeader("Content-Type","text/html; charset=utf-8");
// xhr.setRequestHeader("if-modified-since","0");
 xhr.send(null); 
}
