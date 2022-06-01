package com.ioh.web.service;

import org.springframework.stereotype.Service;

import com.ioh.model.SearchData;

@Service
public interface PrepiadService {
	
	SearchData fetchData(String msisdn);

}
