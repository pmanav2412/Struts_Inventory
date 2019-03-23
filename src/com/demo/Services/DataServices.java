package com.demo.Services;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.demo.Controllers.ProductController;
import com.demo.Controllers.UserController;
import com.demo.DAO.Product;
import com.demo.DAO.UserInformation;
import com.demo.hbm.HibernateUtil;

public class DataServices {

	static Session session = null;
	public static String name;

	// SAVE USER
	public static Boolean SaveUser(UserInformation user) {

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Transaction t = session.beginTransaction();
			session.save(user);
			t.commit();
			session.close();
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}

	// GET USER
	public static Boolean GetUser(String em, String p) {

		try {
			session = HibernateUtil.getSessionFactory().openSession();

			Query q = session.createQuery("From UserInformation u Where u.password=:password and u.email=:email ");
			q.setParameter("password", p);
			q.setParameter("email", em);
			List<UserInformation> l = q.list();
			for (UserInformation u : l) {
				name = u.getFirstname();
			}
			if (l.size() > 0) {

				session.close();
				return true;
			}
			return false;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}

	// SAVE PRODUCT
	public static boolean SaveProduct(Product p) {

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Transaction t1 = session.beginTransaction();
			session.save(p);
			t1.commit();
			session.close();
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}

	// GET ALL PRODUCTS
	public static List<Product> getAllProducts(String uid) {

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			Query q = session.createQuery("From Product p Where p.userid=:userid");
			q.setParameter("userid", uid);
			List<Product> l = q.list();
			System.out.println(l.size());
			return l;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}
}
