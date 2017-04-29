<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add New Customer</title>
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
		
		<h1>Add New Customer</h1>
		
		<form:form modelAttribute = "Customer">
			<table>
				<tr>
					<td> <label> Customer Name: </label> <form:input path = "cName"></form:input>  </td>
					<td> <form:errors path = "cName"></form:errors> </td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Add" />
					</td>
				</tr>
			</table>

		</form:form>
	</body>
</html>