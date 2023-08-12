<%@ include file="../../menu.jsp" %>
<html>
 <body onload="makeActive('withdraw')">
 <%
 int amount=(Integer.parseInt(request.getParameter("amount")));
 String accountno=(String)session.getAttribute("accountno");
 PreparedStatement ps1=(PreparedStatement)application.getAttribute("selectamount");
 ps1.setString(1,accountno);
 ResultSet rst=ps1.executeQuery();
 rst.next();
 int balance=rst.getInt(1);
 if(amount>balance)
 {
	 %>
	    <div class='dv'>
       <h2 style='color:red;font-family:cursive'>You do not have sufficient amount</h2>
        </div>
        return;
	 <% 
 }
 
 PreparedStatement ps=(PreparedStatement)application.getAttribute("withdrawmoney");
 ps.setInt(1,amount);
 ps.setString(2,accountno);
 ps.executeUpdate();
 
 %> 
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'> Amount <span>&#8377;<%=amount%> has been debited from your account</span>
  </h2>
 </div>
 </body>
</html>