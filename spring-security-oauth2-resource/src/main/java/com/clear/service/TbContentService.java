package com.clear.service;

import com.clear.domain.TbContent;

import java.util.List;

/**
 * ClassName TbContentService
 *
 * @author qml
 * Date 2020/9/12 0012 21:10
 * Version 1.0
 **/

public interface TbContentService {

    /**
     * 根据 ID 获取
     *
     * @param id ID
     * @return {@link TbContent}
     */
    default TbContent getById(Long id) {
        return null;
    }

    /**
     * 获取全部数据
     *
     * @return {@link List<TbContent>}
     */
    default List<TbContent> selectAll() {
        return null;
    }

    /**
     * 新增
     *
     * @param tbContent {@link TbContent}
     * @return int 数据库受影响行数
     */
    default int insert(TbContent tbContent) {
        return 0;
    }

    /**
     * 编辑
     *
     * @param tbContent {@link TbContent}
     * @return int 数据库受影响行数
     */
    default int update(TbContent tbContent) {
        return 0;
    }

    /**
     * 删除
     *
     * @param id ID
     * @return int 数据库受影响行数
     */
    default int delete(Long id) {
        return 0;
    }

}