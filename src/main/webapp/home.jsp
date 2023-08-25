<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pizza Hub</title>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


    <link rel="stylesheet" href="style.css" />

    <!-- Font link -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style type="text/css">
*,
*::after,
*::before {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

.html {
  font-size: 62.5%;
}

body {
  font-family: "Poppins", sans-serif;
}

/* ///////////..utility classes../////////// */

.container {
  /* max-width: 1200px; */
  max-width: 100%;
  width: 90%;
  margin: auto;
}

.btn {
  display: inline-block;
  padding: 0.5em 1.5em;
  text-decoration: none;
  border-radius: 50px;
  cursor: pointer;
  outline: none;
  margin-top: 1em;
  text-transform: uppercase;
  font-weight: small;
}

.btn-primary {
  color: #fff;
  background: #972e27;
}

.btn-primary:hover {
  background: #E7473C;
  transition: all 0.1s ease-in-out;
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 27px rgba(0,0,0,0.23);
}

/* ............/navbar/............ *

/* desktop mode............/// */

.navbar input[type="checkbox"],
.navbar .hamburger-lines {
  display: none;
}

.navbar {
  box-shadow: 0px 5px 10px 0px #aaa;
  position: fixed;
  width: 100%;
  background: #fff;
  color: #000;
  opacity: 0.85;
  height: 50px;
  z-index: 12;
}

.navbar-container {
  display: flex;
  justify-content: space-between;
  height: 64px;
  align-items: center;
}

.cart-btn{
  border: none;
  color: red;
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
}

.cart-btn:hover{
  cursor: pointer;
}

.loginbox{
  display: flex;
  align-items: center;
  column-gap: 4px;
  cursor: pointer;
}


.menu-items {
  display: flex;
}

.menu-items li {
  list-style: none;
  margin-left: 1.5rem;
  margin-bottom: 0.5rem;
  font-size: 1.2rem;
}

.menu-items a {
  text-decoration: none;
  color: #444;
  font-weight: 500;
  transition: color 0.3s ease-in-out;
}

.menu-items a:hover {
  color: #E7473C;
  transition: color 0.3s ease-in-out;
}

.menu-bar ul{
  display: flex;
  list-style: none;
  column-gap: 2rem;
  margin-bottom: 0.5rem;
}

.menu-bar ul a {
  text-decoration: none;
  color: #000;
}

.menu-bar ul a:hover{
  color: #E7473C;
}

.submenu{
  display: none;
}


.menu-bar ul li:hover  .submenu{
  display: block;
  position: fixed;
  background-color: #f5f5f7;
  margin-top: 2px;
  transition: all 1s;
}

.menu-bar ul li:hover  .submenu ul{
  display: block;
  margin: 10px;
}

.menu-bar ul li:hover  .submenu ul li{
  width: 150px;
  padding: 10px;
  border-bottom: 1px solid #000;
}

.menu-bar ul li:hover  .submenu ul li:last-child{
  border: none;
}



.logo {
  /* order: 1; */
  font-size: 2.3rem;
  margin-bottom: 0.5rem;
}

/* ............//// Showcase styling ////......... */

.showcase-area {
  height: 50vh;
  background: linear-gradient(
      rgba(240, 240, 240, 0.144),
      rgba(255, 255, 255, 0.336)
    ),
    url('image/pizza_background.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.showcase-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100%;
  font-size: 1.6rem;
}
.showcase-container p{
  color: whitesmoke;
  text-shadow: 0 4px 6px rgba(0,0,0,0.4), 0 2px 12px rgba(0,0,0,0.2);
}

.main-title {
  text-transform: uppercase;
  margin-top: 1.5em;
  color: whitesmoke;
  text-shadow: 0 4px 6px rgba(0,0,0,.6), 0 2px 12px rgba(0,0,0, .7);
}

/* ......//about us//...... */

#about {
  padding: 50px 0;
  background: #f5f5f7;
}

.about-wrapper {
  display: flex;
  flex-wrap: wrap;
}

#about h2 {
  font-size: 2.3rem;
}

#about p {
  font-size: 1.2rem;
  color: #555;
}

#about .small {
  font-size: 1.2rem;
  color: #666;
  font-weight: 600;
}

.about-img {
  flex: 1 1 400px;
  padding: 30px;
  transform: translateX(150%);
  animation: about-img-animation 1s ease-in-out forwards;
}

@keyframes about-img-animation {
  100% {
    transform: translate(0);
  }
}

.about-text {
  flex: 1 1 400px;
  padding: 30px;
  margin: auto;
  transform: translate(-150%);
  animation: about-text-animation 1s ease-in-out forwards;
}

@keyframes about-text-animation {
  100% {
    transform: translate(0);
  }
}

.about-img img {
  display: block;
  height: 400px;
  max-width: 100%;
  margin: auto;
  object-fit: cover;
  object-position: right;
}

/* ==================== Styling Food category ===================== */

#food {
  padding: 5rem 0 10rem 0;
}

#food h2 {
  text-align: center;
  font-size: 2.5rem;
  font-weight: 400;
  margin-bottom: 40px;
  text-transform: uppercase;
  color: #555;
}

.food-container {
  display: flex;
  justify-content: space-between;
}

.food-container img {
  display: block;
  width: 100%;
  margin: auto;
  max-height: 300px;
  object-fit: cover;
  object-position: center;
}

.img-container {
  margin: 0 1rem;
  position: relative;
}

.img-content {
  position: absolute;
  top: 70%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 0;
  z-index: 2;
  text-align: center;
  transition: all 0.3s ease-in-out 0.1s;
}

.img-content h3 {
  color: #fff;
  font-size: 1.5rem;
}

.img-content a {
  font-size: .8rem;
}

.img-container::after {
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.871);
  opacity: 0;
  z-index: 1;

  transform: scaleY(0);
  transform-origin: 100% 100%;
  transition: all 0.3s ease-in-out;
}

.img-container:hover::after {
  opacity: 1;
  transform: scaleY(1);
}

.img-container:hover .img-content {
  opacity: 1;
  top: 40%;
}

/* =======================  Styling Food Menu  ======================== */

.food-menu-heading {
  text-align: center;
  font-size: 3.4rem;
  font-weight: 400;
  color: #666;
}

.food-menu-container {
  display: flex;
  flex-wrap: wrap;
  padding: 50px 0px 30px 0px;
}

.food-menu-container img {
  display: block;
  width: 250px;
  height: 250px;
  border-radius: 50%;
  object-fit: cover;
  object-position: center;
}

.food-menu-item {
  display: flex;
  flex: 1 1 600px;
  justify-content: space-evenly;
  margin-bottom: 3rem;
}

.food-description {
  margin: auto 1.5rem;
}

.font-title {
  font-size: 1.8rem;
  font-weight: 400;
  color: #444;
}

.addtocart{
  color: whitesmoke;
  margin-top: 12px;
  padding: 8px 12px 8px 12px;
  border-radius: 24px;
  background-color: #E7473C;
  border: none;
  box-shadow: 0 4px 6px rgba(0,0,0,0.4), 0 2px 12px rgba(0,0,0,0.2);
  cursor: pointer;
}

.addtocart:active{
  box-shadow: none;
  box-shadow: 0 1px 2px rgba(0,0,0,0.4), 0 1px 3px rgba(0,0,0,0.2);
}

.food-description p {
  font-size: 1.4rem;
  color: #555;
  font-weight: 500;
}

.food-description .food-price {
  color: #E7473C;
  font-size: 1.1rem;
  font-weight: 700;
  padding-top: 12px;
}

/* ........./ Testimonial /.......... */

#testimonials {
  padding: 5rem 0;
  background: rgba(243, 243, 243);
}

.testimonial-title {
  text-align: center;
  font-size: 2.8rem;
  font-weight: 400;
  color: #555;
}

.testimonial-container {
  display: flex;
  justify-content: space-between;
  font-size: 1.4rem;
  padding: 1rem;
}

.testimonial-box .checked {
  color: #ff9529;
}

.testimonial-box .testimonial-text {
  margin: 1rem 0;
  color: #444;
}

.testimonial-box {
  text-align: center;
  padding: 1rem;
}

.customer-photo img {
  display: block;
  width: 150px;
  height: 150px;
  object-fit: cover;
  object-position: center;
  border-radius: 50%;
  margin: auto;
}

.customer-photo p{
  padding-top: 12px;
}


/* ============  Footer  ========================= */

#Footer{
  display: flex;
  column-gap: 4rem;
  padding: 48px 12rem 6rem 12rem;
  color: white;
  background-color: #E7473C;
}
.social span{
  display: block;
  padding-bottom: 2rem;
}

.links div{
  padding-bottom: 2rem;
}

.links div a{
  color: #fff;
  text-decoration: none;
}

.About h2, .About p{
  padding-bottom: 20px;
}


/* ......../ media query /.......... */

@media (max-width: 768px) {
  .navbar {
    opacity: 0.95;
  }

  .navbar-container input[type="checkbox"],
  .navbar-container .hamburger-lines {
    display: block;
  }

  .navbar-container {
    display: block;
    position: relative;
    height: 64px;
  }

  .navbar-container input[type="checkbox"] {
    position: absolute;
    display: block;
    height: 32px;
    width: 30px;
    top: 20px;
    left: 20px;
    z-index: 5;
    opacity: 0;
  }

  .navbar-container .hamburger-lines {
    display: block;
    height: 23px;
    width: 35px;
    position: absolute;
    top: 17px;
    left: 20px;
    z-index: 2;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .navbar-container .hamburger-lines .line {
    display: block;
    height: 4px;
    width: 100%;
    border-radius: 10px;
    background: #333;
  }

  .navbar-container .hamburger-lines .line1 {
    transform-origin: 0% 0%;
    transition: transform 0.4s ease-in-out;
  }

  .navbar-container .hamburger-lines .line2 {
    transition: transform 0.2s ease-in-out;
  }

  .navbar-container .hamburger-lines .line3 {
    transform-origin: 0% 100%;
    transition: transform 0.4s ease-in-out;
  }

  .navbar .menu-items {
    padding-top: 100px;
    background: #fff;
    height: 100vh;
    max-width: 300px;
    transform: translate(-150%);
    display: flex;
    flex-direction: column;
    margin-left: -40px;
    padding-left: 50px;
    transition: transform 0.5s ease-in-out;
    box-shadow: 5px 0px 10px 0px #aaa;
  }

  .navbar .menu-items li {
    margin-bottom: 1.5rem;
    font-size: 1.3rem;
    font-weight: 500;
  }

  .logo {
    position: absolute;
    top: 5px;
    right: 15px;
    font-size: 2rem;
  }

  .navbar-container input[type="checkbox"]:checked ~ .menu-items {
    transform: translateX(0);
  }

  .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line1 {
    transform: rotate(35deg);
  }

  .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line2 {
    transform: scaleY(0);
  }

  .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line3 {
    transform: rotate(-35deg);
  }

  /* ......./ food /......... */

  .food-container {
    flex-direction: column;
    align-items: stretch;
  }

  .food-type:not(:last-child) {
    margin-bottom: 3rem;
  }

  .food-type {
    box-shadow: 5px 5px 10px 0 #aaa;
  }

  .img-container {
    margin: 0;
  }
}

@media (max-width: 500px) {
  html {
    font-size: 65%;
  }

  .navbar .menu-items li{
      font-size: 1.6rem;
  }

  .testimonial-container {
    flex-direction: column;
    text-align: center;
  }

  .food-menu-container img {
    margin: auto;
  }

  .food-menu-item {
    flex-direction: column;
    text-align: center;
  }

  .form-container {
    width: 90%;
  }

  .contact-container {
    display: flex;
    flex-direction: column;
  }

  .contact-img {
    width: 90%;
    margin: 3rem auto;
  }

  .logo {
    position: absolute;
    top: 06px;
    right: 15px;
    font-size: 3rem;
  }

  .navbar .menu-items li {
    margin-bottom: 2.5rem;
    font-size: 1.8rem;
    font-weight: 500;
  }
}

@media (min-width: 769px) and (max-width: 1200px) {
  .img-container h3 {
    font-size: 1.5rem;
  }

  .img-container .btn {
    font-size: 0.7rem;
  }
}

@media (orientation: landscape) and (max-height: 500px) {
  .showcase-area {
    height: 50vmax;
  }
}



</style>

</head>

<body>
    <!-- ================  Navigation Bar Section ===================== -->
    <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div>
                <img src='image/pizza-logo.png' height="64px">
            </div>
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <div>
                <ul class="menu-items">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#food">Category</a></li>
                    <li><a href="#food-menu">Menu</a></li>
                </ul>
            </div>
            <div>
                <button class="cart-btn" onclick="location.href='/Htmlfiles/cart.html'"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 576 512"><path d="M24 0C10.7 0 0 10.7 0 24S10.7 48 24 48H69.5c3.8 0 7.1 2.7 7.9 6.5l51.6 271c6.5 34 36.2 58.5 70.7 58.5H488c13.3 0 24-10.7 24-24s-10.7-24-24-24H199.7c-11.5 0-21.4-8.2-23.6-19.5L170.7 288H459.2c32.6 0 61.1-21.8 69.5-53.3l41-152.3C576.6 57 557.4 32 531.1 32H360V134.1l23-23c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9l-64 64c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l23 23V32H120.1C111 12.8 91.6 0 69.5 0H24zM176 512a48 48 0 1 0 0-96 48 48 0 1 0 0 96zm336-48a48 48 0 1 0 -96 0 48 48 0 1 0 96 0z"/></svg></button>
            </div>

            <div class="menu-bar">
                <ul>
                    <li >
                        <div class="loginbox">
                        <div>
                        <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><path d="M217.9 105.9L340.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L217.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1L32 320c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM352 416l64 0c17.7 0 32-14.3 32-32l0-256c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32l64 0c53 0 96 43 96 96l0 256c0 53-43 96-96 96l-64 0c-17.7 0-32-14.3-32-32s14.3-32 32-32z"/></svg>
                        </div>
                        <div>
                        <a href="#">
                        Login</a>
                    </div>
                </div>
                        <div class="submenu">
                            <ul>
                                <li><a href="user-login.jsp">User Log In</a></li>
                                <li><a href="admin-login.jsp">Admin Log In</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="user-registration.jsp">Register</a></li>
                </ul>
            </div>
   
        </div>
    </nav>


    <section class="showcase-area" id="showcase">
        <div class="showcase-container">
            <h1 class="main-title" id="home">Enjoy Your Meal</h1>
            <p>Better taste, better than everyone</p>
            <a href="#food-menu" class="btn btn-primary">Menu</a>
        </div>
    </section>

    <!-- =================== About Section  ====================== -->

    <section id="about">
        <div class="about-wrapper container">
            <div class="about-text">
                <p class="small">About Us</p>
                <h2>Here you will get pizza of a good taste.</h2>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse ab
                    eos omnis, nobis dignissimos perferendis et officia architecto,
                    fugiat possimus eaque qui ullam excepturi suscipit aliquid optio,
                    maiores praesentium soluta alias asperiores saepe commodi
                    consequatur? Perferendis est placeat facere aspernatur!
                </p>
            </div>
            <div class="about-img">
                <img src='image/food-banner.jpg' alt="food" />
            </div>
        </div>
    </section>

    <!-- ======================== -->
    <section id="food">
        <h2>Types of food</h2>
        <div class="food-container container">
            <div class="food-type">
                <div class="img-container">
                    <img src='image/Bevereges.jpg' alt="Bevereges" />
                    <div class="img-content">
                        <h3>Bevereges</h3>
                        <a href="#" class="btn btn-primary" target="blank">Order now</a>
                    </div>
                </div>
            </div>
            <div class="food-type">
                <div class="img-container">
                    <img src='image/pizza-2.jpg' alt="error" />
                    <div class="img-content">
                        <h3>Non-Veg Pizza</h3>
                        <a href="#" class="btn btn-primary" target="blank">Order now</a>
                    </div>
                </div>
            </div>
            <div class="food-type">
                <div class="img-container">
                    <img src='image/pizza-3.jpg' alt="error" />
                    <div class="img-content">
                        <h3>Veg Pizza</h3>
                        <a href="#" class="btn btn-primary" target="blank">Order now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="food-menu">
        <h2 class="food-menu-heading">Food Menu</h2>
        <div class="food-menu-container container">
            <div class="food-menu-item">
                <div class="food-img">
                    <img src='image/Californiapizza.jpg' alt="" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">California Pizza</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 225</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>

            <div class="food-menu-item">
                <div class="food-img">
                    <img src='image/Italianpizza.jpg' alt="error" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">Italian Pizza</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 230</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>
            <div class="food-menu-item">
                <div class="food-img">
                    <img src="Images/Brickovenpizza.jpg" alt="" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">Brick Oven Pizza</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 180</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>
            <div class="food-menu-item">
                <div class="food-img">
                    <img src="Images/Farmhousepizza.jpg" alt="" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">Farmhouse Pizza</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 120</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>
            <div class="food-menu-item">
                <div class="food-img">
                    <img src="Images/Margaritapizza.jpg" alt="" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">Margherita</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 140</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>
            <div class="food-menu-item">
                <div class="food-img">
                    <img src="Images/Cheeseandcornpizza.JPG" alt="" />
                </div>
                <div class="food-description">
                    <h2 class="font-title">Cheese & Corn Pizza</h2>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Non,
                        quae.
                    </p>
                    <p class="food-price">Price: &#8377; 200</p>
                    <button class="addtocart">Add to Cart</button>
                </div>
            </div>
        </div>
    </section>
    <section id="testimonials">
        <h2 class="testimonial-title">What Our Customers Say</h2>
        <div class="testimonial-container container">
            <div class="testimonial-box">
                <div class="customer-detail">
                    <div class="customer-photo">
                        <img src="https://i.postimg.cc/5Nrw360Y/male-photo1.jpg" alt="" />
                        <p class="customer-name">Ross Lee</p>
                    </div>
                </div>
                <div class="star-rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                </div>
                <p class="testimonial-text">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit
                    voluptas cupiditate aspernatur odit doloribus non.
                </p>

            </div>
            <div class="testimonial-box">
                <div class="customer-detail">
                    <div class="customer-photo">
                        <img src="https://i.postimg.cc/sxd2xCD2/female-photo1.jpg" alt="" />
                        <p class="customer-name">Amelia Watson</p>
                    </div>
                </div>
                <div class="star-rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                </div>
                <p class="testimonial-text">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit
                    voluptas cupiditate aspernatur odit doloribus non.
                </p>

            </div>
            <div class="testimonial-box">
                <div class="customer-detail">
                    <div class="customer-photo">
                        <img src="https://i.postimg.cc/fy90qvkV/male-photo3.jpg" alt="" />
                        <p class="customer-name">Ben Roy</p>
                    </div>
                </div>
                <div class="star-rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                </div>
                <p class="testimonial-text">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Impedit
                    voluptas cupiditate aspernatur odit doloribus non.
                </p>

            </div>
        </div>
    </section>

    <section id="Footer">

        <div class="social">
            <div class="facebook">
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"/></svg>
                </span>
            </div>
            <div class="instagram">
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M149.1 64.8L138.7 96H64C28.7 96 0 124.7 0 160V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V160c0-35.3-28.7-64-64-64H373.3L362.9 64.8C356.4 45.2 338.1 32 317.4 32H194.6c-20.7 0-39 13.2-45.5 32.8zM256 192a96 96 0 1 1 0 192 96 96 0 1 1 0-192z"/></svg>
                </span>
            </div>
        </div>
        <div class="links">
            <div class="">
                <a href="#home">Home</a></div>
            <div ><a href="#food-menu">Menu</a></div>
            <div ><a href="/Htmlfiles/cart.html">Cart</a></div>
        </div>
        <div class="About">
                <p >About Us</p>
                <h2>Here you will get pizza of a good taste.</h2>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse ab
                    eos omnis, nobis dignissimos perferendis et officia architecto,
                    fugiat possimus eaque qui ullam excepturi suscipit aliquid optio,
                    maiores praesentium soluta alias asperiores saepe commodi
                    consequatur? Perferendis est placeat facere aspernatur!
                </p>
        </div>
        
    </section>

</body>


</html>