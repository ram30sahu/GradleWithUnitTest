package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.demo.Service.Services;
import com.demo.modal.DemoModal;

@RestController
public class DemoController {
	
	
	private final Services serv;
	
	@Autowired
	public DemoController(Services serv) {
		super();
		this.serv = serv;
	}

	//get method without parameter
	@RequestMapping(value="/getRecord", method=RequestMethod.GET)
	//@ResponseBody 
	public String getRec()
	{
		String msg = "Hello sir, how are you?";
		return msg;
	}
	
	//get method with parameter
	@RequestMapping(value="/getRecordM/{name}", method = RequestMethod.GET) //used for to define service url and method
	@ResponseBody  // mostly used for response but it is not necessary
	//public String getRecM(@PathVariable String name)     //used when parameter is same in both case
	public String getRecM(@PathVariable (value="name") String fname)
	{
		String msg = "";
		msg = serv.getMsg(fname);
		return msg;
	}
	
	//post method without parameter
	@RequestMapping(value="getRecordDetail", method=RequestMethod.POST)
	@ResponseBody
	public String getRecD()
	{
		String msg="Hey, what are you doing?";
		return msg;
	}
	
	//post method without parameter
		@RequestMapping(value="getRecordDetailP", method=RequestMethod.POST)
		@ResponseBody
		public String getRecDetail(@RequestParam String name)
		{
			String msg="Hey "+name+" sir, what are you doing?";
			return msg;
		}
		
		//post method with bean class
		@RequestMapping(value="/getRecordBean", method = RequestMethod.POST)
		@ResponseBody
		public String getRecB(@RequestBody DemoModal demoM)
		{
			String msg= "Hello sir, Please find you details:-   id: "+demoM.getId()+", first name: "+demoM.getFname()+", last name: "+demoM.getlName();
			return msg;
		}

}
