<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../style/cart.css">

    <title>Cart</title>
    <style type="text/css">
    *{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

.cart-container {
    width: 70%;
    height: 85%;
    background-color: #ffffff;
    border-radius: 20px;
    box-shadow: 0px 25px 40px #1687d933;
}

body{
    background: linear-gradient(to bottom right, #ffe3e3, #fffafa);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
   }

.header{
    display: flex;
    margin: auto;
    width: 90%;
    height: 15%;
    
    justify-content: space-between;
    align-items: center;
   }
   .heading{
    font-size: 20px;
    font-family: "Open Sans";
    font-weight: 700;
    color: #2F3841;
   }
   .remove-btn{
    font-size: 14px;
    font-family: "Open Sans";
    font-weight: 600;
    color: #E44C4C;
    cursor: pointer;
    border-bottom: 1px solid #E44C4C;
   }


/* =========== Styling Cart items  ========================= */

   .Cart-Items{
    margin: auto;
    width: 90%;
    height: 30%;
    display: flex;
    justify-content: space-between;
    align-items: center;
   }
   .image-box{
    max-width: 124px;
    text-align: center;
   }
   .about{
    height: 100%;
   }
   .title{
    padding-top: 5px;
    line-height: 10px;
    font-size: 32px;
    font-family: "Open Sans";
    font-weight: 800;
    color: #202020;
   }
   .subtitle{
    line-height: 40px;
    font-size: 18px;
    font-family: "Open Sans";
    font-weight: 600;
    color: #909090;
   }


   /* =============== Styling Counter button  =============== */

   .counter{
    width: 15%;
    display: flex;
    justify-content: space-between;
    align-items: center;
   }
   .btn{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    background-color: #d9d9d9;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    font-family: ‘Open Sans’;
    font-weight: 900;
    color: #202020;
    cursor: pointer;
    box-shadow: 0 4px 6px rgba(0,0,0,0.4), 0 2px 12px rgba(0,0,0,0.2);
   }

   .btn:active{
    box-shadow: 0 1px 2px rgba(0,0,0,0.4), 0 1px 3px rgba(0,0,0,0.2);
   }
   .count{
    font-size: 20px;
    font-family: ‘Open Sans’;
    font-weight: 900;
    color: #202020;
   }



   /* ========  Styling Pricing ============== */

   .prices{
    height: 100%;
    text-align: right;
   }
   .amount{
    padding-top: 20px;
    font-size: 26px;
    font-family: ‘Open Sans’;
    font-weight: 800;
    color: #202020;
   }
   .save{
    padding-top: 5px;
    font-size: 14px;
    font-family: ‘Open Sans’;
    font-weight: 600;
    color: #7f7f7f;
    cursor: pointer;
   }
   .remove{
    padding-top: 5px;
    font-size: 14px;
    font-family: ‘Open Sans’;
    font-weight: 600;
    color: #E44C4C;
    cursor: pointer;
   }



   /* ============ Styling checkout =============== */

   hr{
    width: 66%;
    float: right;
    margin-right: 5%;
   }
   .checkout{
    float: right;
    margin-right: 5%;
    width: 28%;
   }
   .total{
    width: 100%;
    display: flex;
    justify-content: space-between;
    padding-top: 1rem;
    padding-bottom: 1rem;
   }
   .Subtotal{
    font-size: 22px;
    font-family: "Open Sans";
    font-weight: 700;
    color: #202020;
   }
   .items{
    font-size: 16px;
    font-family: "Open Sans";
    font-weight: 500;
    color: #909090;
    line-height: 10px;
   }
   .total-amount{
    font-size: 36px;
    font-family: "Open Sans";
    font-weight: 900;
    color: #202020;
   }
   .button{
    margin-top: 5px;
    width: 100%;
    height: 40px;
    border: none;
    background: linear-gradient(to bottom right, #ffb8b8, #eb8e8e);
    border-radius: 20px;
    cursor: pointer;
    font-size: 16px;
    font-family: "Open Sans";
    font-weight: 600;
    color: #202020;
   }


.non-veg-outline{
    height: 10px;
    width: 10px;
    border: 2px solid red;
    border-radius: 2px;
    padding: 8px;

}

.non-veg{
    height: 8px;
    width: 8px;
    background-color: red;
    border-radius: 50%;
    margin-left: -4px;
    margin-top: -4px;
}

.veg-outline{
    height: 10px;
    width: 10px;
    border: 2px solid green;
    border-radius: 2px;
    padding: 8px;

}

.veg{
    height: 8px;
    width: 8px;
    background-color: green;
    border-radius: 50%;
    margin-left: -4px;
    margin-top: -4px;
}
    
    
    
    </style>
</head>

<body>
    <section class="cart-container">

        <!-- Header Section -->
        <div class="header">
            <h3 class="heading">Shopping Cart</h3>
            <h5 class="remove-btn">Remove all</h5>
        </div>

        <!-- Cart Item section -->
        <div class="Cart-Items">

            <div class="image-box">
                <img src="../Images/cart-pizza.jpg" style="height: 120px;width: 120px;" />
            </div>

            <div class="about">
                <h1 class="title">California Pizza</h1>
                <h3 class="subtitle">Medium</h3>
                <div class="veg-outline">
                    <div class="veg"></div>
                </div>
            </div>

            <div class="counter">
                <div class="btn" onclick="increment()">+</div>
                <div class="count">2</div>
                <div class="btn" onclick="decrement()">-</div>
            </div>

            <div class="prices">
                <div class="amount">&#8377 250</div>
                <div class="save"><u>Save for later</u></div>
                <div class="remove"><u>Remove</u></div>
            </div>

        </div>

        <div class="Cart-Items">

            <div class="image-box">
                <img src="../Images/cartpizza2.jpg" style="height: 120px; width: 120px;" />
            </div>

            <div class="about">
                <h1 class="title">Brick Oven Pizza</h1>
                <h3 class="subtitle">Small</h3>
                <div class="non-veg-outline">
                    <div class="non-veg"></div>
                </div>
            </div>
            <div class="counter">
                <div class="btn" onclick="increment()">+</div>
                <div class="count">2</div>
                <div class="btn" onclick="decrement()">-</div>
            </div>
            <div class="prices">
                <div class="amount">&#8377 180</div>
                <div class="save"><u>Save for later</u></div>
                <div class="remove"><u>Remove</u></div>
            </div>
        </div>

        <!-- Checkout Section -->

        <hr>
        <div class="checkout">
            <div class="total">
                <div>
                    <div class="Subtotal">Sub-Total</div>
                    <div class="items">2 items</div>
                </div>
                <div class="total-amount">&#8377 430</div>
            </div>
            <button class="button">Checkout</button>
        </div>

    </section>


    <script>


        function increment() {
            const countElement = document.getElementsByClassName('count')[0]
            let currentCount = parseInt(countElement.textContent);

            if (currentCount < 10) {
                currentCount++;
            } else {
                currentCount = 0;
            }

            countElement.textContent = currentCount;
        }

        function decrement() {
            const countElement = document.getElementsByClassName('count')[0]
            console.log(countElement);
            let currentCount = parseInt(countElement.textContent);

            if (currentCount > 0) {
                currentCount--;
            } else {
                currentCount = 0;
            }

            countElement.textContent = currentCount;
        }


    </script>
</body>

</html>