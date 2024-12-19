package org.example;

import cn.hutool.crypto.SecureUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.example.mapper.UserMapper;
import org.example.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class UserTest {
    @Resource
    private UserMapper userMapper;

    @Test
    public void selectById(){
        User user = userMapper.selectById(1);
        System.out.println(user);
    }

    @Test
    public void selectByPage(){
        String name = "";
        if (name==null && name==""){
            name = "%%";
        }else {
            name = "%"+name+"%";
        }
        PageHelper.startPage(1,5);
        List<User> userList = userMapper.selectByPage(name);
        PageInfo<User> pageInfo = new PageInfo<>(userList);

        for (User user:userList){
            System.out.println(user);
        }
        System.out.println("当前页："+pageInfo.getPageNum());
        System.out.println("每页显示多条数据："+pageInfo.getPageSize());
        System.out.println("总页数："+pageInfo.getPages());
        System.out.println("总记录数："+pageInfo.getTotal());
    }

    @Test
    public void login(){
        User user = new User();
        user.setUserName("admin");
        user.setUserPassword(SecureUtil.md5("admin"));
        User login = userMapper.login(user);
        System.out.println(login);
    }
}
