package com.exam.dto;

import java.util.List;

public class RefrigeratorDTO {
	
	int num;
	String userid;
	String gCode ;
	String gCategory;
    String gName;
    int rStock;
    
    List<GoodsDTO> goodsList;

	public RefrigeratorDTO() {}

	public RefrigeratorDTO(int num, String userid, String gCode, String gCategory, String gName, int rStock,
			List<GoodsDTO> goodsList) {
		super();
		this.num = num;
		this.userid = userid;
		this.gCode = gCode;
		this.gCategory = gCategory;
		this.gName = gName;
		this.rStock = rStock;
		this.goodsList = goodsList;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getgCode() {
		return gCode;
	}

	public void setgCode(String gCode) {
		this.gCode = gCode;
	}

	public String getgCategory() {
		return gCategory;
	}

	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public int getrStock() {
		return rStock;
	}

	public void setrStock(int rStock) {
		this.rStock = rStock;
	}

	public List<GoodsDTO> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<GoodsDTO> goodsList) {
		this.goodsList = goodsList;
	}

	@Override
	public String toString() {
		return "RefrigeratorDTO [num=" + num + ", userid=" + userid + ", gCode=" + gCode + ", gCategory=" + gCategory
				+ ", gName=" + gName + ", rStock=" + rStock + ", goodsList=" + goodsList + "]";
	}
	
	

}