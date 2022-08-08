<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users operation history</title>
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
.style11 {color: #FF6633; font-weight: bold; }
.style12 {color: #FF6633; font-weight: bold; font-size: 16px; }
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
        <h1 class="style5">Profiling Online Social Behaviors for Compromised Account Detection</h1>
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
          <h2><span class="style3"> User Operation on Login &amp; Logout Duration </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"></div>
		  <table width="533" align="left"  cellpadding="0" cellspacing="0"  >
		   
		   
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
		String s1,s2,s3,s4;
		int i=0,j=0,m=0,n=0,p=0;
		String name11=request.getParameter("name");
		try 
		{
				
				String id=request.getParameter("id");
				
				String sql="select * from login_history where id='"+id+"'";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
			   while(rs.next())
			   {
					s1=rs.getString(2);
					s2=rs.getString(3);
					s3=rs.getString(4);
							
						String sql2="select rto,dt from friends where rfrom='"+s1+"' and (dt between '"+s2+"' and '"+s3+"')";
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(sql2);
						while(rs2.next())
						{
							String rto=rs2.getString(1);
							String dt=rs2.getString(2);
							
							String sql1="select id from user where username='"+rto+"'";
							Statement st1=connection.createStatement();
							ResultSet rs1=st1.executeQuery(sql1);
						    if(rs1.next())
						    { 
								i=rs1.getInt(1);
								
							if(m==0){
				%>
							
							 <tr> 
				<td colspan="4" width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style12">Requests Sent</div></td>
				</tr>
				
				 <tr> 
				<td width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">User Image</div></td>
				<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style9"><strong>User Name</strong></div></td>
				<td width="101" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Date and Time</div></td>

				
		   </tr>
				<%}%>
				
			<tr>
				<td width="133" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:100px; height:100px;"/></a></div></td>
				<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> <%out.println(rto);%></div></td>
				<td width="111" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> <%out.println(dt);%></div></td>
		   </tr>
			<%m=2;
			}
			}
					
			String sql5="select id,img_title,dt from posts where sender='"+s1+"' and (dt between '"+s2+"' and '"+s3+"')";
			Statement st5=connection.createStatement();
			ResultSet rs5=st5.executeQuery(sql5);
			 while(rs5.next())
			{
				int k=rs5.getInt(1);
				String title=rs5.getString(2);
				String dt=rs5.getString(3);
			if(n==0){
				%>
			 <tr> 
				<td colspan="4" width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style12">Posts Sent</div></td>
			</tr>
				
				 <tr> 
				<td width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Image</div></td>
				<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Post Name</div></td>
				<td width="101" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Date and Time</div></td>

				
		   </tr>
				<%}%>
				
			<tr>
				<td width="133" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=k%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
			<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> 
			  <%out.println(title);%></div></td>
				<td width="111" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> <%out.println(dt);%></div></td>
		   </tr>
			<%n=2;

			}		
		
			String sql3="select comment,title from comments where commented_user='"+s1+"' and (dt between '"+s2+"' and '"+s3+"')";
			Statement st3=connection.createStatement();
			ResultSet rs3=st3.executeQuery(sql3);
			while(rs3.next())
			{
				String cmt=rs3.getString(1);
				String title=rs3.getString(2);
				
				String sql4="select id from posts where img_title='"+title+"'";
				Statement st4=connection.createStatement();
				ResultSet rs4=st4.executeQuery(sql4);
				if(rs4.next())
				{
					 j=rs4.getInt(1);
				
				if(p==0){
				%>
			 <tr> 
				<td colspan="4" width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style12">Commented Posts</div></td>
			</tr>
				
				 <tr> 
				<td width="133" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Image</div></td>
				<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Post Name</div></td>
				<td width="101" valign="middle" height="65" style="color:#000000;"><div align="center" class="style11">Comment</div></td>

				
		   </tr>
				<%}%>
				
			<tr>
				<td width="133" valign="middle" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
				<input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="post"%>" style="width:100px; height:100px;"/></a></div></td>
			<td width="99" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> <%out.println(title);%></div></td>
				<td width="111" valign="middle" height="65" style="color:#000000;"><div align="center" class="style5"> <%out.println(cmt);%></div></td>
		   </tr>
			<%p=2;

				
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
          <p align="right">&nbsp;</p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 align="right"><a href="compu_behavior.jsp?name=<%=name11%>" class="style8 style10">Back</a></h2>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
        <p class="pages"><span></span> <a href="#"></a> <a href="#"></a></p>
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
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
        <p>&nbsp;</p>
        <ul class="fbg_ul"><li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
        <p><br />
        <a href="#"></a> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">.</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
