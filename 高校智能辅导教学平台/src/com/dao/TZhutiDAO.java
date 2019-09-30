package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TZhuti;

/**
 * Data access object (DAO) for domain model class TZhuti.
 * 
 * @see com.model.TZhuti
 * @author MyEclipse Persistence Tools
 */

public class TZhutiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TZhutiDAO.class);

	// property constants
	public static final String TITLE = "title";

	public static final String CONTENT = "content";

	public static final String FUJIAN = "fujian";

	public static final String FUJIAN_YUANSHIMING = "fujianYuanshiming";

	public static final String SHIJIAN = "shijian";

	public static final String USER_ID = "userId";

	public static final String CATELOG_ID = "catelogId";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TZhuti transientInstance)
	{
		log.debug("saving TZhuti instance");
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

	public void delete(TZhuti persistentInstance)
	{
		log.debug("deleting TZhuti instance");
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

	public TZhuti findById(java.lang.Integer id)
	{
		log.debug("getting TZhuti instance with id: " + id);
		try
		{
			TZhuti instance = (TZhuti) getHibernateTemplate().get(
					"com.model.TZhuti", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TZhuti instance)
	{
		log.debug("finding TZhuti instance by example");
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
		log.debug("finding TZhuti instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TZhuti as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTitle(Object title)
	{
		return findByProperty(TITLE, title);
	}

	public List findByContent(Object content)
	{
		return findByProperty(CONTENT, content);
	}

	public List findByFujian(Object fujian)
	{
		return findByProperty(FUJIAN, fujian);
	}

	public List findByFujianYuanshiming(Object fujianYuanshiming)
	{
		return findByProperty(FUJIAN_YUANSHIMING, fujianYuanshiming);
	}

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByCatelogId(Object catelogId)
	{
		return findByProperty(CATELOG_ID, catelogId);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TZhuti instances");
		try
		{
			String queryString = "from TZhuti";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TZhuti merge(TZhuti detachedInstance)
	{
		log.debug("merging TZhuti instance");
		try
		{
			TZhuti result = (TZhuti) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TZhuti instance)
	{
		log.debug("attaching dirty TZhuti instance");
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

	public void attachClean(TZhuti instance)
	{
		log.debug("attaching clean TZhuti instance");
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

	public static TZhutiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TZhutiDAO) ctx.getBean("TZhutiDAO");
	}
}