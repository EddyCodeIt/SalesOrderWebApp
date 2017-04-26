<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>All Products</title>
		
		<style>
			table {
			    font-family: arial, sans-serif;
			    border-collapse: collapse;
			    width: 50%;
			}
		
			td, th {
			    border: 1px solid #dddddd;
			    text-align: left;
			    padding: 8px;
			}
		
			tr:nth-child(even) {
			    background-color: #dddddd;
			}
		</style>
		
	</head>
	<body>
		<br/>
		<table>
			<tr>
				<td><a href="/">Home</a></td>
				<td><a href="/secure/products/add-product">Add Product</a></td>
				<td><a href="/secure/customers/all-customers">List Customers</a></td>
				<td><a href="/secure/orders/all-orders">List Orders</a></td>
				<td><a href="/logout">Logout</a></td>
			</tr>
		</table>
	
		
		<h1>List of Products</h1>
		
		<table>
				<tr>
					<th> Product ID </th>
					<th> Description </th>
					<th> Quantity in Stock </th>
					
					<c:forEach var = "product" items = "${AllProducts}">
						<tr>
							<td>
								<c:out value="${product.pId}"/>
							</td>
							<td>
								<c:out value="${product.pDesc}"/>
							</td>
							<td>
								<c:out value="${product.qtyInStock}"/>
							</td>
						</tr>
					</c:forEach>
				</tr>
		</table> 
		
	</body>
</html>