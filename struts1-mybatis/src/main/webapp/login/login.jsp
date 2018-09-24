<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

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
		<html:form styleClass="form-horizontal" action="/login" focus="userName">
			<div class="form-group">
				<%-- <p><font color="red">${errorMessage}</font></p> --%>
				<label class="control-label col-sm-2" for="userName">Name: </label>
				<div class="col-sm-10">
					<html:text styleClass="form-control" name="loginForm" property="userName" />
				</div>
				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password:</label>
			 	<div class="col-sm-10"> 
					<html:password styleClass="form-control" name="loginForm" property="password"/>
				</div>
			</div>
			<div class="form-group"> 
		   		<div class="col-sm-offset-2 col-sm-10">
			    	<html:submit value="Login"/>
			   	</div>
			</div>
		</html:form>
	</div>

	<footer class="footer">
		<p>footer content</p>
	</footer>

	<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>