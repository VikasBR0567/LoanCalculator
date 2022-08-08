<title>delete friends</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
				
					String id=request.getParameter("id");
					String name=request.getParameter("name");
					String user=(String)application.getAttribute("user");
					try {
						
						
						
						String query="delete from friends where id='"+id+"' and rfrom='"+user+"'"; 
						Statement st=connection.createStatement();
						int x=st.executeUpdate(query);
						if(x>0)
						{
							
							String msg=name+" is deleted from your Friends List";
							application.setAttribute("msg",msg);
							response.sendRedirect("deletefriend.jsp");
							
			  			 }
					connection.close();
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
