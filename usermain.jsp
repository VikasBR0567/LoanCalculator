<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
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
.style6 {font-size: 16px}
.style7 {font-size: 14px}
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
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
          <li><a href="logout.jsp"><span>Logout </span></a></li>
         
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
          <h2><span class="style3">Welcome to User Main </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="clr"></div>
          <div class="img"><img src="images/Cyber Crime User.jpg" width="446" height="253" /></div>
          <div class="post_content">
            <%
			try
			{
				SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
				Date now = new Date();
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
				
				String sql="select * from account_status where username='"+user+"'";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
				if(rs.next())
				{}
				else
				{
					String sql1="insert into account_status (username,acc_type,dt)values('"+user+"','Compromised account','"+dt+"')";
					Statement st1=connection.createStatement();
					st1.executeUpdate(sql1);
				}
			
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			%>
			
			
            <p class="spec">&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="user_details.jsp">View Profile</a></li>
            <li><a href="searchfriend.jsp">Serach Friends</a></li>
            <li><a href="viewrequests.jsp">View Friend Requests</a></li>
            <li><a href="deletefriend.jsp">View All Friends and Delete</a></li>
            <li><a href="sendimage.jsp">Post Image and Message</a></li>
            <li><a href="friendsposts.jsp">View Friends Posts</a></li>
            <li><a href="accountstatus.jsp">Account Status</a> </li>
            <li><a href="login_history.jsp">Login History</a> </li>
            <li><a href="logout.jsp">Logout</a></li>
            <li></li>
          </ul>
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
