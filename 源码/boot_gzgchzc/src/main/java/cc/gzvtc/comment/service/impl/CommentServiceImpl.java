package cc.gzvtc.comment.service.impl;


import org.springframework.stereotype.Service;

import cc.gzvtc.comment.service.ICommentService;
import cc.gzvtc.common.service.BaseService;
import cc.gzvtc.model.TComment;

/**
 * 
 * @author me 2019年3月1日
 *
 */
@Service(value = "commentService")
public class CommentServiceImpl extends BaseService<TComment> implements ICommentService {


}
