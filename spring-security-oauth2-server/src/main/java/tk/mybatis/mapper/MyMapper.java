package tk.mybatis.mapper;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * ClassName MyMapper
 *
 * @author qml
 * Date 2020/9/6 0006 22:53
 * Version 1.0
 **/

public interface MyMapper<T> extends Mapper<T>, MySqlMapper {
}