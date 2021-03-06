package com.my.project.daos.cafe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.my.project.models.cafe.ModelCafeUser;


@Repository("daocafeuser")
public class DaoUser implements IDaoUser {
    // SLF4J Logging
    private static Logger logger = LoggerFactory.getLogger(DaoUser.class);
    
    @Autowired
    @Qualifier("sqlSession")
    private SqlSession session;
    
    
    @Override
    public ModelCafeUser login(String email,String passwd) {
        // TODO Auto-generated method stub
        Map<String,String> map = new HashMap<String,String>();
        map.put("email", email);
        map.put("passwd", passwd);
        return session.selectOne("mapper.mysql.mapperCafe.login",map);
    }
    
    @Override
    public int insertUser(ModelCafeUser user) {
        // TODO Auto-generated method stub
        return session.insert("mapper.mysql.mapperCafe.insertUser",user);
    }
    
    @Override
    public ModelCafeUser selectUser(String email) {
        // TODO Auto-generated method stub
        return session.selectOne("mapper.mysql.mapperCafe.selectUser",email);
    }
    
    @Override
    public List<ModelCafeUser> selectUserList(ModelCafeUser user) {
        // TODO Auto-generated method stub
        return session.selectList("mapper.mysql.mapperCafe.selectUserList",user);
    }
    
    @Override
    public int updateUser(ModelCafeUser update, ModelCafeUser search) {
        // TODO Auto-generated method stub
        Map<String,ModelCafeUser> map = new HashMap<String,ModelCafeUser>();
        map.put("update", update);
        map.put("search", search);
        return session.update("mapper.mysql.mapperCafe.updateUser",map);
    }
    
    @Override
    public int deleteUser(String email) {
        // TODO Auto-generated method stub
        return session.delete("mapper.mysql.mapperCafe.deleteUser",email);
    }

    @Override
    public int checkemail(String email) {
        // TODO Auto-generated method stub
        return session.selectOne("mapper.mysql.mapperCafe.checkemail",email);
    }

    @Override
    public int checknickname(String usernickname) {
        // TODO Auto-generated method stub
        return session.selectOne("mapper.mysql.mapperCafe.checknickname",usernickname);
    }

    @Override
    public int loginajax(String email, String passwd) {
        Map<String, String> map = new HashMap<String,String>();
        map.put("email", email);
        map.put("passwd", passwd);
        return session.selectOne("mapper.mysql.mapperCafe.loginajax",map);
    }

    @Override
    public String findpwd(String email, String userphone) {
        Map<String, String>map = new HashMap<String,String>();
        map.put("email", email);
        map.put("userphone", userphone);
        
        return session.selectOne("mapper.mysql.mapperCafe.findpwd",map);
    }

    @Override
    public int pwdmodify(String passwd, int userno) {
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("passwd", passwd);
        map.put("userno", userno);
        return session.update("mapper.mysql.mapperCafe.pwdmodify",map);
    }

	@Override
	public String findemail(String usernickname, String userphone) {
		Map<String, Object> map = new HashMap<String,Object>();
        map.put("usernickname", usernickname);
        map.put("userphone", userphone);
        return session.selectOne("mapper.mysql.mapperCafe.findemail",map);
	}

	@Override
	public List<String> getUserLikeCafe(int userno) {
		// TODO Auto-generated method stub
		return session.selectList("mapper.mysql.mapperCafe.getUserLikeCafe",userno);
	}
}
