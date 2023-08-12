<html>
<head>
  <link href='/bank-app/CSS/style.css' rel='stylesheet'>
  <link href='/bank-app/CSS/bootstrap.min.css' rel='stylesheet'>
</head>
<body class='bgi'>
 <div class='dvv'>
   <label class='lah'  style='text-decoration:underline;font-size:2.5vw'>User Registration</label>
  </div>
  <hr>
<div class='container'>
 <div class='card mx-auto col-md-10'>
  <div class='card-body'>
   <div style="text-align: center">
    <label class='la' style='color:red'></label>
   </div>
   <form action="registerme.jsp" method="post">
   <div class='row form-group'>
      <div class='col-md-10'>
       	<label for="userid">Enter user id</label><span> *</span>
       	<input type='text' name="userid" id='userid' class='form-control' required/>
      </div>
    </div>
    <div class='row form-group'>
      <div class='col-md-5'>
       	<label for="password">Enter password</label><span> *</span>
       	<input type='password' name="password" id='password' class='form-control' required/>
      </div>
      <div class='col-md-5'>
       	<label for="rpassword">Confirm password</label><span> *</span>
       	<input type='password' name="rpassword" id='rpassword' class='form-control' required/>
      </div>
    </div>
    <div class='row form-group'>
      <div class='col-md-5'>
      	<label for="name">Enter name</label><span> *</span>
       	<input type='text' name=name id='name' class='form-control' required/>
     </div>
     <div class='col-md-5'>
       	<label for="phone">Enter phone number</label><span> *</span>
       	<input type='text' name="phone" id='phone' class='form-control' required/>
      </div>
    </div>
    <div class='row form-group'>
     <div class='col-md-10'>
       	<label for="address">Enter address</label><span> *</span>
       	<input type='text' name="address" id='address' class='form-control' required/>
      </div>
   </div>
   <div class='row form-group'>
     <div class='col-md-10'>
       	<button class='btr'>Register Me</button>
       	<input type='button' class='btr' style='background-color:orange' onclick="history.back()" value='Cancel'>
     </div>
   </div>
   </form>
  </div>
 </div>
</div>
</body>
</html>