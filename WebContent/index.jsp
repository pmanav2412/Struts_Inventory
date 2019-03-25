<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Landing Page</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="collapse navbar-collapse" id="navbarText">
		</div>
	</nav>
	
<div style="padding: 5% 40% 60% 40%">
	<s:form action="login" >
		<s:label value="Email"/>
		<s:textfield name="userInfo.email" class="form-control" placeholder="Email" /><br>
		<s:label value="Password"/>
		<s:password name="userInfo.password" class="form-control" placeholder="password" /><br>
		<s:submit value="Submit" class="btn btn-primary"/><br>
		</s:form>
            Don't Have Account?<br>
		<a href="Signup.jsp">Sign Up</a>
		
	</div>
</body>
</html>