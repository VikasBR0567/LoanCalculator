<title>Insert comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*,java.lang.Object"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
					
					
					
				
					int i=0;
					ArrayList al=new ArrayList();
					ArrayList al1=new ArrayList();
					String id=request.getParameter("id");
					String user=(String)application.getAttribute("user");
					String cmt=request.getParameter("cmt");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						String query="select * from posts where id='"+id+"'"; 
						Statement st=connection.createStatement();
						ResultSet rs=st.executeQuery(query);
						if ( rs.next() )
						{
							
							String s1=rs.getString(2);
							String s2=rs.getString(3);
							
         
    	
						PreparedStatement ps=connection.prepareStatement("insert into comments(sender,title,commented_user,comment,dt) values(?,?,?,?,?)");
						ps.setString(1,s1);
						ps.setString(2,s2);	
						ps.setString(3,user);
						ps.setString(4,cmt);
						ps.setString(5,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							
				String n1="rubbish",n2="abrasive",n3="abuses",n4="afraid",n5="aggressive",n6="brash",n7="brutish",n8="filthy",n9="bad",n10="abusive",n11="addicts",n12="aggressive",n13="ambiguous",n14="ambush",n15="cheap",n16="low",n17="not so good",n18="angry",n19="anomalous",n20="attacks",n21="awfulness",n22="brainless",n23="breaks",n24="bulky",n25="not",n26="Ridiculous",n27="Danger";
							
							al.add(n1);
							al.add(n2);
							al.add(n3);
							al.add(n4);
							al.add(n5);
							al.add(n6);
							al.add(n7);
							al.add(n8);
							al.add(n9);
							al.add(n10);
							al.add(n11);
							al.add(n12);
							al.add(n13);
							al.add(n14);
							al.add(n15);
							al.add(n16);
							al.add(n17);
							al.add(n18);
							al.add(n19);
							al.add(n20);
							al.add(n21);
							al.add(n22);
							al.add(n23);
							al.add(n24);
							al.add(n25);
							al.add(n26);
							al.add(n27);
							
							for(i=0;i<al.size();i++)
							{
							String neg=(String)al.get(i);
							if(cmt.toLowerCase().indexOf(neg.toLowerCase())>=0)
							{
							al1.add(neg);
							}
							}
							if(!(al1.isEmpty())){
				String sql1="insert into negative(username,title,msg,word,dt)values('"+user+"','"+s2+"','"+cmt+"','"+al1+"','"+dt+"')";
				Statement st1=connection.createStatement();
				int m=st1.executeUpdate(sql1);
				if(m>0){
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
					String sql4="insert into account_status(username,acc_type,dt)values('"+user+"','spam account','"+dt+"')";
					Statement st4=connection.createStatement();
					st4.executeUpdate(sql4);
				}
				}
				}
				
				else
				{
					String sql5="select * from account_status where username='"+user+"'";
					Statement st5=connection.createStatement();
					ResultSet rs5=st5.executeQuery(sql5);
					if(rs5.next())
					{
					
					}
					else
					{
					
					String sql7="insert into account_status(username,acc_type,dt)values('"+user+"','Compromised account','"+dt+"')";
					Statement st7=connection.createStatement();
					st7.executeUpdate(sql7);
					}
				}
				
							

							
							String msg="Your comment posted Successfully";
							application.setAttribute("msg",msg);
							response.sendRedirect("viewpost.jsp");
							
			  			 }
						 }
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
