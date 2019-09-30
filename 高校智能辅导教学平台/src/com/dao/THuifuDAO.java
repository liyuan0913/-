package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.THuifu;

/**
 * Data access object (DAO) for domain model class THuifu.
 * 
 * @see com.model.THuifu
 * @author MyEclipse Persistence Tools
 */

public class THuifuDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(THuifuDAO.class);

	// property constants
	public static final String TITLE = "title";

	public static final String CONTENT = "content";

	public static final String SHIJIAN = "shijian";

	public static final String USER_ID = "userId";

	public static final String ZHUTI_ID = "zhutiId";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(THuifu transientInstance)
	{
		log.debug("saving THuifu instance");
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

	public void delete(THuifu persistentInstance)
	{
		log.debug("deleting THuifu instance");
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

	public THuifu findById(java.lang.Integer id)
	{
		log.debug("getting THuifu instance with id: " + id);
		try
		{
			THuifu instance = (THuifu) getHibernateTemplate().get(
					"com.model.THuifu", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(THuifu instance)
	{
		log.debug("finding THuifu instance by example");
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
		log.debug("finding THuifu instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from THuifu as model where model."
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

	public List findByShijian(Object shijian)
	{
		return findByProperty(SHIJIAN, shijian);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByZhutiId(Object zhutiId)
	{
		return findByProperty(ZHUTI_ID, zhutiId);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all THuifu instances");
		try
		{
			String queryString = "from THuifu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public THuifu merge(THuifu detachedInstance)
	{
		log.debug("merging THuifu instance");
		try
		{
			THuifu result = (THuifu) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(THuifu instance)
	{
		log.debug("attaching dirty THuifu instance");
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

	public void attachClean(THuifu instance)
	{
		log.debug("attaching clean THuifu instance");
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

	public static THuifuDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (THuifuDAO) ctx.getBean("THuifuDAO");
	}
}