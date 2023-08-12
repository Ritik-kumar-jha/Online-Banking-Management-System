<%@page import="java.sql.*"%>
<html>
<head>
  <link href='/bank-app/CSS/style.css' rel='stylesheet'>
  <link href='/bank-app/CSS/bootstrap.min.css' rel='stylesheet'>
</head>
<body class='bgi'>
 <%
   String uid=request.getParameter("userid");
   String upass=request.getParameter("password");
   PreparedStatement ps=(PreparedStatement) application.getAttribute("selectuser");
   ps.setString(1,uid);
   ResultSet rst=ps.executeQuery();
   if(rst.next())
   {
	   String dpass=rst.getString(2);
	   if(upass.equals(dpass))
	   {
		   String name=rst.getString(1);
		   String an=rst.getString(3);
		   session.setAttribute("username",name);
		   session.setAttribute("accountno",an);
		   
		   response.sendRedirect("/bank-app");
	   }
	   else
	   {
		   %>
		    <jsp:include page="login.jsp" >
		    <jsp:param value="Password is Incorrect" name="msg"/>
		    </jsp:include>
		   <% 
	   }
	    
   }
   else
   {
	   %>
	    <jsp:include page="login.jsp">
	    <jsp:param value="Userid Does not Exist" name="msg"/>
	    </jsp:include>
	   <% 
	   
   }
    

    
 %>
</body>
</html>