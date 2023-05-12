package cc.gzvtc.user.service;

import cc.gzvtc.common.service.IService;
import cc.gzvtc.model.TUser;

/**
 * 
 * @author me 2019年9月12日
 *
 */
public interface IUserService extends IService<TUser> {
	
	TUser login(TUser user);

	int register(TUser user);
	
	boolean checkUserByName(String name);
	
	int updatePassword(TUser user);
}
