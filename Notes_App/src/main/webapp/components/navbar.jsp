<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-primary">
	<a class="navbar-brand" href="index.jsp">Notes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp">Add Notes</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show Notes</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");
			if (user != null) {
			%>
			<a class="btn btn-outline-custom text-white" href=""
				data-toggle="modal" data-target="#exampleModal" role="button"><%=user.getName()%></a>
			<a href="LogoutServlet" class="btn btn-outline-custom text-white" href="register.jsp"
				role="button">Logout</a>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">User</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body text-container">
							<div class="container text-center">
		
								<h5></h5>
								<table class="table">
									<tbody>
										<tr>
											<th>ID</th>
											<td><%=user.getId()%></td>
										</tr>
										<tr>
											<th>Full Name</th>
											<td><%=user.getName()%></td>
										</tr>
										<tr>
											<th>Email Id</th>
											<td><%=user.getEmail()%></td>
										</tr>
									</tbody>
								</table>

								<div>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
			} else {
			%>
			<a class="btn btn-outline-custom text-white mr-2" href="login.jsp"
				role="button">Login</a> <a class="btn btn-outline-custom text-white mr-2"
				href="register.jsp" role="button">SignUp</a>
			<%
			}
			%>




		</form>
	</div>



</nav>