<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> user profile </title>
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
          <h2><span class="style3 style8"> User Details  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="552" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0,nt=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								nt=rs.getInt(12);

					%>
					<tr>
					<td width="226" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"/></div></td>
					</tr>
					
					<tr>
					  <td  width="150" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">Name</div></td>
	  <td  width="168" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="150" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">E-Mail</div></td>
					  <td  width="168" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="150" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">Mobile</div></td>
					  <td  width="168" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="150" align="left" valign="middle" height="46" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">Date Of Birth</div> </td>                    	
<td  width="168" align="left" valign="middle" height="46"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="150" align="left" valign="middle" height="59" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">Address</div></td>
					  <td  width="168" align="left" valign="middle" height="59"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s5);%></div></td>
					  </tr>
					<tr>
					  <%
					  if(nt>=3)
					  {
					  %>
					   <td  width="150" align="left" valign="middle" height="59" style="color: #00CC99;"><div align="left" class="style14 style7 style8" style="margin-left:20px;">Account Status</div></td>
					  <td  width="168" align="left" valign="middle" height="59"><div align="left" class="style11" style="margin-left:20px;"><%out.println("DDOS Attacker");%></div></td>
					  <%}%></tr>
					  
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
			
			
        </div>
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
