<%@page import="java.sql.*" %>
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("/bank-app/users/login.jsp");
	return;
}
 %>
<html>
 <head>
  <link href='/bank-app/CSS/style.css' rel='stylesheet'>
  <link href='/bank-app/CSS/style1.css' rel='stylesheet'>
  <link href='/bank-app/CSS/bootstrap.min.css' rel='stylesheet'>
  <script src='/bank-app/JS/script.js'></script>
 </head>
 <body>
<img src="/bank-app/images/bank.jpg" style='height:28%;width:100%'>
<hr style='border:1px solid red'>
<%
String name=(String)session.getAttribute("username");
String an=(String)session.getAttribute("accountno");
%>
<table style="width:90%;margin:auto">
  <tr>
   <td align='center'>
   	 <span class='na'>User Name:</span><span style='font-size:1.7vw'><%=name%></span>
   	</td>
   <td align='center'>
   	 <span class='na'>Account Number:</span><span id="userAccountNo" style='font-size:1.7vw'><%=an%></span>
   </td>
  </tr>
</table>
<hr style='border:1px solid red'>
<hr style='border:2px solid blue'>
<table class='tamn' border='1'>
 <tr>
  <td align='center'><a id='home' class='mna' href='/bank-app'>Home</a></td>
  <td align='center'><a id='balance' class='mna' href='/bank-app/transaction/show-balance.jsp'>Show Balance</a></td>
  <td align='center'><a id='deposit' class='mna' href='/bank-app/transaction/deposit-money.jsp'>Deposit Money</a></td>
  <td align='center'><a id='withdraw' class='mna' href='/bank-app/transaction/withdraw-money.jsp'>Withdraw Money</a></td>
  <td align='center'><a id='transfer' class='mna' href='/bank-app/transaction/accept-account.jsp'>Transfer Money</a></td>
  <td align='center'><a class='mna' href='#'>Change Password</a></td>
  <td align='center'><a class='mna' href='/bank-app/users/logout.jsp'>Logout</a></td>
 </tr>
</table>
<hr style='border:2px solid blue'>
</body>
</html>