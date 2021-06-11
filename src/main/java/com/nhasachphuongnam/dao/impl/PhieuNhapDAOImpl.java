package com.nhasachphuongnam.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nhasachphuongnam.dao.CtPhieuNhapDAO;
import com.nhasachphuongnam.dao.PhieuNhapDAO;
import com.nhasachphuongnam.entity.CtHoaDon;
import com.nhasachphuongnam.entity.CtPhieuNhap;
import com.nhasachphuongnam.entity.PhieuNhap;

@Repository
@Transactional
public class PhieuNhapDAOImpl implements PhieuNhapDAO{
	@Autowired
	SessionFactory factory;
	
	@Autowired
	CtPhieuNhapDAO ctPhieuNhapDAO;

	public boolean add(PhieuNhap phieuNhap) {
		boolean flag = true;
		Session session = factory.openSession();
		Transaction tran = session.beginTransaction();
		try {
			session.save(phieuNhap);
			for(CtPhieuNhap i: phieuNhap.getCtPhieunhaps()) {
				session.save(i);
			}
			tran.commit();
		} catch(HibernateException ex) {
			tran.rollback();
			ex.printStackTrace();
			flag = false;
		} finally {
			session.close();
		}
		return flag;
	}

	public boolean update(PhieuNhap phieuNhap) {
		boolean flag = true;
		Session session = factory.openSession();
		Transaction tran = session.beginTransaction();
		try {
			session.update(phieuNhap);
			tran.commit();
		} catch(HibernateException ex) {
			tran.rollback();
			ex.printStackTrace();
			flag = false;
		} finally {
			session.close();
		}
		return flag;
	}

	public boolean delete(String ma) {
		boolean flag = true;
		Session session = null;
		session = factory.openSession();
		Transaction tran = session.beginTransaction();
		PhieuNhap phieuNhap = (PhieuNhap) session.get(PhieuNhap.class, ma);
		/*
		 * if(ctHoaDon == null) return false;
		 */
		try {	
			session.delete(phieuNhap);
			tran.commit();
		} catch(HibernateException ex) {
			tran.rollback();
			ex.printStackTrace();
			flag = false;
		} finally {
			session.close();
		}
		return flag;
	}

	public PhieuNhap getByID(String ma) {
		PhieuNhap phieuNhap = null;
		Session session = factory.openSession();
		try {
			phieuNhap = (PhieuNhap) session.get(PhieuNhap.class, ma);
		} catch(HibernateException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return phieuNhap;
	}
	
	@SuppressWarnings("unchecked")
	public List<PhieuNhap> getAll(){
		Criteria cr = factory.getCurrentSession().createCriteria(PhieuNhap.class);
		return cr.list();
	}
	
	/*
	 * ===================================advanced==================================
	 */
	public String getLastMa() {
		String sql = "SELECT top 1 MAPN FROM PHIEUNHAP ORDER BY MAPN DESC";
		Session session = factory.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);
		@SuppressWarnings("unchecked")
		List<String> results = (List<String>)query.list();
		return results.get(0);
	}
	
	public String getby() {
		String sql = "";
		Session session = factory.getCurrentSession();
		SQLQuery query = session.createSQLQuery(sql);

		@SuppressWarnings("unchecked")
		List<String> results = (List<String>) query.list();
		return results.get(0);
	}
}
