package cc.gzvtc.spots.service;

import java.util.List;

import cc.gzvtc.common.service.IService;
import cc.gzvtc.model.TSpots;

/**
 * 
 * @author me 2019年9月12日
 *
 */
public interface ISpotsService extends IService<TSpots> {
	
	List<TSpots> getAllSpots();
}
