package cc.gzvtc.admin.service;

import cc.gzvtc.common.service.IService;
import cc.gzvtc.model.TAdmin;

/**
 * 
 * @author me 2019年9月12日
 *
 */
public interface IAdminService extends IService<TAdmin> {
	
	TAdmin login(TAdmin admin);

}
