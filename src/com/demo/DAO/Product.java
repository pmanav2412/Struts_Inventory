package com.demo.DAO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
public class Product {

	@Id
	@GeneratedValue
	private int id;

	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	@Column(name = "userid")
	private String userid;

	@Column(name = "productname")
	private String productname;

	@Column(name = "weight")
	private String weight;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "brand")
	private String brand;

	@Column(name = "sellingprice")
	private double sellingprice;

	@Column(name = "retailprice")
	private double retailprice;

	@Column(name = "sellername")
	private String sellername;

	@Column(name = "producttype")
	private String producttype;

	public Product() {

	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public double getSellingprice() {
		return sellingprice;
	}

	public void setSellingprice(double sellingprice) {
		this.sellingprice = sellingprice;
	}

	public double getRetailprice() {
		return retailprice;
	}

	public void setRetailprice(double retailprice) {
		this.retailprice = retailprice;
	}

	public String getSellername() {
		return sellername;
	}

	public void setSellername(String sellername) {
		this.sellername = sellername;
	}

	public String getProducttype() {
		return producttype;
	}

	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	/**
	 * @param productname
	 * @param weight
	 * @param quantity
	 * @param brand
	 * @param sellingprice
	 * @param retailprice
	 * @param sellername
	 * @param producttype
	 */
	public Product(String productname, String weight, int quantity, String brand, double sellingprice,
			double retailprice, String sellername, String producttype) {
		this.productname = productname;
		this.weight = weight;
		this.quantity = quantity;
		this.brand = brand;
		this.sellingprice = sellingprice;
		this.retailprice = retailprice;
		this.sellername = sellername;
		this.producttype = producttype;
	}

	@Override
	public String toString() {
		return String.format(
				"Products [productname=%s, weight=%s, quantity=%s, brand=%s, sellingprice=%s, retailprice=%s, sellername=%s, producttype=%s]",
				productname, weight, quantity, brand, sellingprice, retailprice, sellername, producttype);
	}

}
