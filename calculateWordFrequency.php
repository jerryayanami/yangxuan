<!doctype html>
<html>
  <head>
  <title>Calculate Words frequency</title> 
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/test1.css">
    <script type="text/Javascript" src="js/test1.js"></script>
  </head>
  <body>
    <h1>PHP Interview Test for Baidu</h1>
    <p>
      Input an English paragraph, then calculate the frequency of the words in the paragraph, and order by alphabet.
    </p>
    <div class="button_list">
      <div class="button">
        <a href="javascript:void(0);" onclick="document.getElementById('file_get_content').style.display='block';document.getElementById('fade').style.display='block'">Load From File</a>
      </div>
    </div>
    <div class="file_list" id="file_get_content">
      <div id="input_box" class="file_content_input_form">
        <form id="get_form" name="get_form" method="post" action="">
          <label>file name
            <span class="small">eg:abc.txt</span>
          </label>
          <input type="text" name="input_name" id="input_name" />      
          <button type="button" onclick="javascript:file_get_content('input_name='+document.get_form.input_name.value);">OK</button>
          <div class="spacer"></div>
        </form>
      </div>
    </div>
    <div><div>
    <div id="fade" class="black_overlay"></div>
    <div id="file_content" ></div>
  </body>

</html>

