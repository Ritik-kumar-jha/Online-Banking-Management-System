<%@page import="java.sql.*" %>
<% 
  int ran=Integer.parseInt(request.getParameter("accountNo"));
  session.setAttribute("ran",String.valueOf(ran));
  int uan=Integer.parseInt((String)session.getAttribute("accountno"));
  if(ran==uan)
  {
	  %>
	    <jsp:include page="accept-account.jsp"/>
	    
	    <div class='dvv'>
	       <label class='lah' id="error" style='color:red'>This Account Number <%=ran %> is your own account number</label>
	     
	    </div>
	  <%
	  return;
  }
  PreparedStatement ps=(PreparedStatement)application.getAttribute("selectamount");
  ps.setInt(1,ran);
  ResultSet rst=ps.executeQuery();
  if(!rst.next())
  {
	  %>
	    <jsp:include page="accept-account.jsp"/>
	    
	    <div class='dvv'>
	       <label class='lah' id="error" style='color:red'>This <%=ran %> does not exist</label>
	     
	    </div>
	  <%
	  return;
	  
  }

%>
<%@ include file="../../menu.jsp" %>
<div class='dvv'>
  <label class='lah' style='color:green'>You are transferring to <span><%=ran%></span></label>
</div> 
<form action="update-transfer-money.jsp"> 
  <table class='ta' style='background-color:magenta'>
    <tr>
     <td class='td'>Enter amount:</td>
     <td class='td'><input type='number' id="amount" name='amount' class='tb' required></td>
     <td class='td'><button class='bt'>Submit</button></td>
    </tr>
   </table>
  </form>