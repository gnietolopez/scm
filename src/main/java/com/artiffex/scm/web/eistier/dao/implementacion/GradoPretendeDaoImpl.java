package com.artiffex.scm.web.eistier.dao.implementacion;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.artiffex.scm.web.businesstier.entity.GradoPretende;
import com.artiffex.scm.web.eistier.dao.interfaz.GradoPretendeDao;
import com.artiffex.scm.web.eistier.hibernate.HibernateUtil;

@Repository("gradoPretendeDao")
public class GradoPretendeDaoImpl implements GradoPretendeDao {

	private static final Logger log = Logger.getLogger(GradoPretendeDaoImpl.class);
	
	private Session session;

	public int crea(GradoPretende gradoPretende) {
		int id = 0;
		Transaction tx = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			id = (Integer) this.session.save(gradoPretende);
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			tx = null;
		}
		return id;
	}

	public GradoPretende buscaPorCriteriaQuery(String criteria) {
		GradoPretende obj = null;
		Transaction tx = null;
		Query query = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			query = session.createQuery(criteria);
			obj = (GradoPretende) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			query = null;
			tx = null;
		}
		return obj;
	}

	public void modifica(GradoPretende gradoPretende) {
		Transaction tx = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			session.update(gradoPretende);
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			tx = null;
		}
	}

	public void elimina(GradoPretende gradoPretende) {
		Transaction tx = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			session.delete(gradoPretende);
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			tx = null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<GradoPretende> listaPorSQLQuery(String queryString) {
		List<GradoPretende> lista = new ArrayList<GradoPretende>();
		Transaction tx = null;
		SQLQuery query = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			query = session.createSQLQuery(queryString);
			lista = query.list();
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			query = null;
			tx = null;
		}
		return lista;
	}

	@SuppressWarnings("unchecked")
	public List<GradoPretende> ListaPorCriteriaQuery(String criteria) {
		List<GradoPretende> lista = new ArrayList<GradoPretende>();
		Transaction tx = null;
		Query query = null;
		try {
			try {
				this.session = HibernateUtil.getInstance().getCurrentSession();
			} catch (HibernateException he) {
				session = HibernateUtil.getInstance().openSession();
			}
			tx = this.session.beginTransaction();
			query = session.createQuery(criteria);
			lista = query.list();
			tx.commit();
		} catch (Exception e) {
			if ( tx != null )
				tx.rollback();
			log.error(e.getMessage());
		} finally {
			query = null;
			tx = null;
		}
		return lista;
	}

}