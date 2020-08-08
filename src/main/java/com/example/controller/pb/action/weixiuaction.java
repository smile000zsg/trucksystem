package com.example.controller.pb.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.pojo.Datum;
import com.example.pojo.Order;
import com.example.service.pb.biz.orderbiz;

@RestController
@RequestMapping("/api/weixiu") 
public class weixiuaction {
	
	@Autowired
	private orderbiz orderbiz;
	

	@GetMapping("queryByid/{olicense}")
	public Map<String , Object> queryByid(@PathVariable("olicense")String olicense) {
		System.out.println(olicense);
		Order o=orderbiz.queryByolicense(olicense);
		Map<String , Object> message=new HashMap<String, Object>();
		if(o!=null) {
			message.put("code", "300");
		}else {
			Datum d=orderbiz.queryByid(olicense);
			message.put("zhi", d);
			message.put("code", "200");
		}
		return message;
	}
	
	
	@PostMapping("order")
	public Map<String, Object> insert(@RequestBody Order o) {
		int coun=orderbiz.adddate(o);
		Map<String, Object> message=new HashMap<String, Object>();
		if(coun>0) {
			message.put("code", "200");
		}else {
			message.put("code", "300");
		}
		return message;
	}
	
	
	@PostMapping("zwwx/order")
	public Map<String, Object> insert1(@RequestBody Order o) {
		System.out.println(o.getOid());
		System.out.println(o.getOvehicle());
		int coun=orderbiz.adddate(o);
		Map<String, Object> message=new HashMap<String, Object>();
		if(coun>0) {
			int c=orderbiz.updateByid(o.getOvehicle());
			message.put("code", "200");
		}else {
			message.put("code", "300");
		}
		return message;
	}
	
}
