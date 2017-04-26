<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add New Product</title>
	</head>
	<body>
		<br/>
		<table>
			<tr>
				<td><a href="/">Home</a></td>
				<td><a href="/secure/products/all-products">List Products</a></td>
				<td><a href="/secure/customers/all-customers">List Customers</a></td>
				<td><a href="/secure/orders/all-orders">List Orders</a></td>
			</tr>
		</table>
		
		<h1>Add New Product</h1>
		
		<form:form modelAttribute = "Product">
			<form>
				<table>
					<tr>
						<td>
							<label> Product Description: </label> 
							<!-- Binds an input value to an attribute of a POJO representing student -->
							<form:input path="pDesc"></form:input>
						</td>
						<td><form:errors path = "pDesc"></form:errors></td>
					</tr>
					<tr>
						<td>
							<label> Quantity in Stock: </label> 
							<!-- Binds an input value to an attribute of a POJO representing student -->
							<form:input path="qtyInStock"></form:input>
						</td>
						<td><form:errors path = "qtyInStock"></form:errors></td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="Submit" />
						</td>
					</tr>
				</table>
			</form>
		</form:form>
	</body>
</html>