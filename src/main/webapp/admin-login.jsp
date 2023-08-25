<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/adminlogin.css">

    <!-- Font link -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style type="text/css">


*{
  box-sizing: border-box;
  font-family: 'Shantell Sans', sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 16px;
  font-weight: 400;
  color: #666666;
  background: #eaeff4;
}

.wrapper {
  margin: 0 auto;
  width: 100%;
  max-width: 1140px;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.container {
  position: relative;
  width: 100%;
  max-width: 600px;
  height: auto;
  display: flex;
  background: #ffffff;
  box-shadow: 0 0 5px #999999;
}

.credit {
  position: relative;
  margin: 25px auto 0 auto;
  width: 100%;
  text-align: center;
  color: #666666;
  font-size: 16px;
  font-weight: 400;
}

.credit a {
  color: #222222;
  font-size: 16px;
  font-weight: 600;
}

.col-left,
.col-right {
  padding: 30px;
  display: flex;
}

.col-left {
  width: 60% ;
  clip-path: polygon(0 0, 0% 100%, 100% 0);
  background-image: url('image/adminloginbackground.jpg');
  background-size: cover;
}

.col-right {
  padding: 60px 30px;
  width: 50%;
  margin-left: -10%;
}

@media(max-width: 575.98px) {
  .container {
    flex-direction: column;
    box-shadow: none;
  }

  .col-left,
  .col-right {
    width: 100%;
    margin: 0;
    -webkit-clip-path: none;
    clip-path: none;
  }

  .col-right {
    padding: 30px;
  }
}

.login-text {
  position: relative;
  width: 100%;
  color: #ffffff;
}

.login-text h2 {
  margin: 0 0 15px 0;
  font-size: 30px;
  font-weight: 700;
}

.login-text p {
  margin: 0 0 20px 0;
  font-size: 16px;
  font-weight: 500;
  line-height: 22px;
}

.login-text .btn {
  display: inline-block;
  padding: 7px 20px;
  font-size: 16px;
  letter-spacing: 1px;
  text-decoration: none;
  border-radius: 30px;
  color: #ffffff;
  outline: none;
  border: 1px solid #ffffff;
  box-shadow: inset 0 0 0 0 #ffffff;
  transition: .3s;
  -webkit-transition: .3s;
}

.login-text .btn:hover {
  color: #732824;
  box-shadow: inset 150px 0 0 0 #ffffff;
}

.login-form {
  position: relative;
  width: 80%;
  
}

.login-form h2 {
  margin: 0 0 15px 0;
  font-size: 22px;
  font-weight: 700;
}

.login-form p {
  margin: 0 0 10px 0;
  text-align: left;
  color: #666666;
  
  font-size: 15px;
}

.login-form p:last-child {
  margin: 0;
  padding-top: 3px;
}

.login-form p a {
  color: #8f8f8f;
  font-size: 14px;
  text-decoration: none;
}
.login-form p a:hover {
    color: #ff574e
  }

.login-form label {
  display: block;
  width: 100%;
  margin-bottom: 2px;
  letter-spacing: .5px;
}

.login-form p:last-child label {
  width: 60%;
  float: left;
}

.login-form label span {
  color: #ff574e;
  padding-left: 2px;
}

.login-form input {
  display: block;
  width: 100%;
  height: 35px;
  padding: 0 10px;
  outline: none;
  border: 1px solid #cccccc;
  border-radius: 30px;
}

.login-form input:focus {
  border-color: #ff574e;
}

.login-form button,
.login-form .input[type=submit] {
  display: inline-block;
  width: 100%;
  margin-top: 5px;
  color: #732824;
  font-size: 16px;
  letter-spacing: 1px;
  cursor: pointer;
  background: transparent;
  border: 1px solid #ff574e;
  border-radius: 30px;
  box-shadow: inset 0 0 0 0 #ff574e;
  transition: 1s;
  -webkit-transition: 1s;
}

.login-form button,
.login-form .submit {
  display: inline-block;
  width: 100%;
  margin-top: 5px;
  color: #732824;
  font-size: 16px;
  letter-spacing: 1px;
  cursor: pointer;
  background: transparent;
  border: 1px solid #ff574e;
  border-radius: 30px;
  box-shadow: inset 0 0 0 0 #ff574e;
  transition: 1s;
  -webkit-transition: 1s;
  padding: 12px 24px 12px 6px;
}

.login-form button:hover,
.login-form .submit:hover {
  color: #ffffff;
  box-shadow: inset 250px 0 0 0 #ff574e;
}
</style>

    <title>Admin Log in</title>
</head>
<body>
 <%
		String email = (String)request.getAttribute("userEmail");
		String password = (String)request.getAttribute("userPassword");
	%>
    
    <section>

    <div class="wrapper">
        <div class="container">
          <div class="col-left">
            <div class="login-text">
              <h2>Welcome</h2>
            </div>
          </div>
          <div class="col-right">
            <div class="login-form">
              <h2> Admin Log In</h2>
              <form action="adminlogin" method="post">
                  <% if(email!=null){ %>
                  <h4 style="color:red;"><%=email%></h4>
                  <%} %>
                <p>
                  <label>Username<span>*</span></label>
                  <input type="text" placeholder="Username" required name="userEmail">
                </p>

                  <% if(password!=null){ %>
                   <h4 style="color:red;"><%=password%></h4>
                  <%} %>  
                 
                <p>
                  <label>Password<span>*</span></label>
                  <input type="password" placeholder="Password" required name="userPassword">
                </p>
                <p> <input type="submit" class="submit" value="Login" style="text-align: center;">
                    <a >  </a>
                </p>
                <p>
                <!--   <a href="">Forget Password?</a>
 -->                </p>
              </form>
            </div>
          </div>
        </div>
      </div>

    </section>

</body>
</html>

