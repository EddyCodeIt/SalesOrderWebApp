<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<style>
			table, th, td {
			    border: 1px solid black;
			}

			p {
			    font-family: "Times New Roman", Times, serif;
			    font-size: 20px;
			}
			#ordersH { 
				font-size: 14px;
			}
		</style>
	</head>
	<body>
	
		<br/>
		<table>
			<tr>
				<td><a href="/">Home</a></td>
				<td><a href="/secure/products/add-order">Add Order</a></td>
				<td><a href="/secure/customers/all-products">List Products</a></td>
				<td><a href="/secure/orders/all-customers">List Customers</a></td>
				<td><a href="/logout">Logout</a></td>
			</tr>
		</table>
		
		<h1>List of Orders</h1>
		
		<c:forEach var = "order" items = "${AllOrders}">
				<p class="sansserif"> <b> <c:out value="${order.oId}"/> </b> </p>			
				<br/>
				
				<table>
					<tr>
						<td>Quantity</td>
						<td>Order Date</td>
						<td>Customer ID</td>
						<td>Customer Name</td>
						<td>Product ID</td>
						<td>Description</td>
						
						
					</tr>
					
					<tr>
						<td><c:out value = "${order.qty}"/></td>
						<td><c:out value = "${order.orderDate}"/></td>
						<td><c:out value = "${order.cust.cId}"/></td>
						<td><c:out value = "${order.cust.cName}"/></td>
						<td><c:out value = "${order.prod.pId}"/></td>
						<td><c:out value = "${order.prod.pDesc}"/></td>
					</tr>	
					
				</table>
		</c:forEach>
	</body>
</html>