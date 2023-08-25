<!DOCTYPE html>
<%@page import="com.opkey.pizza_hut.Dto.EatableFood"%>
<%@page import="com.opkey.pizza_hut.Dao.EatableFoodDao"%>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

  <!-- Font link -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../style/product.css">
  
  <style>
  
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Shantell Sans', sans-serif;
}
.logo img{
  width: 80px;
}

.main-section{
  display: flex;
  flex-direction: column;
  row-gap: 4.8rem;
}

.nav{
    display: flex;
    justify-content: space-around;
    background-color: #ffffff;
    align-items: center;
    padding: 10px;
    box-shadow: 0 8px 6px -10px #ffb3b3;
}
.nav_links{
  display: flex;
  gap: 20px;
  cursor: pointer;
  font-weight: 500;
}

.nav_links .icon{
  color: #ff4545;
  margin-right: 10px;
}

.wrapper{
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f3f3f3;
}
.signIn{
  display: flex;
  gap: 8px;
}

.wrapper .search_box{
  width: 500px;
  /* background: #fff; */
  border-radius: 5px;
  height: 2.8rem;
  display: flex;
  align-items: center;

}

.dropdown{
  width: 164px;
  border-right: 2px solid #f1dddd;
  color: #b19f9f;
  position: relative;
  cursor: pointer;
  padding-top: 2px;
}

.default_option{
    display: flex;
    align-items: center;
    justify-content: center;
    column-gap: 8px;
}

.drop-title{
    padding-left: 10px;
}

.icon{
    padding-top: 4px;
}


.wrapper .search_box .dropdown ul{
  position: absolute;
  top: 40px;
  left: -8px;
  background: #fff;
  width: 150px;
  border-radius: 5px;
  padding: 20px;
  display: none;
  box-shadow: 8px 8px 6px -10px #ffb3b3;
}

.wrapper .search_box .dropdown ul.active{
  display: block;
}

.wrapper .search_box .dropdown ul li{
  padding-bottom: 20px;
  list-style-type: none;
}

.wrapper .search_box .dropdown ul li:last-child{
  padding-bottom: 0;
}

.wrapper .search_box .dropdown ul li:hover{
  color: #6f768d;
}

.wrapper .search_box .search_field{
  width: 350px;
  height: 100%;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
 
  
 
}

.wrapper .search_box .search_field .input{
  width: 100%;
  height: 100%;
  border: 0px;
  font-size: 16px;
  padding-left: 20px;
  padding-right: 38px;
  color: #6f768d;
  background-color: #f3f3f3;
 
}

.wrapper .search_box .search_field .input:focus{
border: none;
outline: none;
}


.serach_icon{
  background-color:#ff4545;
  padding: 14px;
  color: #ffffff;
}



/*  */
.signinbox{
    background-color: #fff; 
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
     }
     .signinbox span{
       width: 30px;
       height: 30px;
       border-radius: 50%;
      
     }
     .signinbox p{
     margin-top: 10px;
     font-weight: 400;
      
     }


.hero{
    background-image: linear-gradient(rgba(0,0,0,0.70) 10%, rgba(0,0,0,10) 100%), url("Image/mixed-pizza-with-various-ingridients.jpg");
    height: 200px;
    width: 100%;
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    gap:2rem;
  }
  .hero h1{
    color: #fff;
    font-size:1.5rem;
    text-align: center;
  }
  .hero p{
    font-size: 14px;
    color: #bababa;
    width: 70%;
    text-align: center;
  }
  .higliter{
    color: #ff4545;
    }

.additem{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}
.btn_section{
    margin: 20px;
}
.btn_section button{
   background-color: #ff4545;
   padding: 8px;
   border:2px solid #ff4545;
   border-radius: 4px
}
.add_section {
  
    width: 100%;
}
.add_section form{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    gap: 20px;
}
.add_section form div{
    display: flex;
    justify-content: center;
    gap: 20px;
    width: 100%;
}

form div input[type="text"],select{
    width: 30%;
    height: 40px;
    padding: 10px;
}
form input[type="file"]{
    border: 1px solid #7E8399;
    width: 30%;
    height: 40px;
     padding: 10px;
}
form button[type="submit"]{
    width: 62%;
    height: 40px;
    padding: 10px;
    background-color: #ff4545;
    border: 2px solid #ff4545;
    font-weight: 500;
    border-radius: 4px;
}

    

   /* footer---------------------------------------------------------------------------- */
   
   footer{
     margin-top: 5rem;
     padding: 5rem;
     background: #151823;
     display: flex;
     align-items: flex-start;
     justify-content: space-evenly;
     color:#666666;
   }
   .footerlogo{
     flex-basis: 30%;
     cursor: pointer;
   }
   .footerlogo .para,.subscribe .para{
   margin: 12px 0px;
   }
   .useful-links{
     flex-basis: 20%;
   }
   .useful-head,.subscribe-head{
     border-bottom: 2px solid #ff4545;
     font-size:1.2rem;
     color: #ffffff;
     margin-bottom: 12px !important;
   }
   
   .footer-links{
     display: flex;
     align-items: flex-start;
     justify-content: flex-start;
     
     
   }
   .col1{
     margin-right: 20px;
   }
   .col2{
     margin: 0px 20px;
     
   }
   .col1 span,.col2 span{
     display:block;
     margin: 12px 0px;
     cursor: pointer;
     
   }
   .col1 span:hover,.col2 span:hover{
   color: #ff4545;
     
   }
   
   
   .subscribe{
     flex-basis: 30%;
     
   }
   .subs-email{
     border: 2px solid #ff4545;
     height: 50px;
     margin-top: 26px;
     display: flex;
     align-items: center;
   
   }
   .subs-email input{
     height: 50px;
     width: 100%;
     border: none;
     background: transparent;
     color: #EFF2FF;
     padding-left: 10px;
   }
   .subs-email .send_icon{
     text-align: center;
     color: #000;
     background-color: #ff4545;
     height: 20px;
     padding: 13px;
     width: 40px;
     cursor: pointer;
   }
   .copyright{
    display: flex;
    align-items: center;
    justify-content: space-between;
     height: 60px;
     width: 100%;
     padding: 0px 40px;
     font-size: 14px;
     color: #7E8399;
     background-color: #1B2032;
   }
   .copyright a{
    text-decoration: none;
     color: #7E8399;
    
   }
   
   @media only screen and (max-width:600px){
     /* footer */
   
     .pizza_list{
      flex-direction: column;
       
     }
     .wrapper{
       display: none;
     }
     .hero h1{
       color: #fff;
       font-size:1.8rem;
       width: 90%;
       text-align: center;
     }
     .hero p{
       color: #bababa;
       width: 90%;
       text-align: center;
     }
     .catg_heading p {
     
       width: 80%;
       
   }
   .card {
     height: 150px;
     width: 250px!important;
   }
   .top_rated {
     height: auto;
     padding:0px  20px;
   }
   footer{
     margin-top: 5rem;
     padding: 3rem;
     background: #151823;
     display: flex;
     align-items: flex-start;
     justify-content: space-evenly;
     flex-direction: column;
     color:#666666;
   }
   .footerlogo{
     flex-basis: 30%;
     margin: 36px 0px; 
     cursor: pointer;
   }
   .subscribe{
     flex-basis: 30%;
     margin-top: 36px;
     
   }
   .copyright{
    display: flex;
    align-items: center;
    justify-content: space-between;
     height: 80px;
     width: 100%;
     padding: 0px 40px;
     font-size: 14px;
     color: #997e7e;
     background-color: #321b1b;
   }
   
   }
  
  </style>


  <title>Pizza Hub</title>


</head>
<style>
  a {
    text-decoration: none;
    color: black;
  }
</style>

<body>

<%
   int  id=Integer.parseInt(request.getParameter("id"));
   EatableFoodDao eatableFoodDao=new EatableFoodDao();
   EatableFood food = eatableFoodDao.getFoodById(id);
%>

  <section class="main-section">
    <section class="nav-bar">
      <section class="nav">
        <div class="logo">
          <img src='image/pizza-logo.png' style="height: 48px; width: 54px;" />
        </div>

        <div class="wrapper">
          <div class="search_box">
            <div class="dropdown">
              <div class="default_option">
                <div class="drop-title">All Categories</div>
                <div class="icon">
                  <span><i class="fa-solid fa-angle-down"></i>

                  </span>
                </div>
              </div>
              <ul>
                <li>All</li>
                <li>Recent</li>
                <li>Popular</li>
              </ul>
            </div>
            <div class="search_field">
              <input type="text" class="input" placeholder="Search" />

              <i class=" serach_icon fa-solid fa-magnifying-glass"></i>
            </div>
          </div>
        </div>

        <div class="nav_links">
          <div><a href="index.html"><i class="fa-solid icon fa-house"></i>Home</a></div>
        </div>


        <div class="signIn">
          <a href="login page/Index.html" class="signinbox">
            <span> <img src="Image/avatar.png" alt=""> </span>

            <p>Pizza Hub</p>
          </a>

        </div>

      </section>
    </section>


    <section class="additem">
      <div class="btn_section">
        <button id="add_btn">Add Items</button>
        <button id="Available_btn">View Available items</button>
      </div>
      <div class="add_section">
        <form action="updateFood" method="post">
          <div>
            <input type="number" name="id" placeholder="Pizza id" hidden="true" value="<%=food.getId() %>">
            <input type="text" name="pizza_name" placeholder="Pizza Name" value="<%=food.getFoodName() %>">
            <input type="text" name="Pizza_desc" placeholder="desc" value="<%=food.getAbout() %>">
          </div>
          <div>

            <select name="Categories">
              <option   value="Veg"> Select Categories........</option>
              <option   value="Veg"> Veg</option>
              <option   value="Non-Veg">Non-Veg</option>
            </select>
            <input type="text" name="pizza_price" placeholder="Price" value="<%=food.getPrice() %>">
          </div>
          <div>

            <input type="text" name="pizza_offer" placeholder="offer" value="<%=food.getOffer() %>">
          </div>

          <button type="submit">Post Details</button>
        </form>
      </div>
    </section>



    <section>
      <div class="copyright">
        <p>Copyright © 2023 All rights reserved </p>
        <a href="#">
          <p></p>
        </a>
      </div>

    </section>

  </section>

  <script src="index.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
</body>

</html>