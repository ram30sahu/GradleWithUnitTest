package com.demo.Service;

import org.springframework.stereotype.Service;

@Service
public class Services {
	
	public String getMsg(String name){
		String msg =  "Hello "+name+" sir, how are you?";
		return msg;
	}

}
