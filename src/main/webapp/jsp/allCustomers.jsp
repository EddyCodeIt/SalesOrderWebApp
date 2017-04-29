<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Customers</title>
		
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
				<td><a href="/secure/products/add-customer">Add Customer</a></td>
				<td><a href="/secure/customers/all-products">List Products</a></td>
				<td><a href="/secure/orders/all-orders">List Orders</a></td>
				<td><a href="/logout">Logout</a></td>
			</tr>
		</table>
		
		<h1>List of Customers</h1>
			<c:forEach var = "customer" items = "${AllCustomers}">
				
				<p class="sansserif">
					<b> <c:out value="${customer.cId}"/> <c:out value="${customer.cName}"/> </b>
				</p>
				
				<p id = "ordersH"> 
					<b> <c:out value="${customer.cName}"/>'s Orders</b> 
				</p>
				
				<br/>
				
				<table>
					<tr>
						<th> Order ID </th>
						<th> Quantity </th>
						<th> Product ID </th>
						<th> Description </th>
						
						
						<c:forEach var = "order" items = "${customer.orders}">
							<tr>
								<td> <c:out value="${order.oId}"/> </td>
								<td> <c:out value="${order.qty}"/> </td>
								<td> <c:out value="${order.prod.pId}"/> </td>
								<td> <c:out value="${order.prod.pDesc}"/> </td>
							</tr>
						</c:forEach>
					</tr>
				</table>
				
			</c:forEach>
 		
	</body>
</html>