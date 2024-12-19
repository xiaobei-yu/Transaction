package org.example.controller;

import cn.hutool.crypto.SecureUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.example.pojo.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

//单体项目中：通常返回的是一个页面
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    //修改的方法
    @PostMapping("/updateById")
    public String updateById(User user){
        userService.updateById(user);
        return "redirect:selectByPage";  //修改-添加-删除 重定向
    }

    //根据id查询用户
    @GetMapping("/selectById")
    public String selectById(Integer userId,Model model){
        User user = userService.selectById(userId);
        model.addAttribute("upUser",user);
        return "userUpdate.jsp";
    }

    //条件分页查询
    @GetMapping("/selectByPage")
    public String selectByPage(String uname,Integer nowPage,Model model){
        if (uname==null && uname==""){
            uname = "%%";
        }else {
            uname = "%"+uname+"%";
        }

        if (nowPage==null){
            nowPage = 1;
        }

        PageHelper.startPage(nowPage,5);

        List<User> userList = userService.selectByPage(uname);
        PageInfo<User> pageInfo = new PageInfo<>(userList);
        model.addAttribute("userList",userList);
        model.addAttribute("nowPage",pageInfo.getPageNum());
        model.addAttribute("pageSize",pageInfo.getPageSize());
        model.addAttribute("pages",pageInfo.getPages());
        model.addAttribute("total",pageInfo.getTotal());
        return "userAdmin.jsp";
    }



    @PostMapping("/login")
    public String login(User user, Model model, HttpSession session){
        //对登录的密码进行加密处理---以后放在service层处理
        user.setUserPassword(SecureUtil.md5(user.getUserPassword()));
        User login_user = userService.login(user);
        if (login_user==null){
            model.addAttribute("error","用户名或密码错误！！");
            return "login.jsp";
        }else {
            session.setAttribute("user",login_user);
            return "admin_index.jsp";
        }
    }
}
