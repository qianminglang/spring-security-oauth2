package com.clear.service.impl;

import com.clear.mapper.TbRoleMapper;
import com.clear.service.TbRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * ClassName TbRoleServiceImpl
 *
 * @author qml
 * Date 2020/9/7 0007 22:47
 * Version 1.0
 **/

@Service
public class TbRoleServiceImpl implements TbRoleService {

    @Resource
    private TbRoleMapper tbRoleMapper;

}