package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TShiti;

/**
 * Data access object (DAO) for domain model class TShiti.
 * 
 * @see com.model.TShiti
 * @author MyEclipse Persistence Tools
 */

public class TShitiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TShitiDAO.class);

	// property constants
	public static final String SHITI_NAME = "shitiName";

	public static final String SHITI_JIESHAO = "shitiJieshao";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TShiti transientInstance)
	{
		log.debug("saving TShiti instance");
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
	public void update(TShiti transientInstance)
	{
		log.debug("update TShiti instance");
		try
		{
			getHibernateTemplate().update(transientInstance);
			log.debug("update successful");
		} catch (RuntimeException re)
		{
			log.error("update failed", re);
			throw re;
		}
	}

	public void delete(TShiti persistentInstance)
	{
		log.debug("deleting TShiti instance");
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

	public TShiti findById(java.lang.Integer id)
	{
		log.debug("getting TShiti instance with id: " + id);
		try
		{
			TShiti instance = (TShiti) getHibernateTemplate().get(
					"com.model.TShiti", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TShiti instance)
	{
		log.debug("finding TShiti instance by example");
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
		log.debug("finding TShiti instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TShiti as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByShitiName(Object shitiName)
	{
		return findByProperty(SHITI_NAME, shitiName);
	}

	public List findByShitiJieshao(Object shitiJieshao)
	{
		return findByProperty(SHITI_JIESHAO, shitiJieshao);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TShiti instances");
		try
		{
			String queryString = "from TShiti";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TShiti merge(TShiti detachedInstance)
	{
		log.debug("merging TShiti instance");
		try
		{
			TShiti result = (TShiti) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TShiti instance)
	{
		log.debug("attaching dirty TShiti instance");
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

	public void attachClean(TShiti instance)
	{
		log.debug("attaching clean TShiti instance");
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

	public static TShitiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TShitiDAO) ctx.getBean("TShitiDAO");
	}
}