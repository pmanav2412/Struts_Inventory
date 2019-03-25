<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.demo.DAO.Product"%>
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
				<li class="nav-item "><a class="nav-link " href="<s:url action="invoiceStatus"/>">WellCome
						Page<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link "
					href="insertProducts.jsp">Add Product</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">All
						Product</a></li>
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
	
	
<!--  ====================================================  TRYYYYYYYYYYYYYYYYYY ====================================================  -->	
	
	<%-- <s:set name="createInvoice" value="#session['invoiceProducts']"/>
	<s:if test="%{#createInvoice=='YES'}"> --%>
	
	<form  style="padding-top: 10px; padding-left: 22%" action="SelectedProduct.action">
  <div class="form-row align-items-center">
    <div class="col-auto">
     
       <input type="text" class="form-control" id="inputCity" placeholder="Product name" name ="product.productname">
    </div>
    <div class="col-auto" style="padding-top: 10px;">
    <h2>
				<s:select headerKey="-1" headerValue="Select Seller" class="form-control"
					list="#{'1':'All Products', '2':'Core Mark', '3':'Decrescenti', '4':'Saratoga Eagle','5':'Green Mountain'}"
					name="product.sellername" value="1"  />
			</h2>
			</div>
    <div class="col-auto"style="padding-top: 10px;">
      <h2>
				<s:select headerKey="-1" headerValue="Product Type" class="form-control"
					list="#{'1':'All Products', '2':'Food', '3':'Alcohol', '4':'taxable','5':'Non-Tax'}"
					name="product.producttype" value="1"  />
			</h2>
    </div>
    <div class="col-auto" style="">
      	 <s:submit value="Submit" class="btn btn-primary form-control" /> 
    </div>
    <div class="col-auto" style="">
    <a class="btn btn-success" href="#" role="button">Done</a>
  </div>
  </div>
</form>
<%-- </s:if>  THIS IS FOR SHOW FILTER FORM IF CREATE INVOICE IS ON --%>



<!--  ====================================================  TRYYYYYYYYYYYYYYYYYY ====================================================  -->



	<s:set name="product_available" value="condition" />

	<s:if test="%{#product_available=='DATA_CHHE'}">

		<table class="table" style="margin-top: 2%; margin-bottom: 1%;">


			<tr style="color: red;">
				<th scope="col"><h4>Product Name</h4></th>
				<th scope="col"><h4>Quantity</h4></th>
				<th scope="col"><h4>Weight</h4></th>
				<th scope="col"><h4>Brand</h4></th>
				<th scope="col"><h4>Selling Price</h4></th>
				<th scope="col"><h4>Retail Price</h4></th>
				<th scope="col"><h4>Seller Name</h4></th>
				<th scope="col"><h4>Product Type</h4></th>
			</tr>
			<s:iterator value="i">
				<tr>
					<th scope="row"><s:property value="productname" /></th>
					<th><s:property value="quantity" /></th>
					<th><s:property value="weight" /></th>
					<th><s:property value="brand" /></th>
					<th><s:property value="sellingprice" /></th>
					<th><s:property value="retailprice" /></th>
					<th><s:property value="sellername" /></th>
					<th><s:property value="producttype" /></th>

				</tr>
			</s:iterator>

		</table>
	</s:if>
	<s:else>
	
	

		<h3 style="margin-top: 5%; text-align: center;">NO Products
			Available! Insert The Product First</h3>
	</s:else>


	<%-- <h1><s:property value="i[0].productname"/> </h1> --%>
</body>
</html>