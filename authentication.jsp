

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
		
		String att="DDOS_Attack";
		
		
		String username="";      
        String Password="";
		int nt=0;
		
	String type=request.getParameter("type");
	
	application.setAttribute("type",type);
    try{
         
    	
    	
		if(type.equalsIgnoreCase("user"))
		{
		
			 username=request.getParameter("userid");      
         	 Password=request.getParameter("pass");

			
			application.setAttribute("user",username);
			
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"' and status='authorized'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()==true)
			{
			
						
			
			String sql2="insert into login_history(username,login_dt)values('"+username+"','"+dt+"')";
			Statement stmt2 = connection.createStatement();
			stmt2.executeUpdate(sql2);
				
				response.sendRedirect("usermain.jsp");
			}
			
			else if(rs.next()!=true)
			{
			
			
			String sql2="SELECT * FROM user where username='"+username+"' ";
			Statement stmt2 = connection.createStatement();
			ResultSet rs2 =stmt2.executeQuery(sql2);
			if(rs2.next())
			{
			nt=rs2.getInt(12);
			String sql11="insert into ddos (uname,dt,att) values('"+username+"','"+dt+"','"+att+"')";
			Statement stmt11 = connection.createStatement();
			stmt11.executeUpdate(sql11);
			
			int count;
			count=nt+1;
			
			String sql111="update user set nattempt="+count+" where username='"+username+"' ";
			Statement stmt111 = connection.createStatement();
			stmt111.executeUpdate(sql111);
			
				response.sendRedirect("wronglogin.jsp");
				
			}
			
				
			}
			
			
			
			
		}
		
		else if(type.equalsIgnoreCase("server"))
		{
			
			String username1=request.getParameter("userid");      
         	String Password1=request.getParameter("pass");
			
			application.setAttribute("server",username);
			
			String sql="SELECT * FROM server where username='"+username1+"' and password='"+Password1+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("servermain.jsp");
				}
				else
				{
				response.sendRedirect("wronglogin.jsp");
			}	}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>