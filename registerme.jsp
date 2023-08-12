<%@page import="java.sql.*"%>
<html>
<head>
  <link href='/bank-app/CSS/style.css' rel='stylesheet'>
  <link href='/bank-app/CSS/bootstrap.min.css' rel='stylesheet'>
</head>
<body class='bgi'>
 <%
 //code to save userdetails into userinfo table
 String uid=request.getParameter("userid");
 PreparedStatement ps=(PreparedStatement)application.getAttribute("usersave");
 ps.setString(1,uid);
 ps.setString(2,request.getParameter("password"));
 ps.setString(3,request.getParameter("name"));
 ps.setString(4,request.getParameter("phone"));
 ps.setString(5,request.getParameter("address"));
 ps.executeUpdate();
 //code to save account details into accountinfo table
 PreparedStatement ps1=(PreparedStatement)application.getAttribute("accountsave");
 ps1.setString(1,uid);
 ps1.setInt(2,5000);
 ps1.executeUpdate();
 //code to get accountno from accountinfo table
 PreparedStatement ps2=(PreparedStatement)application.getAttribute("accountnoselect");
 ps2.setString(1,uid);
 ResultSet rst=ps2.executeQuery();
 rst.next();
 int accountno=rst.getInt(1);
 %>
 <div class='dvv'>
   <label class='lah' style='text-decoration:underline;font-size:2.5vw'>User Registration</label>
  </div>
  <hr>
 <div class='dv'>
  <label class='lah'>Congratulations!!! </label>
  <label class='lah'></label>
  <br><br>
  <label class='la' style='color:white'>You have been registered successfully</label>
  <br><br>
  <label class='la' style='color:white'>Your account number is <%=accountno%></label>
 </div>
 <div class='dvv'>
   <a href='login.jsp' class='btl'>Click to Login</a>
 </div>
</body>
</html>