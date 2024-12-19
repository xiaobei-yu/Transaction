package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.pojo.User;

import java.util.List;

@Mapper
public interface UserMapper {
    //登录 根据用户名和密码登录
    User login(User user);

    //条件+分页查询
    List<User> selectByPage(String name);

    //根据id查询用户
    User selectById(Integer id);

    //修改的方法
    int updateById(User user);

}
