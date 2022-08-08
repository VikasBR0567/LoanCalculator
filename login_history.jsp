<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>login history</title>
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
	font-weight: bold;
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
	  <%String user=(String)application.getAttribute("user");%>
        <ul>
          <li ><a href="usermain.jsp"><span>Home </span></a></li>
          <li class="active"><a href="#"><span><%=user%></span></a></li>
          <li><a href="logout.jsp"><span>Logout</span></a></li>
         
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
          <h2><span class="style3 style8">Login History  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="577" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
          <td  width="97" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style10 style11 style8">Login Date & Time</div></td>
        <td  width="116" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style10 style11 style8">Logout Date & Time</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
					String query="select login_dt,logout_dt from login_history where username='"+user+"'"; 
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(query);
					while ( rs.next() )
					{
						
						s1=rs.getString(1);
						s2=rs.getString(2);
					
							%>
							<tr>
							  <td  width="97" height="56" align="center" valign="middle"><%out.println(s1);%></td>
							  <%if(s2!=(null)){%>
							  <td  width="116" height="56" align="center" valign="middle"><%out.println(s2);%></td>
							  <%}else{%>
							   <td  width="116" height="56" align="center" valign="middle"><%out.print("improper logout");%></td>
							  <%}%>
							</tr>
							<%
					}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="usermain.jsp" class="style8">Back</a></p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="logout.jsp">Logout</a></li>
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
