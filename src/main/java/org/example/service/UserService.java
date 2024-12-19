package org.example.service;

import org.example.pojo.User;

import java.util.List;

public interface UserService {
    User login(User user);
    List<User> selectByPage(String name);
    User selectById(Integer id);
    int updateById(User user);
}
