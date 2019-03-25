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
<title>Insert New Product</title>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item "><a class="nav-link " href="<s:url action="invoiceStatus"/>">WellCome
						Page<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">Add
						Product</a></li>
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

	

	<s:form action="insertProduct" style="margin: 5% 20% 60% 15%"
		class="col-md-8">

		<div class="form-group">
			<!-- style="margin-bottom: 100px; padding-bottom: 100px" -->
			<s:label value="User Id" for="formGroupExampleInput"
				style="padding-top: 10px;" />
			<s:textfield name="product.userid" class="form-control"
				placeholder="User ID" />
		</div>
		<div class="form-group" style="margin-bottom: 100px;">
			<s:label value="Product Name" for="formGroupExampleInput"
				style="padding-top: 10px;" />
			<s:textfield name="product.productname" class="form-control"
				placeholder="Product Name" />
		</div>


		<div class="form-group ">
			<s:label value="Weight" style="padding-top: 10px;" />
			<s:textfield name="product.weight" class="form-control"
				placeholder="Weight" />
		</div>

		<div class="form-group">
			<s:label value="Quantity" style="padding-top: 10px;" />
			<s:textfield name="product.quantity" class="form-control"
				placeholder="Quantity" />
		</div>
		<div class="form-group">
			<s:label value="Brand" style="padding-top: 10px;" />
			<s:textfield name="product.brand" class="form-control"
				placeholder="Product Brand" />
		</div>

		<div class="form-group">
			<s:label value="Selling Price" style="padding-top: 10px;" />
			<s:textfield name="product.sellingprice" class="form-control"
				placeholder="Selling Price" />
		</div>

		<div class="form-group">
			<s:label value="Retail Price" style="padding-top: 10px;" />
			<s:textfield name="product.retailprice" class="form-control"
				placeholder="Retail Price" />
		</div>
		<div class="form-group">
			<h2>
				<s:label value="Seller Name" style="padding-top: 10px;"></s:label>
				<s:select headerKey="-1" headerValue="Select Seller"
					list="#{ '1':'Core Mark', '2':'Decrescenti', '3':'Saratoga Eagle','4':'Green Mountain'}"
					name="product.sellername" value="1" />
			</h2>
			<%-- <s:label value="Seller Name" />
			<s:textfield name="product.sellername" class="form-control"
				placeholder="Seller Name" /> --%>
		</div>
		<div class="form-group">
			<h2>
				<s:label value="Product Type" style="padding-top: 10px;"></s:label>
				<s:select headerKey="-1" headerValue="Select Type"
					list="#{'1':'Food', '2':'Alcohol', '3':'taxable', '4':'Non-Tax'}"
					name="product.producttype" value="1" />
			</h2>

		</div>



		<s:submit value="Submit" class="btn btn-primary" />

	</s:form>
</body>
</html>