<%@page import="com.opkey.pizza_hut.Service.EatableFoodService"%>
<%@page import="com.opkey.pizza_hut.Dto.EatableFood"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
 <style>
        * {
            margin: 0px;
            padding: 0px;
            /* outline: 0px; */
            box-sizing: border-box;
        }

        /* tr:hover{
            background-color: #eeeeee;
        }  */

        .img {
            border: 2px solid gray;
            border-radius: 50%;
            height: 60px;
            width: 60px;
        }

        .filter {
            position: absolute;
            right: 0px;
            left: 0px;
            top: 0px;
            bottom: 0px;
            z-index: 1;
            opacity: .7;
            background: rgb(2, 0, 36);
            background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(0, 212, 255, 1) 100%);
        }
        
        table {
            position: absolute;
            z-index: 2;
            left: 50%;
            top: 65%;
            transform: translate(-50%, -50%);
            width: 80%;
            border-collapse: collapse;
            border-spacing: 0px;
            border-radius: 12px 12px 0 0;
            overflow: hidden;
            box-shadow: 0 5px 12px rgba(32, 32, 32, .3);
            background: #fafafa;
            text-align: center;
        }

        td {
            padding: 3px 15px;
        }

        th {
            padding: 10px 15px;
            background: #01749d;
            color: #fafafa;
            text-transform: uppercase;
            font-family: 'Roboto', 'sans-serif';
        }

        td {
            font-family: 'Open sans, ' sans-serif;
            font-size: 17px;
        }

        tr:nth-child(odd) {
            background-color: #eeeeee;
        }

        .heading {
            background-color: #024066;
            color: white;
            font-size: 20px;
        }

        .update {
            text-decoration: none;
            color: white;
            border: 2px solid white;
            background-color: #01749d;
            padding: 10px 15px;
            border-radius: 8px;
        }

        .delete {
            text-decoration: none;
            color: white;
            border: 2px solid white;
            background-color: #d71921;
            padding: 10px 15px;
            border-radius: 8px;
        }
    </style>

<body >

		<%
			EatableFoodService foodService=new EatableFoodService();
		
			List<EatableFood> foods = foodService.displayFood();
		%>
		
		 <div class="filter">

         </div>
		<div class="table-box" >
			<table>
			 <tr>
                <th colspan="11" class="heading">Product Details</th>
            </tr>
				<tr class="table-row">	
					<th>Logo</th>
					<th>Food Name</th>
					<th>Food Type</th>
					<th>Price</th>
					<th>Description</th>
					<th>Offer</th>
					<th>Delete</th>
					<th>Update</th>
					
				</tr>
				 <%
					for(EatableFood food:foods){
				 %>
					<%if(food.getFoodName().equalsIgnoreCase("Chicago  style pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Chicagopizza.jpg' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Brik Oven Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Brickovenpizza.jpg'style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Italian Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Italianpizza.jpg' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("California Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Californiapizza.jpg'  style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Margherita Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Margaritapizza.jpg' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Deluxe veggie ")){%>
						<tr  class="table-row">
							<td><img src='image/Veggieloadedpizza.jpg' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Farmhouse Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Farmhousepizza.jpg' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					<%if(food.getFoodName().equalsIgnoreCase("Cheese & Corn Pizza")){%>
						<tr  class="table-row">
							<td><img src='image/Cheeseandcornpizza.JPG' style="border-radius:50%;" width="80px" height="60px" alt="indigo"/></td>
							<td><%=food.getFoodName() %></td>	
							<td><%=food.getFoodType() %></td>	
							<td><%=food.getPrice() %></td>	
							<td><%=food.getAbout() %></td>	
							<td><%=food.getOffer() %></td>	
							
							<td><a href="deletefood?id=<%=food.getId()%>" class="delete">DELETE</a></td>	
							<td><a href="admin-update-food.jsp?id=<%=food.getId()%>" class="update">EDIT</a></td>	
						</tr>
					<%}%>
					
					
				<%} %>
			</table>
		</div>
</body>
</html>