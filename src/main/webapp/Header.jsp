<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<link rel="stylesheet" href="./Test Bootstrap/css/bootstrap.min.css">
<script src="./Test Bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="./JS/amazonScrapper.js"></script>

<script src="./JS/comparisionApi.js"></script>

<script src="./JS/priceComparision.js"></script>


<link rel="stylesheet" href="./CSS/style.css">
<link rel="stylesheet" href="./CSS/responsive.css">
<link rel="icon" href="./images/spy1.png" sizes="80*80">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/20f528de9a.js"
	crossorigin=”anonymous”></script>

<script src="./JS/script.js"></script>

</head>
<body>

	<!--here previously we have class=bg-dark in nav also with this class nav also have navbar-dark-->
	<header>
		<nav class="navbar navbar-expand-lg  fixed-top" id="mainnav">
			<div class="container-fluid col-12" id="brand">

				<img src="./images/spy1.png" alt="" id="img"> <a
					href="index.jsp" class="navbar-brand ">PriceSpy</a>
				<div class="container col-6 mt-1" id="search">
					<form action="">
						<div class="row" id="search-box">

							<div class="input-group">
								<input type="search" class="form-control" id="search-item"
									placeholder="Search here....." onkeydown="search()"> <span
									class="input-group-text"><i class="bi bi-search search"></i></span>
							</div>
						</div>
					</form>
				</div>

				<ul class="navbar-nav">
					<%
					String name = (String) session.getAttribute("Name");
					if (name == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="SignUp.jsp">SignUp
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="SignIn.jsp">SignIn</a></li>

					<%
					} else {
					%>
					<li class="nav-text"><a class="nav-link" href="SignUp.jsp"><%=name%>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout

					</a></li>
					<%
					}
					%>
				</ul>
				<i class="bi bi-moon" id="mode" onclick="modes()"></i>

			</div>

		</nav>

		<hr class="horiz">

		<nav class="navbar navbar-expand-lg  justify-content-center "
			id="newnav">
			<!-- <div id="newnav "> -->
			<button class="navbar-toggler" data-bs-toggle="collapse"
				data-bs-target="#demo">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div id="demo" class="collapse navbar-collapse ">
				<div class="nav navbar-nav ms-auto col-sm-12  " id="nav2">

					<a href="GetProductData?cid=1" class="nav-item nav-link pr-20">Mobile</a>
					<a href="GetProductData?cid=2" class="nav-item nav-link pr-20">Laptop</a>
					<a href="GetProductData?cid=3" class="nav-item nav-link pr-20">Washing
						Machine</a> <a href="GetProductData?cid=4"
						class="nav-item nav-link pr-20">Tablet</a> <a
						href="GetProductData?cid=5" class="nav-item nav-link pr-20">Camera</a>
					<a href="GetProductData?cid=6" class="nav-item nav-link pr-20">Air
						Conditioner</a> <a href="GetProductData?cid=7"
						class="nav-item nav-link pr-20">Refrigerator</a> <a
						href="GetProductData?cid=8" class="nav-item nav-link pr-20">Teleivision</a>
					<%
					String uemail = (String) session.getAttribute("uemail");
					if (uemail != null) {
					%>
					<a href="GetCartListCtl?Uemail=<%=uemail %>" class="nav-item nav-link pr-20">View
						Cart</a>
					<%
					}
					%>
				</div>
			</div>
			</div>

			</div>
		</nav>
	</header>
</body>
</html>