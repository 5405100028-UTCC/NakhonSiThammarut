<%@ page language="java" contentType="text/html; charset=UTF-8" language="java"
import="java.sql.*" errorPage=" " %>
    
<%
request.setCharacterEncoding("UTF-8");
 String username_ses = (String)session.getAttribute("username11");

%>

<!DOCTYPE HTML>
<html>
<head>
    <title>หน้าหลัก</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">    
    <link rel="stylesheet" type="text/css" href="css/form.css" />
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="phonegap.js"></script> 
    <script src="jquery.mobile-1.3.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body id="main">
<body>

<!-- ==========================login ============================ -->

<% if(null == username_ses){ %>

<form class="navbar-form navbar-right" method="post" action="chkLogin.jsp">
    <input type="text" name="username" class="form-control"  >
    <input type="password" name="password" class="form-control" >
    <input type="submit" value="Login"  class="btn btn-default">
    
</form>
<% } %>

<!-- ========================= Logout =========================== -->
<% if(null !=username_ses){ %>
	
	<ul class="navbar-form navbar-right">
    <%=username_ses %>
    <a href= "Logout.jsp">Logout</a>
    </ul>
    

<% } %>



<!--  =========================================================== -->
<br></br>
<marquee behavior="scroll" scrolldelay="100" ><div id="result"></div> </marquee>
<form action="">
  <!-- ======================== Menu bar ========================= -->
  <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">นครศรีธรรมราช</a>
      
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">หน้าหลัก</a></li>       
        </ul>
        
      <ul class="nav navbar-nav navbar-left">
      	 <li><a href="#">ข้อมูลจังหวัด</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">สถานที่ท่องเที่ยว <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          	 <li role="presentation" class="dropdown-header">อำเภอเมือง</li>
            <li><a href="#">วัดพระมหาธาตุวรมหาวิหาร</a></li>
            <li><a href="#">พิพิธพันธ์เมือง</a></li>
            <li><a href="#">กำแพงเมืองเก่า</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
         <li><a href="#">ประเพณีและวัฒนธรรม</a></li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">ที่พัก <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          	 <li role="presentation" class="dropdown-header">อำเภอเมือง</li>
            <li><a href="#">โรงแรมทวิลโลตัส</a></li>
            <li><a href="#">โรงแรมลิกอ</a></li>
            <li><a href="#">โรงแรมแกรนด์ปาร์ค</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        <li><a href="provider.html"> ผู้จัดทำ </a></li>
        <li ><a href="registerform.html">สมัครสมาชิก</a></li>
        
         
      </ul>
    </div>
  </div>
 </nav> 
<!-- ====================== Carousel,Banner ====================== -->
 <center> <img src= "img-01.jpg" > </center>
    
      <!-- Indicators 
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
         <center> <img src= "Photo/Banner/b1.jpg" alt="First slide"></center>
          <div class="container">
            <div class="carousel-caption">
              <h1>พระบรมธาตุเจดีย์</h1>
              
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
         <center> <img src= "Photo/Banner/b2.jpg" alt="Second slide"></center>
          <div class="container">
            <div class="carousel-caption">
              <h1>พระบรมธาตุเจดีย์</h1>
              
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <center> <img src= "Photo/Banner/b3.jpg" alt="Third slide"> </center>
          <div class="container">
            <div class="carousel-caption">
              <h1>น้ำตกกรุงชิง</h1>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div> -->

</form>
<!--  ============================================================================== -->


     
<h2 class="page-header"></h2>    
   
      <div class="row">
        <div class="col-lg-3">
          <center><img class="img-circle" src= "Photo/index2/index2.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h4>วัดพระมหาธาตุวรมหาวิหาร</h4></center>
          <p>วัดพระมหาธาตุเมืองนคร ตั้งอยู่ในตัวเมืองนครศรีธรรมราช มี “พระบรมธาตุเมืองนคร” หรือ “องค์พระบรมธาตุเจดีย์” เป็นสิ่งศักดิ์สิทธิ์สำคัญคู่บ้านคู่เมือง ตามตำนานกล่าวว่า สร้างขึ้นครั้งแรกประมาณ ปี พ.ศ. 854 ด้วยศิลปะการก่อสร้างแบบศรีวิชัย (หลายคนเชื่อว่ามีลักษณะคล้ายพระบรมธาตุไชยา จ.สุราษฎร์ธานี) ภายในบรรจุพระทันตธาตุ </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3">
          <center><img class="img-circle" src="Photo/index2/index1.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h4>น้ำตกกรุงชิง</h4></center>
          <p>น้ำตกกรุงชิง น้ำตกประวัติศาสตร์ น้ำตก กรุงชิง ที่นี่มีประวัติศาสตร์จากการที่เคยเป็นที่ตั้งของกลุ่ม คอมมิวนิสต์ แต่ปัจจุบันกลายมาเป็นแหล่งท่องเที่ยวที่สวยงามที่ มีผู้คนมาเยือนไม่ขาดสายด้วยน้ำตกขนาด 6 ชั้น ที่ลดหลั่นความสูงลงมาต่างๆ ระดับกัน น้ำตกกรุงชิงมีที่มาของชื่อนี้มาจากชื่อของ “ต้นชิง” ซึ่งเป็นพืชในกระกูลวงค์ปาล์มชนิดหนึ่ง</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-3">
          <center><img class="img-circle" src="Photo/index2/index.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h4>หาดในเพลา</h4></center>
          <p>หาดในเพลา ต้องเรียกว่าหาดนี้เป็นหาดดังที่สุดของอ่าวขนอม เป็นที่รู้จักของท่องเที่ยวทั้งชาวไทยและชาวต่างชาติ เป็นหาดที่อยู่ทางตอนใต้สุดของอ่าว ลักษณะเป็นแนวยาวโค้งครึ่งวงกลมขนานกับแนวภูเขาที่ตอนปลายยื่นไปในทะเล หาดทรายเป็นทรายขาวละเอียดเนียนนุ่ม สลับกับหาดหินและโขดหินเป็นช่วงๆ มีธารน้ำที่ไหลมาจากน้ำตกหินลาด น้ำทะเลใสสะอาดสีครามในอ่าวกว้าง เหมาะสำหรับการลงเล่นน้ำทะเล สำหรับคนชอบมองทะเล ภาพมุมต่าง ๆ</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
        	<div class="col-lg-3">
          <center><img class="img-circle" src="Photo/index2/index3.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h4>กำแพงเมืองเก่า</h4></center>
          <p>วัดพระมหาธาตุเมืองนคร ตั้งอยู่ในตัวเมืองนครศรีธรรมราช มี “พระบรมธาตุเมืองนคร” หรือ “องค์พระบรมธาตุเจดีย์” เป็นสิ่งศักดิ์สิทธิ์สำคัญคู่บ้านคู่เมือง ตามตำนานกล่าวว่า สร้างขึ้นครั้งแรกประมาณ ปี พ.ศ. 854 ด้วยศิลปะการก่อสร้างแบบศรีวิชัย (หลายคนเชื่อว่ามีลักษณะคล้ายพระบรมธาตุไชยา จ.สุราษฎร์ธานี) ภายในบรรจุพระทันตธาตุ </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>

        
     <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
                var xmlhttp = new XMLHttpRequest();//สร้าง object 
            	xmlhttp.onreadystatechange=function(){ //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
            		if(xmlhttp.readyState==4 && xmlhttp.status==200){
            			document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
            		}
            	}
            	var url = "Slide.jsp";
            	//เปิด connection
            	xmlhttp.open("GET",url,true);
            	xmlhttp.send();
            
            });
            
        </script>
      
     
</body>
</html>




