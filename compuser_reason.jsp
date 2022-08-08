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
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style8 {color: #FF0000}
.style9 {color: #FF6633}
.style10 {font-size: 14px}
.style11 {
	font-size: 16px;
	font-weight: bold;
}
.style13 {font-size: 16px; font-weight: bold; color: #FF6633;}
.style14 {color: #FF0000; font-weight: bold; }
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
          <h2><span class="style3 style8">Reason for Spam Account   </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="601" align="left"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4,textarea,fname,dt;
		int i=0,j=0,m=0,n=0;
		
		try 
		{
				String name=request.getParameter("name");
				
				String sql3="select * from posts where sender='"+name+"'";
				Statement st3=connection.createStatement();
				ResultSet rs3=st3.executeQuery(sql3);
			   while(rs3.next())
			   {
				i=rs3.getInt(1); 
				s1=rs3.getString(3);
				fname=rs3.getString(5);
				textarea=rs3.getString(6);
				dt=rs3.getString(9);
						
				if( fname.toLowerCase().endsWith(".ade")
							|| fname.toLowerCase().endsWith(".adp")
							|| fname.toLowerCase().endsWith(".bas")
							|| fname.toLowerCase().endsWith(".bat")
							|| fname.toLowerCase().endsWith(".chm")
							||  fname.toLowerCase().endsWith(".cmd")
							|| fname.toLowerCase().endsWith(".com")
							||  fname.toLowerCase().endsWith(".crt")
							|| fname.toLowerCase().endsWith(".dll")
							|| fname.toLowerCase().endsWith(".do*")
							||  fname.toLowerCase().endsWith(".hlp")
							|| fname.toLowerCase().endsWith(".hta")
							||  fname.toLowerCase().endsWith(".inf")
							|| fname.toLowerCase().endsWith(".ins")
							
							||  fname.toLowerCase().endsWith(".js")
							||  fname.toLowerCase().endsWith(".jse")
							||  fname.toLowerCase().endsWith(".lnk")
							||  fname.toLowerCase().endsWith(".md*")
							||  fname.toLowerCase().endsWith(".msc")
							||  fname.toLowerCase().endsWith(".msi")
							||  fname.toLowerCase().endsWith(".mst")
							|| fname.toLowerCase().endsWith(".ocx")
							||  fname.toLowerCase().endsWith(".pcd")
							||  fname.toLowerCase().endsWith(".pif")
							||  fname.toLowerCase().endsWith(".pot")
							|| fname.toLowerCase().endsWith(".reg")
							||  fname.toLowerCase().endsWith(".scr")
							||  fname.toLowerCase().endsWith(".sct")
							|| fname.toLowerCase().endsWith(".shb")
							||  fname.toLowerCase().endsWith(".shs")
							||  fname.toLowerCase().endsWith(".sys")
							||  fname.toLowerCase().endsWith(".url")
							||  textarea.startsWith("000000")
							|| textarea.endsWith("000000")
							|| textarea.startsWith("111111")
							|| textarea.endsWith("111111")
							||  textarea.startsWith("00000")
							|| textarea.endsWith("00000")
							|| textarea.startsWith("11111")
							|| textarea.endsWith("11111")
							
							)
							{}else{
				
				if(m==0){
				%>
				<tr>
		<td colspan="5" valign="middle" height="65" style="color:#000000;"><div align="center" class="style9 style11">Uploaded Documents</div></td>
				</tr>
				 <tr> 
				<td width="139" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Posted Image and Name</div></td>
				<td width="109" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Document Name</div></td>												                
				<td width="229" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Content</div></td>
				<td width="122" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Date and Time</div></td>
		   </tr>
				<%}
				
					%>
					
						<tr>
					<td width="139" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><div align="center"><a class="#" id="img1" href="#" ><input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="post"%>" style="width:100px; height:100px;"/></a><br /><%out.println(s1);%></div>
					</div></td>
		
			   <td width="109" valign="middle" height="65" style="color:#000000;">  <div align="center"><%out.println(fname);%></div></td>
			    <td width="229" valign="middle" height="65" style="color:#000000;">
			      <div align="justify">
			        <%out.println(textarea);%>
		          </div></td>
			    <td width="122" valign="middle" height="65" style="color:#000000;">  <div align="center"><%out.print(dt);%></div></td>
						</tr>
					
						<%m=2;
						
						}}
						
					String sql="select * from comments where commented_user='"+name+"'";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					while(rs.next())
					{
						s2=rs.getString(3);
						s3=rs.getString(5);
						//s4=rs.getString(6);
						
						String sql1="select * from posts where img_title='"+s2+"'";
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(sql1);
					   while(rs1.next())
					   {
					   	j=rs1.getInt(1);
						
						if(n==0){
				%>
				<tr>
		<td colspan="5" valign="middle" height="65" style="color:#000000;"><div align="center" class="style13">Feedback</div></td>
				</tr>
				 <tr> 
				<td width="139" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Posted Image</div></td>
				<td width="109" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Post name</div></td>												                <td width="229" height="65" valign="middle" bgcolor="#FFFF00" style="color:#000000;"><div align="center" class="style14">Feedback</div></td>
		   </tr>
				<%}
				
					%>
					
						<tr>
					<td width="139" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><div align="center"><a class="#" id="img1" href="#" ><input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div>
					</div></td>
		 		 <td width="109" valign="middle" height="65" style="color:#000000;">  <div align="center"><%out.println(s2);%></div></td>
			   <td width="229" valign="middle" height="65" style="color:#000000;">  <div align="center"><%out.println(s3);%></div></td>
						</tr>
					
						<%n=2;
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
          <p align="right"><a href="servermain.jsp" class="style8"></a></p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 align="right"><a href="compromisedacc_users.jsp" class="style8 style10">Back</a></h2>
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
