<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./css/main.css">
</head>
<body>

<div class="container">
  <h2>Welcome to CozyHut</h2>
  <form method="post" action="index.php?controller=login&action=checklogin">
	<?php 
	 if(isset($error)){
		echo $error;
	 }
	?>
    <div class="text_field">
      <input class="form-control" placeholder="Username" name="user" type="text" required>
      <!-- <span></span>
      <label>Username</label> -->
    </div>
    <div class="text_field">
    <input class="form-control" placeholder="Mật khẩu" name="pass" type="password" value="">
      <!-- <span></span>
      <label>Password</label> -->
    </div>
    <div class="forgotpassword">
      Forgot Password?
    </div>
    <input type="submit" name="sbm" value="Login">
    <div class="signup_link">
      Don't have account?<a href="register.html">Sign Up</a>
    </div>
  </form>
</div>

</body>
</html>
