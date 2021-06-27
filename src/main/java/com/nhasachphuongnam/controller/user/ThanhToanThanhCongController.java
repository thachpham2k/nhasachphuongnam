package com.nhasachphuongnam.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhasachphuongnam.model.ExportOrder;
import com.nhasachphuongnam.model.ProductDetail;
import com.nhasachphuongnam.service.ExportOrderService;
import com.nhasachphuongnam.service.PIService;

@Controller
@RequestMapping("thanh-toan/thanh-toan-thanh-cong")
public class ThanhToanThanhCongController {
public ExportOrder exportOrder;
	
	@Autowired
	ExportOrderService eoService;
	
	@Autowired
	PIService piService;
	
	@ModelAttribute("donHang")
	public ExportOrder donHang(ModelMap model) {
		if(this.exportOrder != null) {
			if(this.exportOrder.getMaKhachHang() != null) {
				model.addAttribute("khachHang", piService.getByID(this.exportOrder.getMaKhachHang()));
			}
			if(this.exportOrder.getMaNhanVien() != null) {
				model.addAttribute("nhanVien", piService.getByID(this.exportOrder.getMaNhanVien()));
			}
			long tongTien = 0;
			for(ProductDetail i: this.exportOrder.getChiTiets()) {
				tongTien += i.getGia() * i.getSoLuong();
			}
			model.addAttribute("tongTien", tongTien);
			return this.exportOrder;
		}
		return null;
	}
	
	@GetMapping(value="{id}")
	public String index(ModelMap model,
			@PathVariable("id") String id) {
		if(id != null) {
			this.exportOrder = eoService.getByID(id);
			model.addAttribute("donHang", this.donHang(model));
		}
		return "user/paymentSuccess";
	}
	
	@GetMapping(value="{id}", params="printInvoice")
	public String printInvoice() {
		return "user/invoice";
	}
}
