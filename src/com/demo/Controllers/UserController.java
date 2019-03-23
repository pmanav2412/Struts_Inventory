package com.demo.Controllers;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.demo.DAO.Product;
import com.demo.DAO.UserInformation;
import com.demo.Services.DataServices;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserController extends ActionSupport implements SessionAware {
	
	
	
	//========== This is Invoice Mode for Success.jsp
	private String createInvoice ="NO";
	public String getCreateInvoice() {
		return createInvoice;
	}
	public void setCreateInvoice(String createInvoice) {
		this.createInvoice = createInvoice;
	}


	//========== This Input method overridden to manupulate allproducts.jsp
	@Override
	public String input() throws Exception {
		createInvoice ="YES";
		usersession.put("invoiceProducts", createInvoice);
		return super.input();
	}
	
	
	//========== success.jsp view based on invoice mode
	public String invoiceStatus()  {
		createInvoice = (String) usersession.get("invoiceProducts");
		return SUCCESS;
	}
	
	
	//========== User Information DAO(Entity) to get the user input 
	UserInformation userInfo = new UserInformation();
	
	
	//==========  Global Session 
	public Map<String, Object> usersession;
	@Override
	public void setSession(Map<String, Object> session) {
		this.usersession = session;

	}
	

	public UserInformation getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInformation userInfo) {
		this.userInfo = userInfo;
	}

	// ======== Check User login Credentials ========
	public String Signin() {
        usersession.put("USER_EMAIL",userInfo.getEmail());
		System.out.println(userInfo.getEmail() + "   " + userInfo.getPassword());
		boolean b = DataServices.GetUser(userInfo.getEmail(), userInfo.getPassword());
		userInfo.setFirstname(DataServices.name);
		 usersession.put("USER_NAME",DataServices.name);
		 usersession.put("invoiceProducts", createInvoice);
		if (b) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	// ======== save User Detals ========
	public String Signup() {
		UserInformation user = new UserInformation(userInfo.getFirstname(), userInfo.getLastname(), userInfo.getEmail(),
				userInfo.getPassword(), userInfo.getConpassword(), userInfo.getOrgname(), userInfo.getLicense_no());
		boolean b = DataServices.SaveUser(user);
		if (b) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
