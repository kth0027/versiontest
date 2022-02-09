package dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Board {
	
	// 필드 
	private int pnum;
	private String productnumber;
	private String productcode;
	private String productname;
	private String productmaterial;
	private String productprint;
	private String productcoting;
	private String producthabji;
	private String productjubhab;
	private String productwarp;
	private String productworkday;
	private String productsuccessday;
	private String productdate;
	
	// 빈생성자
	public Board() {
		// TODO Auto-generated constructor stub
	}
	
	// 자동생성자
	public Board(int pnum, String productnumber, String productcode, String productname, String productmaterial,
			String productprint, String productcoting, String producthabji, String productjubhab, String productwarp,
			String productworkday, String productsuccessday, String productdate) {
		super();
		this.pnum = pnum;
		this.productnumber = productnumber;
		this.productcode = productcode;
		this.productname = productname;
		this.productmaterial = productmaterial;
		this.productprint = productprint;
		this.productcoting = productcoting;
		this.producthabji = producthabji;
		this.productjubhab = productjubhab;
		this.productwarp = productwarp;
		this.productworkday = productworkday;
		this.productsuccessday = productsuccessday;
		// 등록날짜와 오늘날짜와 동일하면 시간 아니면 날짜 표시
				Date today = new Date(); // 1. 오늘날짜
				SimpleDateFormat datetimeformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); // 날짜,시간형식
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // 날짜 형식
				SimpleDateFormat timeformat = new SimpleDateFormat("a hh:mm"); // 시간 형식
				try {
					Date date = datetimeformat.parse(productdate); // [문자열]DB -> 날짜/시간 형식 변환
					if (dateFormat.format(date).equals(dateFormat.format(today))) { // 등록날짜 = 오늘날짜 비교
						this.productdate = timeformat.format(date); // 날짜가 동일하면 시간형식 적용
					} else {
						this.productdate = dateFormat.format(date); // 날짜가 동일하지 않으면 날짜형식 적용
					}
				} catch (Exception e) {
				}
	}
	
	


	// 등록생성자
	public Board(String productnumber, String productcode, String productname, String productmaterial,
			String productprint, String productcoting, String producthabji, String productjubhab, String productwarp,
			String productworkday, String productsuccessday) {
		super();
		this.productnumber = productnumber;
		this.productcode = productcode;
		this.productname = productname;
		this.productmaterial = productmaterial;
		this.productprint = productprint;
		this.productcoting = productcoting;
		this.producthabji = producthabji;
		this.productjubhab = productjubhab;
		this.productwarp = productwarp;
		this.productworkday = productworkday;
		this.productsuccessday = productsuccessday;
	}

	
	// GET / SET
	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getProductnumber() {
		return productnumber;
	}

	public void setProductnumber(String productnumber) {
		this.productnumber = productnumber;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
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

	public String getProductdate() {
		return productdate;
	}

	public void setProductdate(String productdate) {
		this.productdate = productdate;
	}
	

	

}
