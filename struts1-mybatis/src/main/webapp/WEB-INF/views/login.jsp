<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 60px;
		background-color: #f5f5f5;
	}
</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<a href="/" class="navbar-brand">Brand</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/todo.do">Todos</a></li>
			<li><a href="http://www.google.com">Google</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right my-2 my-lg-0">
			<li><a href="/login.do">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<%-- <div>Current date is <%=date%></div> --%>
		<%-- My name is ${name} and password is ${password} --%>
		<form action="/login.do" method="POST">
			<p><font color="red">${errorMessage}</font></p>
			Name: <input type="text" name="name"/>
			Password: <input type="password" name="password"/>
			<input type="submit" value="Login"/>
		</form>
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>

</html>