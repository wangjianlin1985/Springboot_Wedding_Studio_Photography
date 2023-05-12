package cc.gzvtc.banner.service.impl;


import org.springframework.stereotype.Service;

import cc.gzvtc.banner.service.IBannerService;
import cc.gzvtc.common.service.BaseService;
import cc.gzvtc.model.TBanner;

/**
 * 
 * @author me 2019年9月12日
 *
 */
@Service(value = "bannerService")
public class BannerServiceImpl extends BaseService<TBanner> implements IBannerService {

}
