package com.clear.service;

import com.clear.domain.TbUser;

/**
 * ClassName TbUserService
 *
 * @author qml
 * Date 2020/9/7 0007 22:07
 * Version 1.0
 **/

public interface TbUserService {
    default TbUser getByUsername(String username) {
        return null;
    }
}