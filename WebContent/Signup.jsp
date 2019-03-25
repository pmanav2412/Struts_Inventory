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
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="collapse navbar-collapse" id="navbarText">
		</div>
	</nav>

	<s:form action="signup" style="margin: 5% 20% 60% 20%" class="col-md-8">

		<div class="form-group" style="margin-bottom: 100px;">
			<s:label value="First name" for="formGroupExampleInput" />
			<s:textfield name="userInfo.firstname" class="form-control"
				placeholder="First name" />
		</div>
		<div class="form-group" style="margin-bottom: 100px;">
			<s:label value="Last name" for="formGroupExampleInput" />
			<s:textfield name="userInfo.lastname" class="form-control"
				placeholder="Last name" />
		</div>


		<div class="form-group ">
			<s:label value="Email" />
			<s:textfield name="userInfo.email" class="form-control"
				placeholder="Email" />
		</div>

		<div class="form-group">
			<s:label value="Password" />
			<s:password name="userInfo.password" class="form-control"
				placeholder="Password" />
		</div>
		<div class="form-group">
			<s:label value="Conform Password" />
			<s:password name="userInfo.conpassword" class="form-control"
				placeholder="Conform Password" />
		</div>

		<div class="form-group">
			<s:label value="Organization Name" />
			<s:textfield name="userInfo.orgname" class="form-control"
				placeholder="Organization Name" />
		</div>

		<div class="form-group">
			<s:label value="License Number" />
			<s:textfield name="userInfo.license_no" class="form-control"
				placeholder="License Number" />
		</div>



		<s:submit value="Submit" class="btn btn-primary" />

	</s:form>
	</div>
</body>
</html>