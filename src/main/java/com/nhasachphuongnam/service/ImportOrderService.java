package com.nhasachphuongnam.service;

import java.util.List;

import com.nhasachphuongnam.entity.PhieuNhap;
import com.nhasachphuongnam.model.ImportOrder;

public interface ImportOrderService {
	
	ImportOrder convert(PhieuNhap var) ;
	
	boolean add(ImportOrder var) ;
	
	boolean update(ImportOrder var) ;
	
	boolean delete(String ma) ;
	
	ImportOrder getByID(String ma);
	
	List<ImportOrder> getAll() ;
}
