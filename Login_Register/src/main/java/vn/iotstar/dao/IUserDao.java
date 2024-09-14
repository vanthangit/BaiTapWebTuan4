package vn.iotstar.dao;

import java.util.List;

import vn.iotstar.models.UserModel;

public interface IUserDao {
	UserModel findByUserName(String username);

	List<UserModel> findAll();

	UserModel findOne(int id);

	void insert(UserModel user);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);
}
