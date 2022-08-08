<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*,java.lang.Object"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Details</title>
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
.style9 {color: #FF0000}
-->
</style>
<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>

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
          <h2><span class="style3 style9">Upload Image and Message  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
         
          <table width="497" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
		  <%
	try 
	{
	
					SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
	
	
				   String iname=request.getParameter("iname");
					String textarea=request.getParameter("textarea");
					String use=request.getParameter("use");
					String msg=request.getParameter("msg");
					String fname=request.getParameter("file");
					
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
							{
							String sql1="insert into negative(username,title,msg,dt)values('"+user+"','"+fname+"','"+textarea+"','"+dt+"')";
				Statement st1=connection.createStatement();
				int m=st1.executeUpdate(sql1);
				
					String sql2="select * from account_status where username='"+user+"'";
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(sql2);
					if(rs2.next())
					{
						String sql3="update account_status set acc_type='spam account',dt='"+dt+"' where username='"+user+"' and acc_type='Compromised account'";
						Statement st3=connection.createStatement();
						st3.executeUpdate(sql3);
					}
					else
					{
						String sql5="select * from account_status where username='"+user+"' and acc_type='spam account' ";
						Statement st5=connection.createStatement();
						ResultSet rs5=st5.executeQuery(sql5);
						if(rs5.next())
						{}
						else
						{
							String sql4="insert into account_status(username,acc_type,dt)values('"+user+"','spam account','"+dt+"')";
							Statement st4=connection.createStatement();
							st4.executeUpdate(sql4);
						}
					}
							
							
				}
				else
				{
						String sql6="select * from account_status where username='"+user+"'";
						Statement st6=connection.createStatement();
						ResultSet rs6=st6.executeQuery(sql6);
						if(rs6.next())
						{}
						else
						{
							String sql7="insert into account_status(username,acc_type,dt)values('"+user+"','Compromised account','"+dt+"')";
							Statement st7=connection.createStatement();
							st7.executeUpdate(sql7);
						}
				}
					
				 %>
			      <form action="insertimage.jsp" method="post" enctype="multipart/form-data">
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style9">Image  Name or Title</span> </td>
                     <td><input id="iname" name="iname" type="text" value="<%=iname%>"/>
					  <input id="textarea" name="textarea" type="hidden" value="<%=textarea%>"/>
					  <input id="use" name="use" type="hidden" value="<%=use%>"/>
					  <input id="msg" name="msg" type="hidden" value="<%=msg%>"/>
					   <input id="fname" name="fname" type="hidden" value="<%=fname%>"/>					  </td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style9">Select Image</span></td>
                      <td><input type="file" id="pic" name="pic" class="text" /></td>
                    </tr>
                    
                    <tr>
                      <td height="44" align="left" valign="middle"><p>&nbsp;
                        </p>
                        <p>&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                    <p>&nbsp;</p>
                          <input name="submit" type="submit" value="Post" />
                        </p>
                      </div></td>
                    </tr>
			  </form>
	      </table>
		   <%	String mesg=(String)application.getAttribute("mesg");
			if(mesg!=null){
			out.print("<h3>"+mesg+"</h3>");
			application.removeAttribute("mesg");
			}
			
								
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
    
		 
          
           
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <div class="clr"></div>
          <p align="right"><a href="sendimage.jsp" class="style9">Back</a></p>
        </div>
        <p class="pages">&nbsp;</p>
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
