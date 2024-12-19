package org.example.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data  //自动提供getter、setter、toString方法
@AllArgsConstructor  //有参构造器
@NoArgsConstructor  //无参构造器
public class User {
    private Integer userId;
    private String userName;
    private String userPassword;
    private Integer userSex;  //1男 2女
    private Integer userAge;
    private String userTel;
    private String userLoc;
    private Integer userRole;  //1管理员  2普通用户
}
