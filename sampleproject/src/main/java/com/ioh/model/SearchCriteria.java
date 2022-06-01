package com.ioh.model;

public class SearchCriteria {

	String msisdn;


	@Override
	public String toString() {
		return "SearchCriteria [ msisdn=" + msisdn + "]";
	}


	public String getMsisdn() {
		return msisdn;
	}


	public void setMsisdn(String msisdn) {
		this.msisdn = msisdn;
	}

}