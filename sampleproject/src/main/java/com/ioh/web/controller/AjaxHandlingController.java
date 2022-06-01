package com.ioh.web.controller;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ioh.model.DefectSeverityDetails;
import com.ioh.model.Developer;
import com.ioh.model.SearchCriteria;
import com.ioh.model.SearchData;

@Controller
//@RequestMapping(value = "/ajax")
public class AjaxHandlingController {

	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value = "/getDefectCount", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody DefectSeverityDetails postEmployeeData(@RequestBody Developer developer) {

		// process the developer object
		// Your implementation. For demo I hard-coded the Defect counts

		DefectSeverityDetails defectSeverityDetails = new DefectSeverityDetails();
		defectSeverityDetails.setHigh(3);
		defectSeverityDetails.setMedium(2);
		defectSeverityDetails.setLow(8);

		return defectSeverityDetails;
	}

	@RequestMapping(value = "/developerDefects")
	public String showEmployeePage() {
		return "developerDefects";
	}

	@RequestMapping(value = "/searchResults" , method = RequestMethod.POST , produces = "application/json")
	public @ResponseBody SearchData getSearchResultViaAjax(@RequestBody SearchCriteria searchCriteria) {

		//AjaxResponseBody result = new AjaxResponseBody();
		SearchData searchData = null;
		try {
			searchData = new SearchData();
			System.out.println("search ------"+searchCriteria.getMsisdn());
			if (isValidSearchCriteria(searchCriteria.getMsisdn())) {
				String path = servletContext.getRealPath("/WEB-INF/resources/");
				ObjectMapper objectMapper = new ObjectMapper();
				
				if("6285717483267".equals(searchCriteria.getMsisdn())) {
					InputStream inputStream = new FileInputStream(path+"/6285717483267.json");
					searchData = objectMapper.readValue(inputStream, SearchData.class);
				}else {
					InputStream inputStream = new FileInputStream(path+"/6285717123456.json");
					searchData = objectMapper.readValue(inputStream, SearchData.class);
				}
				System.out.println(searchData);
				System.out.println("call done ---------------");
			} else {
				System.out.println("error");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		//AjaxResponseBody will be converted into json format and send back to the request.
		return searchData;

	}

	private boolean isValidSearchCriteria(String search) {

		boolean valid = true;

		if (StringUtils.isEmpty(search)) {
			valid = false;
		}

		return valid;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		return "customerportal2";
	}
	
	@RequestMapping(value = "/packageSubscription", method = RequestMethod.GET)
	public String showPackageSubs(ModelMap model) {
		return "packagesubscription";
	}
	
	@RequestMapping(value = "/cdr", method = RequestMethod.GET)
	public String showCdr(ModelMap model) {
		return "cdr";
	}
	
}
