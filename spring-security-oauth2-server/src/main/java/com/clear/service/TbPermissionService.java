package com.clear.service;

import com.clear.domain.TbPermission;

import java.util.List;

/**
 * ClassName TbPermissionService
 *
 * @author qml
 * Date 2020/9/7 0007 22:05
 * Version 1.0
 **/

public interface TbPermissionService {
    default List<TbPermission> selectByUserId(Long userId) {
        return null;
    }
}