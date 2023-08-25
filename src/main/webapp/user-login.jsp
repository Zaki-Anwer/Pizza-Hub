<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <!-- Local Stylesheet -->
    
    <style>
    
    
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Shantell Sans', sans-serif;
    
}

body{
    background-position: center;
    background-image: url('image/pizza.jpeg');
 
    background-size: cover;
}


.form{
    display: flex;
    justify-content:left;
    align-items: center;
    max-height: 100vh;
    width: 100%;
    background-position: center;
    background-size: cover;
    padding-left: 5rem;
    padding-top: 5rem;
}

.form-box{
    position: relative;
    width: 25rem;
    height: 24rem;
    background: transparent;
    display: flex;
    justify-content: center;
    align-items: center;
}


h2{
    font-size: 2em;
    color: #F0F0F0;
    text-align: center;
}

.input-box{
    position: relative;
    margin: 1.8em 0;
    width: 20em;
    border-bottom: 2px solid #fff;

}

.form-input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding: 0 2.2em 0 .35em;
    color: #fff;
    margin: 4px 0 0 0;
}

.form-label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: #fff;
    font-size: 1em;
    pointer-events: none;
    transition: .5s;
}

.form-input:focus ~ .form-label,
.form-input:valid ~ .form-label,
.form-input:not(:placeholder-shown).form-input:not(:focus) ~ .form-label
 {
    top: -5px;
}



.input-box ion-icon{
    position: absolute;
    right: 8px;
    color: #fff;
    font-size: 1.2em;
    top: 20px;
}

 .icon{
    cursor: pointer;
} 

input{
    cursor: pointer;
}

.forget{
    margin: -.95em .6em 2.8em .6em;
    font-size: .9em;
    color: #F0F0F0;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.rememberbox {
    display: flex;
}

#forgetcheck {
    margin-right: 8px;
}

.forget a {
    color: #F0F0F0;
    text-decoration: none;
    cursor: pointer;

}
.forget a:hover { 
    text-decoration: underline;
}

.btn{
    width: 100%;
    height: 2.5em;
    border-radius: 2.5em;
    background: #F0F0F0;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
}

.btn:hover{
    background: #E7473C;
    color: #F0F0F0;
}

.register{
    font-size: .9em;
    color: #F0F0F0;
    text-align: center;
    margin: 1.6em 0 .6em;
}

.signpage {
    text-decoration: none;
    color: #F0F0F0;
    font-weight:700;
    cursor: pointer;
}

.signpage:hover{
    text-decoration: underline;

}
 


    
    
    </style>

    <!-- Font link -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans:wght@400;500;600&display=swap" rel="stylesheet">
    
    
    <title>User Login</title>
</head>
<body>
   <%
		String email = (String)request.getAttribute("userEmail");
		String password = (String)request.getAttribute("userPassword");
	%>


    <section class="form">

        <div class="form-box">
            <div class="form-value"></div>

            <form  action="userLogin" method="post">
                <h2>   
                    User Log In 
                </h2>
                
                 <% if(email!=null){ %>
                  <h4 style="color:red;"><%=email%></h4>

                  <%} %>
                  
                <div class="input-box">
                    <ion-icon name="mail-outline" class="icon"></ion-icon>
                    <input class="form-input" id="email1" type="email" placeholder=" " required  name="userEmail">      
                    <label class="form-label" for="email1">Email</label>     
                </div>
             
                   <% if(password!=null){ %>
                   <h4 style="color:red;"><%=password%></h4>
                  <%} %>  
                 
                <div class="input-box">
                    <ion-icon name="lock-closed-outline" class="icon" ></ion-icon>
                    <input class="form-input" id="password1" type="password" placeholder="enter your password"  name="userPassword" >      
                    <label class="form-label" for="password1">Password</label>     
                </div>
               

                <div class="forget">
                        <label for="forgetcheck" class="rememberbox"><input type="checkbox" id="forgetcheck"> Remember Me </label> 
                       <!--  <a href="#">Forget Password</a> -->
                </div>

                <button class="btn" id="submit" >Log In</button>
                <div class="register">
                    <p>Don't have a account? <a href="user-registration.jsp" class="signpage">Register</a></p>
                </div>       
            </form>

        </div>

    </section>





<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="/JS/otherhtmljs/form.js"></script>


</body>
</html>


