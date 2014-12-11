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
       
            </ul> 
		<h3 class="text-muted"></h3>
        <ul class="nav nav-justified">
          <li class="active"><a href="index.jsp">หน้าแรก</a></li>
          <li><a href="history.html">ประวัติ</a></li>
          <li><a href="tour.html">สถานที่ท่องเที่ยว</a></li>
          <li><a href="travel.html">การเดินทาง</a></li>
          <li><a href="info.html">ข้อมูลผู้พัฒนา</a></li>
          <%
            String username_ses = (String)session.getAttribute("username_ses");
            String firstname_ses = (String)session.getAttribute("firstname_ses");
            if(username_ses==null) { %>
            <li><a href="login.html">เข้าสู่ระบบ</a></li>
            <% } else { %>
            <li><a href="logout.jsp">Hi&nbsp;&nbsp;<%=firstname_ses%>&nbsp;&nbsp;ออกจากระบบ</a></li>
         <% } %> 
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
      
      <div class="row">
			<div class="col-lg-12">
				<h2 class="page-header"><font color = "#0080FF">แนะนำสถานที่ท่องเที่ยว</font></h2>
			</div>
			<div class="row">
				<div class="col-md-12">

					<div id="detail"></div>

				</div>
			</div>

		</div>

      <!-- Example row of columns -->
      <!-- 
      <div class="row">
        <div class="col-lg-4">
          <h2><font color = "#0080FF">ประวัติ</font></h2>
          <p>นครปฐมจังหวัดเล็กๆ ซึ่งอยู่ไม่ไกลจากกรุงเทพฯ ด้วยระยะทางประมาณ 56 กิโลเมตร เป็นเมืองแห่งปูชนียสถานเก่าแก่ที่สำคัญคือ“พระปฐมเจดีย์” ซึ่งนับเป็นร่องรอยแห่งแรกของการเผยแพร่อารยธรรมพุทธศาสนาเข้ามาในประเทศไทย ทั้งยังเป็นเมืองที่อุดมสมบูรณ์มากมายไปด้วยผลไม้และอาหารขึ้นชื่อนานาชนิด ...</p>
          <p><a class="btn btn-primary" href="history.html" role="button">อ่านต่อ &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2><font color = "#0080FF">กิจกรรมท่องเที่ยว</font></h2>
          <p>ล่องเรือเที่ยวคลองมหาสวัสดิ์
เป็นกิจกรรมท่องเที่ยวเชิงเกษตรล่องเรือเพื่อเที่ยวชมวิถีชีวิตชาวสวนที่อาศัยอยู่ริมฝั่งคลอง ลงเรือที่วัดสุวรรณาราม ตำบลศาลายา แวะสวนกล้วยไม้ได้รับความรู้เรื่องการเลี้ยงกล้วยไม้ เที่ยวชมนาบัว สวนผลไม้ ไร่นาสวนผสม ส้มโอ ขนุนและกลุ่มแม่บ้านเกษตรกรมหาสวัสดิ์ ...</p>
          <p><a class="btn btn-primary" href="activity.html" role="button">อ่านต่อ &raquo;</a></p>
       </div>

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
<script>
		$(document).ready(function() {
			var jsontext = '{"tour":['
				+ '{"pic":"p1.jpg","name":"องค์พระปฐมเจดีย์","data1":"เป็นปูชนียสถานอันสำคัญยิ่งของประเทศไทย อยู่ภายในวัดพระปฐมเจดีย์ราชวรมหาวิหาร ใจกลางเมืองนครปฐม สันนิษฐานว่าสร้างขึ้นระหว่าง พ.ศ. 350-1000 เป็นพระสถูปลักษณะโอค่ำ มีความสูง 19 วา 2 ศอก ต่อมาในปี พ.ศ. 2396 พระบาทสมเด็จพระจอมเกล้าเจ้าอยู่หัวโปรดให้บูรณะโดยสร้างเจดีย์องค์ใหม่ใหญ่มหึมาหุ้มเจดีย์องค์เดิมไว้ ภายในมีส่วนสูงถึง 3 เส้น 1 คืบ 10 นิ้ว ฐานวัดโดยรอบ 5 เส้น 17 ว่า 3 ศอก การบูรณะมาเสร็จในสมัยสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว ณ ซุ้มพระปฐมเจดีย์เป็นที่ประดิษฐานพระร่วงโรจนฤทธิ์ ซึ่งเป็นพระพุทธรูปที่พระบาทสมเด็จพระมงกุฎเกล้าเจ้าอยู่หัวทรงได้มาจากเมืองศรีสัชนาลัย ในสภาพชำรุดปรักหักพังเหลือแต่พระพักตร์ พระกร และพระบาท พระองค์ทรงโปรดให้หล่อพระพุทธรูปนี้ขึ้นมาใหม่ มีความสูง 12 ศอก 4 นิ้ว แล้วนำไปประดิษฐานที่ซุ้มพระปฐมเจดีย์ เมื่อวันที่ 2 พฤศจิกายน พ.ศ. 2458 งานเทศกาลนมัสการพระปฐมเจดีย์ จัดขึ้นในช่วงวันขึ้น 12 ค่ำ ถึง แรม 5 ค่ำ เดือน 12 ของทุกปี จัดในช่วงเทศกาลลอยกระทง" },'
				+ '{"pic":"p2.jpg","name":"พุทธมณฑล","data1":"เป็นสถานที่สำคัญทางพุทธศาสนา ตั้งอยู่ที่ตำบลศาลายา มีพื้นที่ประมาณ 2,500 ไร่ พุทธมณฑลเป็นสถานที่ซึ่งรัฐบาล และประชาชนชาวไทยร่วมใจกันจัดสร้างขึ้นในปี พ.ศ. 2500 เนื่องในโอกาสที่พุทธศาสนาเจริญรุ่งเรืองมาได้ถึง 2,500 ปี บริเวณจุดศูนย์กลางของพุทธมณฑล เป็นที่ประดิษฐานพระพุทธรูปปางลีลา เป็นพระประธานของพุทธมณฑลมีความสูง 2,500 กระเบียด (ประมาณ 15.875 เมตร) พระบาทสมเด็จพระเจ้าอยู่หัวทรงพระราชทานนามว่า “พระศรีศากยะทศพลญาณประธานพุทธมณฑลสุทรรศน์” รอบองค์พระประธานเป็นสถานที่จำลองของสังเวชนียสถาน 4 ตำบล คือ ตำบลอันเป็นที่ประสูติ ตรัสรู้ แสดงปฐมเทศนา และเสด็จดับขันธ์ปรินิพพาน นอกจากนี้ยังมีศาสนสถานที่สำคัญอื่น ๆ ได้แก่ พระวิหารพุทธมณฑล ตำหนักสมเด็จพระสังฆราช และที่พำนักสงฆ์อาคันตุกะ หอประชุมทางกิจการพระพุทธศาสนา ศาลาปฏิบัติกรรมฐาน พิพิธภัณฑ์ทางพุทธศาสนา หอสมุดพระพุทธศาสนา สวนไม้ดอกไม้ประดับต่าง ๆ และในปัจจุบันใช้เป็นสถานที่ประกอบพิธีในวันสำคัญทางศาสนา อาทิ วันวิสาขบูชา วันมาฆบูชา วันอาสาฬหบูชา เป็นต้น" },'
				+ '{"pic":"p3.jpg","name":"วัดไร่ขิง","data1":"ตั้งอยู่ที่ตำบลไร่ขิง บนฝั่งแม่น้ำท่าจีนหรือแม่น้ำนครชัยศรี ห่างจากกรุงเทพฯ ประมาณ 32 กิโลเมตร วัดไร่ขิงนี้ สมเด็จพระมหาสมณเจ้ากรมพระยาวชิรญาณวโรรส วัดบวรนิเวศวิหาร วัดไร่ขิงเป็นวัดที่พุทธศาสนิกชนรู้จักกันดี นิยมเดินทางไปนมัสการหลวงพ่อวัดไร่ขิงกันอยู่เสมอ ทุกวันศุกร์และเช้าอาทิตย์จะมีตลาดนัดอาหารและผลไม้จำหน่าย ที่บริเวณริมแม่น้ำหน้าวัดเป็นเขตอภัยทาน ร่มรื่น มีปลาสวายตัวโตนับพันอาศัยอยู่ นักท่องเที่ยวสามารถซื้อขนมปังเลี้ยงอาหารปลาได้อีกด้วย" }]}';


		var result = eval("(" + jsontext + ")");
		for (var i = 0; i < result.tour.length; i++) {
			$("#detail")
					.append(
							"<div><img src=\"pic/"+result.tour[i].pic+"\" width=\"200\" height=\"250\" align=\"left\" style=\"margin-right: 16px;\" alt=\"...\">");
			$("#detail").append( 
					"<h3>" + result.tour[i].name
							+  "</h3>");
			$("#detail").append(
					"<p>" + result.tour[i].data1
							+ "</p>");
			$("#detail").append("<br><br><br><br><br><hr></div>");
		}
		});
	</script>
  </body>
</html>
