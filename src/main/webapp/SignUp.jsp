<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
label {
    display: inline-block;
    color: var(--bs-white);
}
</style>

<body >
	<%@include file="Header.jsp"%>
	<div class="container mt-5 pt-5 mb-5 pb-5">
		<form action="UserRegistration" class="needs-validation" novalidate method="post">
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="fname">First name</label> <input name="fname" type="text"
						class="form-control" id="fname" placeholder="First name"
						value="Mark" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="lname">Last name</label> <input name="lname"
						type="text" class="form-control" id="lname"
						placeholder="Last name" value="Otto" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="col-md-4 mb-3">
					<label for="uname">Email</label>
					<div class="input-group">
						
						<input name="uname" type="email" class="form-control"
							id="uname" placeholder="Username"
							required>
						<div class="invalid-feedback">Please choose a username.</div>
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-3 mb-3">
					<label for="pwd">Password</label> <input name="pwd" type="password"
						class="form-control" id="pwd" placeholder="password"
						required>
					<div class="invalid-feedback">Please provide a valid password.
					</div>
				</div>
				<div class="col-md-3 mb-3">
					<label for="address">Address</label> <input type="text" name="address"
						class="form-control" id="address" placeholder="City"
						required>
					<div class="invalid-feedback">Please provide a valid
						Password.</div>
				</div>
				<div class="col-md-3 mb-3">
					<label for="mobile">Mobile</label> <input name="mobile" type="text"
						class="form-control" id="mobile" placeholder="Mobile"
						required>
					<div class="invalid-feedback">Please provide a valid Mobile
						Number.</div>
				</div>
			</div>
			
			<button class=" mt-5 btn btn-primary" type="submit">Submit form</button>
		</form>
	</div>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
	<%@include file="Footer.jsp"%>
</body>
</html>