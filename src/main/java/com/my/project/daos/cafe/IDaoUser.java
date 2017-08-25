package com.my.project.daos.cafe;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.my.project.models.cafe.ModelCafeUser;


public interface IDaoUser {
    
    ModelCafeUser login(String email,String passwd);
    int loginajax(String email, String passwd);
    int insertUser(ModelCafeUser user);
    String findpwd(String email, String userphone);
    int pwdmodify(String passwd, int userno);
    ModelCafeUser selectUser(String email);
    List<ModelCafeUser> selectUserList(ModelCafeUser user);
    int updateUser(ModelCafeUser update, ModelCafeUser search);
    int deleteUser(String email);
    int checkemail(String email);
    int checknickname(String usernickname);
}
