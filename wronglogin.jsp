<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user wronglogin page</title>
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
.style3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF0000;
}
.style8 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home </span></a></li>
          <li><a href="userlogin.jsp"><span>User</span></a></li>
          <li><a href="serverlogin.jsp"><span>Network Server</span></a></li>
         
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
          <h2><span class="style3"> Login Failed..!!! </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"><img src="images/CBAdmin.jpg" width="161" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0>
<tr>
<td width="405" height="189" align=center><span class="style8"><span class="style9"><span class="style8"><font class=sb4>Sorry.</font><BR>
        <BR>
        <font class=sb3>
Your login failed.<BR>
        </font></span></span></span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 height="7">
    <TR><TD height=7 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">This happens due to - Incorrect Username / Incorrect password<BR>
        </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 width="10">
    <TR>
      <TD width="10" height=9 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">In case you have forgotten your password,<BR>
        </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0>
    <TR><TD height=9 class="style9 style8"></TD></TR>
  </TABLE>
  <span class="style9 style8"><font class="sb3">click&nbsp; here to re enter correct&nbsp; username or password on homepage.</font></span><span class="style9"><font class="sb3"></font><font class="sb3"><BR>
  </font></span><font class="sb3">&nbsp;</font><font class="sb3"><BR>
  <%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
  <a href="userlogin.jsp">Click here to go back</a>	<br />	<a href="index.html"><span class="">Home Page</span></a>
  </BR>
  <%}
else{
%>
  <a href="serverlogin.jsp">Click here to go back</a><BR>
  <a href="index.html"><span>Home Page</span></a>
  <%}%>
  </font></td>
</tr>
</table>
            <p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="serverlogin.jsp">Network Server </a></li>
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
