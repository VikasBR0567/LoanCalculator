<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users posts</title>
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
.style9 {color: #FF0000; font-weight: bold; }
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
          <h2><span class="style3 style8">All Users Posts  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="533" align="left"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4;
		int i=0,j=0,m=0;
		
		try 
		{
				
				
				String sql3="select * from posts";
				Statement st3=connection.createStatement();
				ResultSet rs3=st3.executeQuery(sql3);
			   while(rs3.next())
			   {
				j=rs3.getInt(1); 
				s1=rs3.getString(2);
						
				String sql2="select id from user where username='"+s1+"'";
				Statement st2=connection.createStatement();
				ResultSet rs2=st2.executeQuery(sql2);
			   if(rs2.next())
			   {
			 
				i=rs2.getInt(1); 
				
				if(m==0){
				%>
				 <tr> 
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">User Image</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">User Name</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Posted Image</div></td>
				<td width="60" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Details</div></td>
		   </tr>
				<%}
				
					%>
					
						<tr>
					<td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
		 		 <td width="94" valign="middle" height="65" style="color:#000000;">  <%out.println(s1);%></td>
			    <td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
                <td  width="94" valign="middle" height="26" style="color:#000000;"align="center"><a href="viewpostdetails.jsp?id=<%=j%>" class="style8">View post</a></td>
						</tr>
					
						<%m=2;
						}
						}
					
	
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
         
        
        <p align="right"><a href="allposts.jsp" class="style8"></a></p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <div align="right"><a href="servermain.jsp" class="style8">Back</a> </div>
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
