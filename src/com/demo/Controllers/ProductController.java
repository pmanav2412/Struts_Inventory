package com.demo.Controllers;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.demo.DAO.Product;

import com.demo.Services.DataServices;
import com.opensymphony.xwork2.ActionSupport;

public class ProductController extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	
	//==========  handles view condition in allproducts.jsp
	private String condition= "DATA_CHHE";
	public String getCondition() {
		return condition;
	}
     public void setCondition(String condition) {
		this.condition = condition;
	}
     
     
     
   //==========  List of Produts object to display all Products in aapProducts.jsp
	List<Product> i;
	public List<Product> getI() {
		return i;
	}
	public void setI(List<Product> i) {
		this.i = i;
	}
	
	
	
	
	//==========  Global Session
	public Map<String, Object> usersession;
	@Override
	public void setSession(Map<String, Object> session) {
      this.usersession = session;
	}
	
	//==========
	private static final long serialVersionUID = 1L;
	//==========
	
	
	//==========  Product Object For User Input For Product DAO(Entity)
	private Product product = new Product();
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
	
	
	// ======== save Product Detals(ADD PRODUCT) ========

	public String insert() {
	    String[] array = {"Food","Beer","taxable","Non-Tax"};
		Product productInfo = new Product(product.getProductname(), product.getWeight(), product.getQuantity(),
				product.getBrand(), product.getSellingprice(), product.getRetailprice(), product.getSellername(),
				  array[Integer.parseInt(product.getProducttype())-1]);
		productInfo.setUserid((String) usersession.get("USER_EMAIL"));
		boolean b = DataServices.SaveProduct(productInfo);
	     i = DataServices.getAllProducts((String) usersession.get("USER_EMAIL"));
		if (b) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	
	
	// ======== (GET ALL PRODUCTs) ========
	
	public String getProducts() {
		String emailid= (String) usersession.get("USER_EMAIL");
		System.out.println("number of Products for ="+ emailid);
		 i = DataServices.getAllProducts((String) usersession.get("USER_EMAIL"));
		 System.out.println(i.size());
		if(i.size()>0) {

			condition = "DATA_CHHE";
			return SUCCESS;
		}else {
		
			condition = "DATA_NATHI";
			return SUCCESS;
		}
	}

	
	

	

}
