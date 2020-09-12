package com.clear.service.impl;

import com.clear.mapper.TbContentCategoryMapper;
import com.clear.service.TbContentCategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * ClassName TbContentCategoryServiceImpl
 *
 * @author qml
 * Date 2020/9/12 0012 21:10
 * Version 1.0
 **/

@Service
public class TbContentCategoryServiceImpl implements TbContentCategoryService {

    @Resource
    private TbContentCategoryMapper tbContentCategoryMapper;

}