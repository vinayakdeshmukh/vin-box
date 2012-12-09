package net.vin.box.dao;

import java.util.List;

import net.vin.box.domain.User;

import org.hibernate.Query;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.stereotype.Repository;

@Repository("userDaoImpl")
@DynamicUpdate
public class UserDaoImpl extends BaseDaoImpl {

	@SuppressWarnings("unchecked")
	public List<User> listUser(int gid) {
		Query query = getCurrentSession().createQuery("from User");
		return query.list();
	}
}
