<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>server main page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {color: #3366FF}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style8 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	  <%String server=(String)application.getAttribute("server");%>
        <ul>
          <li ><a href="servermain.jsp"><span>Home </span></a></li>
          <li class="active"><a href="#"><span><%=server%></span></a></li>
          <li><a href="serverlogin.jsp"><span>Logout</span></a></li>
         
        </ul>
      </div>
      <div class="logo">
        <h1 class="style5">A Data Analytics Approach to the Cybercrime Underground Economy</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style3">Welcome to Server Main </span></h2>
          <div class="img"></div>
          </div>
        <div class="article">
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/CBAdmin.jpg" width="638" height="359" /></div>
          <div class="post_content">
            <p><strong><br />
            </strong></p>
            <p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Server Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><span class="style8"><a href="#">Home</a></span></li>
            <li class="style8"><a href="allusers.jsp">View Users and Authorize</a></li>
            <li class="style8"><a href="allfriends.jsp">All Friends and Status</a></li>
            <li class="style8"><a href="allposts.jsp">All Users  Posts</a></li>
			<li class="style8"><a href="ddos_users.jsp">View All Bruteforce Attackers</a></li>
            <li class="style8"><a href="spamacc_users.jsp">View All Crimeware Account Users</a></li>
            <li class="style8"><a href="compromisedacc_users.jsp">View All Noemal User Account</a> </li>
            <li class="style8"><a href="allspamusers_login.jsp">View All Spam Users  Behaviors</a></li>
            <li class="style8"><a href="allcompusers_login.jsp">View All Normal Users  Behaviors</a></li>
            <li class="style8"><a href="View_Spam_Results.jsp">View Sapm Users Chart</a>   </li>
			<li class="style8"><a href="View_DDOS_Results.jsp">View Brute forc3e Users Chart</a>   </li>
            <li><span class="style8"><a href="serverlogin.jsp">Logout</a></span></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
