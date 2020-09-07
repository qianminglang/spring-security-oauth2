package com.clear.mapper;

import com.clear.domain.TbPermission;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.MyMapper;

import java.util.List;

/**
 * ClassName TbPermissionMapper
 *
 * @author qml
 * Date 2020/9/7 0007 22:03
 * Version 1.0
 **/

public interface TbPermissionMapper extends MyMapper<TbPermission> {
    List<TbPermission> selectByUserId(@Param("userId") Long userId);
}