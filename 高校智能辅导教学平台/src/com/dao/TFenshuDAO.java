package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TFenshu;

/**
 * Data access object (DAO) for domain model class TFenshu.
 * 
 * @see com.model.TFenshu
 * @author MyEclipse Persistence Tools
 */

public class TFenshuDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TFenshuDAO.class);

	// property constants
	public static final String SHITI_ID = "shitiId";

	public static final String FENSHU = "fenshu";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TFenshu transientInstance)
	{
		log.debug("saving TFenshu instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TFenshu persistentInstance)
	{
		log.debug("deleting TFenshu instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TFenshu findById(java.lang.Integer id)
	{
		log.debug("getting TFenshu instance with id: " + id);
		try
		{
			TFenshu instance = (TFenshu) getHibernateTemplate().get(
					"com.model.TFenshu", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TFenshu instance)
	{
		log.debug("finding TFenshu instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TFenshu instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TFenshu as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByShitiId(Object shitiId)
	{
		return findByProperty(SHITI_ID, shitiId);
	}

	public List findByFenshu(Object fenshu)
	{
		return findByProperty(FENSHU, fenshu);
	}

	public List findAll()
	{
		log.debug("finding all TFenshu instances");
		try
		{
			String queryString = "from TFenshu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TFenshu merge(TFenshu detachedInstance)
	{
		log.debug("merging TFenshu instance");
		try
		{
			TFenshu result = (TFenshu) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TFenshu instance)
	{
		log.debug("attaching dirty TFenshu instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TFenshu instance)
	{
		log.debug("attaching clean TFenshu instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TFenshuDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TFenshuDAO) ctx.getBean("TFenshuDAO");
	}
}