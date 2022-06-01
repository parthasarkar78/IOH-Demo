package com.ioh.web.service;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import com.ioh.model.SearchData;

public class PrepaidServiceImpl implements PrepiadService{

	private Map<String,SearchData> allData = new HashMap<String, SearchData>();
	
	public SearchData fetchData(String msisdn) {
		
		
		
		
		return null;
	}
	
	private void readData() {
		  URL resource = getClass().getClassLoader().getResource("file.txt");
		  if (resource == null) {
			  System.out.println("File not found");
			  throw new IllegalArgumentException("file not found!");
		  } else {
			  
		  }

	}

	private String fillNull(String input) {
		if(input==null) {
			input = "";
		}
		return input ;
	}
}
