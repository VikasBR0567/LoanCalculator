<title>users and admin authentication</title>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%		
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt=strDate+" "+strTime;
		
	
    try{
     		String user=(String)application.getAttribute("user");
			
			String sql="SELECT id FROM login_history where username='"+user+"' order by id desc";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
				int id=rs.getInt(1);
							
			String sql2="update login_history set logout_dt='"+dt+"' where username='"+user+"' and id="+id+"";
			Statement stmt2 = connection.createStatement();
			stmt2.executeUpdate(sql2);
				
				response.sendRedirect("userlogin.jsp");
			}
			
		
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>