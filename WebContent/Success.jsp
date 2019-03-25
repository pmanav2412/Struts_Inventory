<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
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
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link active" href="#">WellCome
						Page<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link "
					href="insertProducts.jsp">Add Product</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<s:url action="allProducts" />">All Product</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item nav-link disable" style="padding-right: 10px">
					<s:property value="#session['USER_EMAIL']" />
				</li>

				<form class="form-inline my-2 my-lg-0 nav-item">
					<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
				</form>

			</ul>
		</div>
	</nav>

	<s:set name="createInvoice" value="#session['invoiceProducts']" />

	<s:if test="%{#createInvoice=='YES'}">
		 <%-- <s:form action="#" style="margin: 3% 20% 60% 20%">

		<div class="form-group">
			
			<s:textfield name="product.userid" class="form-control"
				placeholder="Product Name" label="Product Name" />
				<s:submit value="Submit" class="btn btn-primary" style="align-content : center;margin: 12px 25%;" />
		</div>
		</s:form> --%> 

	</s:if>
	<s:else>
		<h3 style="margin-top: 5%; text-align: center;">
			Login Successful! Thank You
			<s:property value="#session['USER_NAME']" />
			!<br/> 
			<a href='<s:url action="createInvoice"></s:url>'
				class="btn btn-info" role="button" style="align-content: center; margin-top: 22px;">Create Invoice </a>
		</h3>
	</s:else>




</body>
</html>