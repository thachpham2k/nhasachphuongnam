package com.nhasachphuongnam.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nha-cung-cap/")
public class SupplierController {
	@RequestMapping("index")
	public String index() {
		return "supplier/index";
	}
}
