<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="./components/links.jsp"%>

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
						<h1>REGISTER</h1>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%><a href="login.jsp">Login</a></div>
					<%
					session.removeAttribute("reg-success");
					}
					%>
					
					<%
					String failedMsg = (String) session.getAttribute("failed-msg");
					if (failedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="name">Name</label> <input type="text"
									class="form-control" id="name" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>
							<button type="submit" class="btn btn-primary">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>