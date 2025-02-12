package com.exam.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.CartDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.OrderService;

@Controller
public class OrderController {

	OrderService orderService;
	
	public OrderController(OrderService orderService) {
		this.orderService = orderService;
	}

	@GetMapping("/orderConfirm")
	public String cartAdd(@RequestParam Integer num, Model m) {
		
		CartDTO cartDTO = orderService.orderConfirm(num);
		

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		MemberDTO dto = (MemberDTO)auth.getPrincipal();
		String userid = dto.getUserid();
		
		
		MemberDTO memberDTO = orderService.orderConfirmMember(userid);

		m.addAttribute("cDTO", cartDTO);
		m.addAttribute("mDTO", memberDTO);
		
		return "orderConfirm";
	}

	
	
}




