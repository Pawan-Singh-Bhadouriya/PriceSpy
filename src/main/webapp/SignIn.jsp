<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
label {
    display: inline-block;
    color: var(--bs-white);
}
</style>
</head>
<body>

	<%@include file="Header.jsp"%>
	<div class="container mt-5 pt-5">
		<form action="LoginCtl" method="post">
			<div class="form-group">
				<label for="email">Email address</label> <input name="email"
					type="email" class="form-control" id="email"
					aria-describedby="emailHelp" placeholder="Enter email"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input name="pwd"
					type="password" class="form-control" id="pwd"
					placeholder="Password">
			</div>
			
			<button type="submit" class="btn btn-primary mt-5">Submit</button>
		</form>
	</div>
	<%@include file="Footer.jsp"%>
</body>
</html>