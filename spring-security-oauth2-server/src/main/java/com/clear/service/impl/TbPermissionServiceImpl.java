package com.clear.service.impl;

import com.clear.domain.TbPermission;
import com.clear.mapper.TbPermissionMapper;
import com.clear.service.TbPermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName TbPermissionServiceImpl
 *
 * @author qml
 * Date 2020/9/7 0007 22:46
 * Version 1.0
 **/

@Service
public class TbPermissionServiceImpl implements TbPermissionService {

    @Resource
    private TbPermissionMapper tbPermissionMapper;

    @Override
    public List<TbPermission> selectByUserId(Long userId) {
        return tbPermissionMapper.selectByUserId(userId);
    }
}