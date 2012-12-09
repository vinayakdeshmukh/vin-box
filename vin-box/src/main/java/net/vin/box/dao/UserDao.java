package net.vin.box.dao;

import java.util.List;

import net.vin.box.domain.User;

public interface UserDao {

	public List<User> listUser(int gid);
}
