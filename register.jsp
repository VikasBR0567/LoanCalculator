<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user registration page</title>
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
	font-weight: bold;
}
.style6 {color: #FF0000}
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
		   <li class="active"><a href="register.jsp"><span>Register</span></a></li>
          <li><a href="serverlogin.jsp"><span>Admin Server</span></a></li>
         
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
          <h2><span class="style3">User Registration Form </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="161" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <form action="insertdata.jsp" method="post" id="" enctype="multipart/form-data">
					  <table width="477">
                                                <tr>
                          <td width="181" height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>User Name (required)</strong></span></td>
                          <td width="284"><input id="name" name="userid" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Password (required)</strong></span></td>
                          <td><input type="password" id="password" name="pass" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Email Address (required)</strong></span></td>
                          <td><input id="email" name="email" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Mobile Number (required)</strong></span></td>
                          <td><input id="mobile" name="mobile" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Date of Birth (required)</strong></span></td>
                          <td><input id="dob" name="dob" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Select Gender (required)</strong></span></td>
                          <td><select id="s1" name="gender" style="width:175px;" class="text">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="65" bgcolor="#FFFF00"><span class="style4 style6"><strong>Address</strong></span></td>
                          <td><textarea id="address" name="address" rows="3" cols="25"></textarea></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Enter Pincode (required)</strong></span></td>
                          <td><input id="pincode" name="pincode" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FFFF00"><span class="style4 style6"><strong>Select Profile Picture(required) </strong></span></td>
                          <td><input type="file" id="pic" name="pic" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            <p align="right"><a href="userlogin.jsp" class="style4">Back</a></p>
                          </div></td>
                        </tr>
              </table>
            </form>
            <p class="spec">&nbsp;</p>
          </div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
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
