package com.clear.service.impl;

import com.clear.domain.TbUser;
import com.clear.mapper.TbUserMapper;
import com.clear.service.TbUserService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;

/**
 * ClassName TbUserServiceImpl
 *
 * @author qml
 * Date 2020/9/7 0007 22:47
 * Version 1.0
 **/

@Service
public class TbUserServiceImpl implements TbUserService {

    @Resource
    private TbUserMapper tbUserMapper;

    @Override
    public TbUser getByUsername(String username) {
        Example example = new Example(TbUser.class);
        example.createCriteria().andEqualTo("username", username);
        return tbUserMapper.selectOneByExample(example);
    }
}