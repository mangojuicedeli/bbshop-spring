package com.bbshop.bit.domain;

import java.util.Date;

public class OrderVO {

	private long order_num;
	private String or_addr;
	private String pymntmthd;
	private long pymntamnt;
	private long phone;
	private long phone2;
	private long savings;
	private String or_msg;
	private Date or_date;
	private int stts; // 주문상태
	private long ship_nmbr;
	private Date ship_date;
	private long user_key;
	private String name;
	private String items;
	
	public long getOrder_num() {
		return order_num;
	}
	public void setOrder_num(long order_num) {
		this.order_num = order_num;
	}
	public String getOr_addr() {
		return or_addr;
	}
	public void setOr_addr(String or_addr) {
		this.or_addr = or_addr;
	}
	public String getPymntmthd() {
		return pymntmthd;
	}
	public void setPymntmthd(String pymntmthd) {
		this.pymntmthd = pymntmthd;
	}
	public long getPymntamnt() {
		return pymntamnt;
	}
	public void setPymntamnt(long pymntamnt) {
		this.pymntamnt = pymntamnt;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public long getPhone2() {
		return phone2;
	}
	public void setPhone2(long phone2) {
		this.phone2 = phone2;
	}
	public long getSavings() {
		return savings;
	}
	public void setSavings(long savings) {
		this.savings = savings;
	}
	public String getOr_msg() {
		return or_msg;
	}
	public void setOr_msg(String or_msg) {
		this.or_msg = or_msg;
	}
	public Date getOr_date() {
		return or_date;
	}
	public void setOr_date(Date or_date) {
		this.or_date = or_date;
	}
	public int getStts() {
		return stts;
	}
	public void setStts(int stts) {
		this.stts = stts;
	}
	public long getShip_nmbr() {
		return ship_nmbr;
	}
	public void setShip_nmbr(long ship_nmbr) {
		this.ship_nmbr = ship_nmbr;
	}
	public Date getShip_date() {
		return ship_date;
	}
	public void setShip_date(Date ship_date) {
		this.ship_date = ship_date;
	}
	public long getUser_key() {
		return user_key;
	}
	public void setUser_key(long user_key) {
		this.user_key = user_key;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	
	@Override
	public String toString() {
		return "OrderVO [order_num=" + order_num + ", or_addr=" + or_addr + ", pymntmthd=" + pymntmthd + ", pymntamnt="
				+ pymntamnt + ", phone=" + phone + ", phone2=" + phone2 + ", savings=" + savings + ", or_msg=" + or_msg
				+ ", or_date=" + or_date + ", stts=" + stts + ", ship_nmbr=" + ship_nmbr + ", ship_date=" + ship_date
				+ ", user_key=" + user_key + ", name=" + name + ", items=" + items + "]";
	}
}
