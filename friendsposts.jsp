<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Posts</title>
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
.style7 {font-size: 14px}
.style3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF0000;
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
	  <%String user=(String)application.getAttribute("user");%>
        <ul>
          <li ><a href="usermain.jsp"><span>Home </span></a></li>
          <li class="active"><a href="userlogin.jsp"><span><%=user%></span></a></li>
		   <li></li>
          <li><a href="userlogin.jsp"><span>Logout </span></a></li>
         
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
          <h2><span class="style3">Friends Posts  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="img"></div>
         <table width="533"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4;
		int i=0,j=0,m=0;
		
		try 
		{
				
											
				String sql1="select * from friends where (rfrom='"+user+"' and status='Accepted') || (rto='"+user+"' and status='Accepted')";
				Statement st1=connection.createStatement();
				ResultSet rs1=st1.executeQuery(sql1);
				while(rs1.next())
					{
						String rfrom =rs1.getString(2);
						String rto =rs1.getString(3);
						
						if(!(rfrom.equals(user)))
						{
						
						String sql2="select id from user where username='"+rfrom+"'";
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(sql2);
					   if(rs2.next())
					   {
					    i=rs2.getInt(1); 
						
						String sql3="select id from posts where sender='"+rfrom+"'";
						Statement st3=connection.createStatement();
						ResultSet rs3=st3.executeQuery(sql3);
					   while(rs3.next())
					   {
					    j=rs3.getInt(1); 
						
						
						if(m==0){
				%>
				 <tr> 
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Friend Image</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Friend Name</div></td>
				<td width="50" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Posted Image</div></td>
				<td width="60" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style9">Details</div></td>
		   </tr>
				<%}
						
						
						%>
					
						<tr>
					<td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
		 		 <td width="94" valign="middle" height="65" style="color:#000000;">  <%out.println(rfrom);%></td>
			    <td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
                <td  width="94" valign="middle" height="26" style="color:#000000;"align="center"><a href="viewpost.jsp?id=<%=j%>" class="style8">View post</a></td>
						</tr>
					
						<%m=2;
						}
						}
						}
						if(!(rto.equals(user)))
						{
						String sql4="select id from user where username='"+rto+"'";
						Statement st4=connection.createStatement();
						ResultSet rs4=st4.executeQuery(sql4);
					   if(rs4.next())
					   {
					    i=rs4.getInt(1); 
						
						String sql5="select id from posts where sender='"+rto+"'";
						Statement st5=connection.createStatement();
						ResultSet rs5=st5.executeQuery(sql5);
					   while(rs5.next())
					   {
					    j=rs5.getInt(1); 
						
						
						%>
					
						<tr>
					<td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
		 		 <td width="94" valign="middle" height="65" style="color:#000000;">  <%out.println(rto);%></td>
			    <td width="126" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
               <td  width="94" valign="middle" height="26" style="color:#000000;"align="center"><a href="viewpost.jsp?id=<%=j%>" class="style9">View post</a></td>
						</tr>
						
						<%
						m=2;
						}
						}
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
        </div>
        <div class="article">
        
          <div align="right"><a href="usermain.jsp" class="style8">Back</a>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
