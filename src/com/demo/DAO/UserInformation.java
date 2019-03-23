package com.demo.DAO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userinformation")
public class UserInformation {
	
	
	@Id
	@Column(name="email")
	private String email;
	@Column(name="firstname")
	private String firstname;
	@Column(name="lastname")
	private String lastname;
	
	@Column(name="password")
	private String password;
	@Column(name="conpassword")
	private String conpassword;
	@Column(name="orgname")
	private String orgname;
	@Column(name="license_no")
	private String license_no;
	
	public UserInformation() {
		
	}
	

	/**
	 * @param firstname
	 * @param lastname
	 * @param email
	 * @param password
	 * @param conpassword
	 * @param orgname
	 * @param license_no
	 */
	public UserInformation(String firstname, String lastname, String email, String password, String conpassword,
			String orgname, String license_no) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.conpassword = conpassword;
		this.orgname = orgname;
		this.license_no = license_no;
	}


	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public String getLicense_no() {
		return license_no;
	}
	public void setLicense_no(String license_no) {
		this.license_no = license_no;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public String getConpassword() {
		return conpassword;
	}
	public void setConpassword(String conpassword) {
		this.conpassword = conpassword;
	}
	

}
