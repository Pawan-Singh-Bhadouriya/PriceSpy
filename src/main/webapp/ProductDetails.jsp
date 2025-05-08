<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="co.in.pricespy.beans.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PriceSpy.com</title>

</head>

<body>
	<%@include file="Header.jsp"%>


	<div class="row2">
		<hr class="horiz2">
		<div class="row tab-contents active-tab " id="mobile">
			<%
			ArrayList<ProductBean> mobile = (ArrayList<ProductBean>) request.getAttribute("Products");
			Iterator<ProductBean> item = mobile.iterator();
			String uname = (String) session.getAttribute("Name");
			int counter = 0;
			while (item.hasNext()) {
				ProductBean bean = item.next();
				String imgname = bean.getProductName().replaceAll(" ", "_") + ".png";

				if (counter < 4) {
					//for(int i=0; i<4; i++){
			%>

			<div class="col">
				<div class="card w mt-3 card-size" id="tab-cards">
					<div class="card-body">
						<img style="width: 100%" src="images/<%=imgname%>" alt=""
							class="card-image">

					</div>
					<h3 class="card-title title">
						<%=bean.getProductName()%></h3>
					<h6>
						Amazon Price Rs
						<%=bean.getAmzonPrice()%>
					</h6>
					<h6>
						Flipcart Price Rs
						<%=bean.getFlipcartPrice()%>
					</h6>

					<div class="card-footer">

							
							<a href="<%=bean.getAlinks()%>" class="btn btn-dark ps-10 my-btn buy-btn" target="_blank">
  							<img src="Flipkart and Amazon/amazon.png" alt="Amazon" style="width: 100px;">
							</a><br>
							<a href="<%=bean.getFlinks()%>" class="btn btn-dark ps-10 my-btn " target="_blank">
  							<img src="Flipkart and Amazon/flipkart.png" alt="Flipkart" style="width: 100px;">
							</a>
							
					</div>
					<%
					if (uname != null) {
						String uid = (String) session.getAttribute("UID");
					%>
					<div class="card-footer">

						<a href="AddToCartCtl?pid=<%=bean.getProductId()%>&uid=<%=uid%>"
							class="btn btn-dark ps-10 my-btn">Add to cart</a>
					</div>
					<%
					}
					%>
				</div>
			</div>




			<%
			} else {
			%>
		</div>

		<div class="row tab-contents active-tab ">


			<%
			counter = -1;
			}

			counter++;

			}
			%>
		</div>


	</div>
	<%@include file="Footer.jsp"%>
</body>

</html>
