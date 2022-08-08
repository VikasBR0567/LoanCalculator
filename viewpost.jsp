<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>post details</title>
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
.style3 {font-family: Georgia, "Times New Roman", Times, serif}
.style8 {color: #FF0000}
.style9 {color: #FFFF00}
.style10 {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
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
          <h2><span class="style10"> Post Details </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
          <div class="img"></div>
		  <table width="636" border="1"  >
					
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id=request.getParameter("id");
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from posts where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								//s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
						
						
					%>
					<tr>
					<td width="226" rowspan="10" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" style="width:200px; height:200px;" src="profile_pic.jsp?id=<%=i%>&type=<%="post"%>" align="bottom"  />
					  </a></div>					</td>
					</tr>
					
					<tr>
					  <td  width="105" height="44" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style9" style="margin-left:20px;"><strong>Friend Name</strong></div></td>
					   <td width="283" height="38" align="left" valign="middle"><div align="left" class="style4" style="margin-left:20px;">
				      <%out.println(s1);%></div></td>
					</tr>
					
					<tr>
					  <td  width="105" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style9" style="margin-left:20px;"><strong>Image Title </strong></div></td>
					   <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					
					<tr>
					  <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3 style9" style="margin-left:20px;"><strong>Filename</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s4);%>
                      </div></td>
			  </tr>
					
					<tr>
					  <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3 style9" style="margin-left:20px;"><strong>Description</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s5);%>
                      </div></td>
			  </tr>
			   <tr>
			     <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3 style9" style="margin-left:20px;"><strong>Uses</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s6);%>
                      </div></td>
			  </tr>
			  
			  <tr>
			    <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3 style9" style="margin-left:20px;"><strong>Message</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s7);%>
                      </div></td>
			  </tr>
			   <tr>
			     <td height="38" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style7 style14 style3 style9" style="margin-left:20px;"><strong>Posted Date</strong></div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style4" style="margin-left:20px;">
                        <%out.println(s8);%>
                      </div></td>
			  </tr>
			 
					<tr>
					  <td align="left" valign="middle" height="38" style="color: #2c83b0;"><div align="left " class="style7 style14 style4 style3" style="margin-left:20px;"><strong>Feedback</strong></div></td>
					  <td align="left" valign="middle" height="38">
					  <form id="form1" name="form1" method="post" action="comments.jsp?id=<%=i%>">
					    <label>
					      <textarea name="cmt"></textarea>
				        </label>
					   
					  </td>
			  </tr>
					<tr>
					  <td  width="226" align="left" valign="middle" height="23" style="color: #2c83b0;">&nbsp;</td>
					  <td  width="105" align="left" valign="middle" height="23">
					    <div align="right">
					      <input type="submit" name="Submit" value="Feed Back" />
		              </div></td>
					</tr>
					 </form>
					 
				<%
					 }
					 String msg=(String)application.getAttribute("msg");
					 if(msg!=null){
					 %><h3 class="style8"> <%=msg%></h3> <%
					 application.removeAttribute("msg");
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
        
          <div align="right"><a href="friendsposts.jsp" class="style8">Back</a>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
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
