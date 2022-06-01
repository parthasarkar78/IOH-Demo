package com.ioh.model;

import java.util.List;

public class SearchData {
	
	private String msisdn ;
	private String fname ;
	private String lname ;
	private String refNo ;
	private String segment ;
	private String serviceClass;
	private String idtype ;
	private String idRef ;
	private String idExp ;
	private String address;
	private String city;
	private String cluster ;
	private String indi;
	private String clusterColor ;
	private String puk1;
	private String puk2;
	private String iccid;
	private String imei;
	private String poc;
	private String firstActive;
	private String bal;
	private String activationDate;
	private String grace;
	private String accnState;
	private List<PackageData> activePacks;
	private List<PackageData> packageHist;
	private List<Activity> activities;
	private String camData ;
	private String camSMS ;
	private String camVoice ;
	private String camMix ;
	private String rbtTitle ;
	private String rbtStatus;
	private String subDate ;
	private List<Order> orders ;
	public String getMsisdn() {
		return msisdn;
	}
	public void setMsisdn(String msisdn) {
		this.msisdn = msisdn;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getRefNo() {
		return refNo;
	}
	public void setRefNo(String refNo) {
		this.refNo = refNo;
	}
	public String getSegment() {
		return segment;
	}
	public void setSegment(String segment) {
		this.segment = segment;
	}
	public String getServiceClass() {
		return serviceClass;
	}
	public void setServiceClass(String serviceClass) {
		this.serviceClass = serviceClass;
	}
	public String getIdtype() {
		return idtype;
	}
	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}
	public String getIdRef() {
		return idRef;
	}
	public void setIdRef(String idRef) {
		this.idRef = idRef;
	}
	public String getIdExp() {
		return idExp;
	}
	public void setIdExp(String idExp) {
		this.idExp = idExp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String area) {
		this.city = area;
	}
	public String getCluster() {
		return cluster;
	}
	public void setCluster(String cluster) {
		this.cluster = cluster;
	}
	public String getIndi() {
		return indi;
	}
	public void setIndi(String indi) {
		this.indi = indi;
	}
	public String getPuk1() {
		return puk1;
	}
	public void setPuk1(String puk1) {
		this.puk1 = puk1;
	}
	public String getPuk2() {
		return puk2;
	}
	public void setPuk2(String puk2) {
		this.puk2 = puk2;
	}
	public String getIccid() {
		return iccid;
	}
	public void setIccid(String iccid) {
		this.iccid = iccid;
	}
	public String getImei() {
		return imei;
	}
	public void setImei(String imei) {
		this.imei = imei;
	}
	public String getPoc() {
		return poc;
	}
	public void setPoc(String poc) {
		this.poc = poc;
	}
	public String getFirstActive() {
		return firstActive;
	}
	public void setFirstActive(String firstActive) {
		this.firstActive = firstActive;
	}
	public String getBal() {
		return bal;
	}
	public void setBal(String bal) {
		this.bal = bal;
	}
	public String getActivationDate() {
		return activationDate;
	}
	public void setActivationDate(String activationDate) {
		this.activationDate = activationDate;
	}
	public String getGrace() {
		return grace;
	}
	public void setGrace(String grace) {
		this.grace = grace;
	}
	public String getAccnState() {
		return accnState;
	}
	public void setAccnState(String accnState) {
		this.accnState = accnState;
	}
	public List<PackageData> getActivePacks() {
		return activePacks;
	}
	public void setActivePacks(List<PackageData> activePacks) {
		this.activePacks = activePacks;
	}
	public List<PackageData> getPackageHist() {
		return packageHist;
	}
	public void setPackageHist(List<PackageData> packageHist) {
		this.packageHist = packageHist;
	}
	public List<Activity> getActivities() {
		return activities;
	}
	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}
	public String getCamData() {
		return camData;
	}
	public void setCamData(String camData) {
		this.camData = camData;
	}
	public String getCamSMS() {
		return camSMS;
	}
	public void setCamSMS(String camSMS) {
		this.camSMS = camSMS;
	}
	public String getCamVoice() {
		return camVoice;
	}
	public void setCamVoice(String camVoice) {
		this.camVoice = camVoice;
	}
	public String getCamMix() {
		return camMix;
	}
	public void setCamMix(String camMix) {
		this.camMix = camMix;
	}
	public String getRbtTitle() {
		return rbtTitle;
	}
	public void setRbtTitle(String rbtTitle) {
		this.rbtTitle = rbtTitle;
	}
	public String getRbtStatus() {
		return rbtStatus;
	}
	public void setRbtStatus(String rbtStatus) {
		this.rbtStatus = rbtStatus;
	}
	public String getSubDate() {
		return subDate;
	}
	public void setSubDate(String subDate) {
		this.subDate = subDate;
	}
	@Override
	public String toString() {
		return "SearchData [msisdn=" + msisdn + ", fname=" + fname + ", lname=" + lname + ", refNo=" + refNo
				+ ", segment=" + segment + ", serviceClass=" + serviceClass + ", idtype=" + idtype + ", idRef=" + idRef
				+ ", idExp=" + idExp + ", address=" + address + ", City=" + city + ", cluster=" + cluster + ", indi="
				+ indi + ", puk1=" + puk1 + ", puk2=" + puk2 + ", iccid=" + iccid + ", imei=" + imei + ", poc=" + poc
				+ ", firstActive=" + firstActive + ", bal=" + bal + ", activationDate=" + activationDate + ", grace="
				+ grace + ", accnState=" + accnState + ", activePacks=" + activePacks + ", packageHist=" + packageHist
				+ ", activities=" + activities + ", camData=" + camData + ", camSMS=" + camSMS + ", camVoice="
				+ camVoice + ", camMix=" + camMix + ", rbtTitle=" + rbtTitle + ", rbtStatus=" + rbtStatus + ", subDate="
				+ subDate + "]";
	}
	public String getClusterColor() {
		return clusterColor;
	}
	public void setClusterColor(String clusterColor) {
		this.clusterColor = clusterColor;
	}
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
}
