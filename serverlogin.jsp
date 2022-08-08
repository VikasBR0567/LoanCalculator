<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>server login page</title>
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
.style9 {font-size: 14px; color: #FF0000; }
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
          <li  class="active"><a href="serverlogin.jsp"><span>Network Server</span></a></li>
         
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
          <h2>&nbsp;</h2>
          <h2><span class="style3">Server Login </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"><img src="images/CBAdmin.jpg" width="161" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <form action="authentication.jsp?type=<%="server"%>" method="post">
		  
          <p>&nbsp;</p>
          <table width="460" border="5" bordercolor="#FF0000">
            <tr>
              <td width="162" height="48" bgcolor="#FFFF00"><span class="style9">User Name (required)</span></td>
                    <td width="347"><input id="name" name="userid" class="text" /></td>
            </tr>
            <tr>
              <td height="44" bgcolor="#FFFF00"><span class="style9">Password (required)</span></td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
            </tr>
            <tr>
             <td height="51"></td>
          <td><span class="style2">
            <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
            <input name="Reset" type="reset" class="style3" value="Reset" />
          </span></td>
            </tr>
          </table>
		  </form>
            <p class="spec">&nbsp;</p>
          </div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="serverlogin.jsp">Admin Server </a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
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
