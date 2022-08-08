<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users &amp; friends  list</title>
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
.style8 {color: #FF0000}
.style10 {color: #FFFF00}
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
          <h2><span class="style3">All Users &amp; Friends List </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="573" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="126" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10"><strong>User Image </strong></div></td>
			  <td  width="81" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10"><strong>Username</strong></div></td>
              <td  width="126" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10"><strong>Friend Image </strong></div></td>
              <td   width="111" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10"><strong>Friend Name </strong></div></td>
              <td  width="113" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10"><strong>Status</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select rfrom,rto,status from friends"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		
			String query1="select id from user where username='"+s1+"'"; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if(rs1.next())
			{
				i=rs1.getInt(1);
			%>
            <tr>
			<td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="81" height="56" align="center" valign="middle" ><%out.println(s1);%></td>
			  <%
			    String query2="select id from user where username='"+s2+"'"; 
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(query2);
				if(rs2.next())
				{
					i=rs2.getInt(1);
			  %>
			  <td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
			 <%}%>
              <td  width="111" height="56" align="center" valign="middle"><%out.println(s2);%></td>
			   <td  width="113" height="56" align="center" valign="middle"><%out.println(s3);%></td>
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
          <p align="right"><a href="servermain.jsp" class="style8">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="serverlogin.jsp">Logout</a></li>
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
