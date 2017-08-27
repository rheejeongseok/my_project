package com.my.project.daos.bbs2;

import java.util.List;

import com.my.project.models.bbs2.ModelUser;


public interface IDaoUser {
    
    int insertUser(ModelUser user);
    ModelUser login(String userid, String password);
    int updateUserInfo(ModelUser updateValue,ModelUser searchValue);
    int updatePasswd(String newPasswd,String currentPasswd,String userid);
    int deleteUser(ModelUser user);
    ModelUser selectUser(int userno);
    List<ModelUser> selectUserList(ModelUser user);
    int checkuserid(String userid);
    int loginajax(String userid, String password);
    String findid(String email, String phone);
    String findpwd(String userid, String email);
}
