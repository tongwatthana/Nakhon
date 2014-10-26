<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html >
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="pic/Untitled-6.png">

    <title>หน้าแรก</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/justified-nav.css" rel="stylesheet" type="text/css">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>

  <body>
  	
      <div class="container">
      <div class="masthead">
      <img src="pic/banner.png" width="1024" height="150">
       <ul class="nav navbar-nav navbar-right">
       
        <%
            String username_ses = (String)session.getAttribute("username_ses");
            String firstname_ses = (String)session.getAttribute("firstname_ses");
            if(username_ses==null) { %>
            <li><a href="login.html">เข้าสู่ระบบ</a></li>
            <% } else { %>
            <li><a href="logout.jsp"><%=firstname_ses%>ออกจากระบบ</a></li>
         <% } %>
            </ul> 
		<h3 class="text-muted"></h3>
        <ul class="nav nav-justified">
          <li class="active"><a href="index.jsp">หน้าแรก</a></li>
          <li><a href="#">สถานที่ท่องเที่ยว</a></li>
          <li><a href="#">รีวิว</a></li>
          <li><a href="#">การเดินทาง</a></li>
          <li><a href="info.html">ข้อมูลผู้พัฒนา</a></li> 
        </ul>
       
      </div>
      
      
<div><marquee onmouseover="this.stop();" onmouseout="this.start();" id="result"></marquee></div>

      <!-- Jumbotron -->
      <div class="jumbotron">
        <h4>คำขวัญจังหวัดนครปฐม</h4>
      <marquee scrollamount="6" >
      <img src="pic/1.PNG">
      <img src="pic/2.PNG">
      <img src="pic/3.PNG">
      <img src="pic/4.PNG">
      <img src="pic/5.PNG">
      <img src="pic/6.PNG">
      <img src="pic/7.PNG">
      <img src="pic/8.PNG">
      </marquee>
        
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>ประวัติ</h2>
          <p>นครปฐมจังหวัดเล็กๆ ซึ่งอยู่ไม่ไกลจากกรุงเทพฯ ด้วยระยะทางประมาณ 56 กิโลเมตร เป็นเมืองแห่งปูชนียสถานเก่าแก่ที่สำคัญคือ“พระปฐมเจดีย์” ซึ่งนับเป็นร่องรอยแห่งแรกของการเผยแพร่อารยธรรมพุทธศาสนาเข้ามาในประเทศไทย ทั้งยังเป็นเมืองที่อุดมสมบูรณ์มากมายไปด้วยผลไม้และอาหารขึ้นชื่อนานาชนิด ...</p>
          <p><a class="btn btn-primary" href="history.html" role="button">อ่านต่อ &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>กิจกรรมท่องเที่ยว</h2>
          <p>ล่องเรือเที่ยวคลองมหาสวัสดิ์
เป็นกิจกรรมท่องเที่ยวเชิงเกษตรล่องเรือเพื่อเที่ยวชมวิถีชีวิตชาวสวนที่อาศัยอยู่ริมฝั่งคลอง ลงเรือที่วัดสุวรรณาราม ตำบลศาลายา แวะสวนกล้วยไม้ได้รับความรู้เรื่องการเลี้ยงกล้วยไม้ เที่ยวชมนาบัว สวนผลไม้ ไร่นาสวนผสม ส้มโอ ขนุนและกลุ่มแม่บ้านเกษตรกรมหาสวัสดิ์ ...</p>
          <p><a class="btn btn-primary" href="activity.html" role="button">อ่านต่อ &raquo;</a></p>
       </div>
       <!--
        <div class="col-lg-4">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
      -->
          <section class="row">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      &nbsp;&nbsp;<div class="col-md-7"><a class="pull-left" href="#">
      
      </a>
      
      <div class="footer">
        <p><a title="SP309 - 1/2557" href="http://moodle.utcc.ac.th/vle/course/view.php?id=351">SP309 - Advanced Web Programming (2014)</a></p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
            });
            
        </script>
        
        
<script>
	var xmlhttp = new XMLHttpRequest();

	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){ 
			document.getElementById("result").innerHTML = xmlhttp.responseText;		
		}
	}

	var url="loadtext.jsp";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
</script>   
  </body>
</html>
