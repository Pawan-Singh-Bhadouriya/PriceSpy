<%@page import="java.util.ArrayList"%>
<%@page import="co.in.pricespy.beans.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Cart</title>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container mt-5 pt-5 pb-5">
		<table class="table table-striped table-hover table-bordered">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Flipcart Price</th>
				<th>Amazone Price</th>
				<th>Buy</th>
				<th>Action</th>
			</tr>
			<%
			ArrayList<ProductBean> allProducts = (ArrayList<ProductBean>) request.getAttribute("Products");
			for (ProductBean product : allProducts) {
			%>
			<tr>
				<td><%=product.getProductId()%></td>
				<td><%=product.getProductName()%></td>
				<td><%=product.getFlipcartPrice()%></td>
				<td><%=product.getAmzonPrice()%></td>
				<td><a href="<%=product.getAlinks()%>">Amazon</a> 
				<a href="<%=product.getFlinks()%>">Flipcart</a>
				</td>
				<td><a href="DeleteFromCart?pid=<%=product.getProductId() %>">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>