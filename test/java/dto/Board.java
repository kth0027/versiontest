package dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Board {
	
	// 필드 
	private int pnum;
	private String productmaterial;
	private String productprint;
	private String productcoting;
	private String producthabji;
	private String productjubhab;
	private String productwarp;
	private String productworkday;
	private String productsuccessday;
	public Board(int pnum, String productmaterial, String productprint, String productcoting, String producthabji,
			String productjubhab, String productwarp, String productworkday, String productsuccessday) {
		super();
		this.pnum = pnum;
		this.productmaterial = productmaterial;
		this.productprint = productprint;
		this.productcoting = productcoting;
		this.producthabji = producthabji;
		this.productjubhab = productjubhab;
		this.productwarp = productwarp;
		this.productworkday = productworkday;
		this.productsuccessday = productsuccessday;
	}
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getProductmaterial() {
		return productmaterial;
	}

	public void setProductmaterial(String productmaterial) {
		this.productmaterial = productmaterial;
	}

	public String getProductprint() {
		return productprint;
	}

	public void setProductprint(String productprint) {
		this.productprint = productprint;
	}

	public String getProductcoting() {
		return productcoting;
	}

	public void setProductcoting(String productcoting) {
		this.productcoting = productcoting;
	}

	public String getProducthabji() {
		return producthabji;
	}

	public void setProducthabji(String producthabji) {
		this.producthabji = producthabji;
	}

	public String getProductjubhab() {
		return productjubhab;
	}

	public void setProductjubhab(String productjubhab) {
		this.productjubhab = productjubhab;
	}

	public String getProductwarp() {
		return productwarp;
	}

	public void setProductwarp(String productwarp) {
		this.productwarp = productwarp;
	}

	public String getProductworkday() {
		return productworkday;
	}

	public void setProductworkday(String productworkday) {
		this.productworkday = productworkday;
	}

	public String getProductsuccessday() {
		return productsuccessday;
	}

	public void setProductsuccessday(String productsuccessday) {
		this.productsuccessday = productsuccessday;
	}

	

	

}
