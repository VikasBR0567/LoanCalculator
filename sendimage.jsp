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
.style3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-style: italic;
}
.style9 {color: #FF0000}
.style13 {color: #FF0000; font-weight: bold; }
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
          <h2><span class="style3 style9">Send Image and Message  </span></h2>
          <p class="infopost"><a href="#" class="com"></a></p>
         
          <table width="497" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
		  <%
	try 
	{
	
	%>
       
	
				 <form action="sendimage1.jsp" method="post">
			      
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style13">Image  Name or Title</span> </td>
                      <td width="347"><input id="iname" name="iname" class="text" /></td>
                    </tr>
                   
                   <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style13">Select Description </span></td>
                     <td><input name="file" type="file" id="file"  onchange="loadFileAsText()" size="29"></td>
                   </tr>
                  
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FFFF00"><span class="style13">Content</span></td>
                      <td>   <textarea name="textarea" id="textarea" cols="40" rows="10"></textarea></td>
                    </tr>
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FFFF00"><span class="style13">Image Uses</span></td>
                      <td><textarea id="use" name="use" rows="3" cols="40"></textarea></td>
                    </tr>
					 <tr>
                      <td height="63" align="left" valign="middle" bgcolor="#FFFF00"><span class="style13">Message</span></td>
                      <td><textarea id="msg" name="msg" rows="3" cols="40"></textarea></td>
                    </tr>
                    
                    <tr>
                      <td height="44" align="left" valign="middle"><p>&nbsp;
                        </p>
                        <p>&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                    <p>&nbsp;</p>
                          <input name="submit" type="submit" value="Next" />
                        </p>
                      </div></td>
                    </tr>
			  </form>
			 
	     
	      <%	String mesg=(String)application.getAttribute("mesg");
			if(mesg!=null){
			out.print("<h3>"+mesg+"</h3>");
			application.removeAttribute("mesg");
			}
			
					%> </table>
          <%			
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
          <p align="right"><a href="usermain.jsp" class="style9">Back</a></p>
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
