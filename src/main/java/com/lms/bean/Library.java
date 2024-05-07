package com.lms.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Library {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int lid;
	@Column
	private String lname;
	private String lauthor;
	private String publisher;
	private float price;
	private int edition;
	
	
	public Library() {
		super();
		
	}


	public Library(int lid, String lname, String lauthor, String publisher, float price, int edition) {
		super();
		this.lid = lid;
		this.lname = lname;
		this.lauthor = lauthor;
		this.publisher = publisher;
		this.price = price;
		this.edition = edition;
	}


	public int getLid() {
		return lid;
	}


	public void setLid(int lid) {
		this.lid = lid;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getLauthor() {
		return lauthor;
	}


	public void setLauthor(String lauthor) {
		this.lauthor = lauthor;
	}


	public String getPublisher() {
		return publisher;
	}


	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public int getEdition() {
		return edition;
	}


	public void setEdition(int edition) {
		this.edition = edition;
	}


	@Override
	public String toString() {
		return "Library [lid=" + lid + ", lname=" + lname + ", lauthor=" + lauthor + ", publisher=" + publisher
				+ ", price=" + price + ", edition=" + edition + "]";
	}
	
	
	
	
}
