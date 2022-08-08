<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>users login and logout history</title>
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
	font-style: italic;
}
.style8 {color: #FF0000}
.style9 {color: #FF6633}
.style10 {font-size: 14px}
.style11 {color: #FF6633; font-weight: bold; }
.style12 {color: #FF0000; font-weight: bold; }
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
          <h2><span class="style3"> Users Login &amp; Logout History </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="644" align="left"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4;
		int i=0,j=0,m=0,k=0;
		
		try 
		{
				
				String name=request.getParameter("name");
				
				String sql3="select * from login_history where username='"+name+"'";
				Statement st3=connection.createStatement();
				ResultSet rs3=st3.executeQuery(sql3);
			   while(rs3.next())
			   {
					j=rs3.getInt(1);
					s1=rs3.getString(2);
					s2=rs3.getString(3);
					s3=rs3.getString(4);
					
						k=k+1;
							
				if(m==0){
				%>
				 <tr>
				   <td width="47" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9 style8"><strong>Id</strong></div></td> 
				
				<td width="164" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style11 style8">Login Date</div></td>
				<td width="163" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style11 style8">Logout Date</div></td>
				<td width="163" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style11 style8">Activity Details</div></td>
		   </tr>
				<%}
				
					%>
					
				<tr>
				  <td width="164" valign="middle" height="65" style="color:#000000;"><div align="center"><%out.println(k);%></div></td>
				  <td width="164" valign="middle" height="65" style="color:#000000;"><div align="center"><%out.println(s2);%></div></td>
				  <td width="163" valign="middle" height="65" style="color:#000000;"><div align="center"><%out.println(s3);%></div></td>
				  <td width="130" valign="middle" height="65" style="color:#000000;"> <a href="compuserbehavior.jsp?id=<%=j%>&name=<%=name%>"><div align="center" class="style12">View Activity Sequence</div></a></div></td>
				</tr>
					
						<%m=2;
						}
						
					
	
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
          <p align="right">&nbsp;</p>
          <div class="clr"></div>
      </div>
        <div class="article">
          <h2 align="right"><a href="allcompusers_login.jsp" class="style8 style10">Back</a></h2>
          <div class="clr"></div>
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
    </div>
      <div class="clr"></div>
  </div>
</div>
</div>
<div align=center></div>
</body>
</html>
