package com.ioh.model;

public class Order {

	private String orderno;
	private String ordertype ;
	private String orderStatus ;
	private String orderDate ;
	private String orderRemark ;
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getOrdertype() {
		return ordertype;
	}
	public void setOrdertype(String ordertype) {
		this.ordertype = ordertype;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderRemark() {
		return orderRemark;
	}
	public void setOrderRemark(String orderRemark) {
		this.orderRemark = orderRemark;
	}
	@Override
	public String toString() {
		return "Order [orderno=" + orderno + ", ordertype=" + ordertype + ", orderStatus=" + orderStatus
				+ ", orderDate=" + orderDate + ", orderRemark=" + orderRemark + "]";
	}
	
	
}
