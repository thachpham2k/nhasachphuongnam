package com.nhasachphuongnam.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/hoat-dong/")
public class ActivityController {
	@RequestMapping("index")
	public String index(ModelMap model) {
		return "historyActivity/index";
	}
}
