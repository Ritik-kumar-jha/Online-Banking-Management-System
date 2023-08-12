<%@ include file="../../menu.jsp" %>
<html>
 <body onload="makeActive('balance')">
 <%
 PreparedStatement ps=(PreparedStatement)application.getAttribute("selectamount");
 ps.setString(1,(String)session.getAttribute("accountno"));
 ResultSet rst=ps.executeQuery();
 rst.next();
 int amount=rst.getInt(1);
 %> 
 <div class='dv'>
  <h2 style='color:green;font-family:cursive'>Hello user, your current balance amount is 
    <span>&#8377;<%=amount%></span>
  </h2>
 </div>
 </body>
</html>