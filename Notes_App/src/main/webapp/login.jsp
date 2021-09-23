<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="./components/links.jsp"%>
<link type="stylesheet">
<style type="text/css">
</style>
</head>
<body>
	<%@include file="./components/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<h1>LOGIN</h1>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					
					<%
					String withoutLogin = (String) session.getAttribute("Login-error");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
					<%
					session.removeAttribute("Login-error");
					}
					%>
					
					<%
					String logoutMsg = (String) session.getAttribute("logout-msg");
					if (logoutMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=logoutMsg%></div>
					<%
					session.removeAttribute("logout-msg");
					}
					%>
					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" name="upassword"
									id="exampleInputPassword1">
							</div>
							<button type="submit" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>