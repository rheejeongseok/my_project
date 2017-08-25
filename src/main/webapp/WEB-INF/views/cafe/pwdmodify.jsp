<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/pwdmodify.css">
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/common.css">
	<script type="text/javascript" src="/resources/cafe/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/cafe/js/common.js"></script>
        <script type="text/javascript" src="/resources/cafe/js/ajaxsetup.js"></script>
    <script type="text/javascript" src="/resources/cafe/js/MyAppBoard.js"></script>
    <script>
    $('#modifyBtn').click(function(){
        var userpwd = '${user.passwd}';
        var nowPwd = $('input[name="pwd"]').val();
        var newPwd = $('input[name="npwd"]').val();
        var newPwdC   = $('input[name="npwdC"]').val();
        
        if(userpwd == nowPwd && newPwd == newPwdC){
            $('form').submit();
            return pwdmodify(userpwd,nowPwd,newPwd,newPwdC);
        }else if(userpwd != nowPwd){
            alert('입력하신 현재 비밀번호가 다릅니다.')
            return false;
        }else if(newPwd != newPwdC){
            alert('설정한 비밀번호를 한번더 확인 부탁드립니다.')
            return false;
        }
        
        
    })
    </script>
</head>
<body>
	<div class="wrap">
		<div class="header"><%@ include file="header.jsp" %></div>
		<div class="content">
			<div class="content_wrap">
				<form action="" method="post" enctype="">
					<div class="modifytitle">비밀번호 수정 <div class="line"></div></div>
					<table class="modifyform">
						<colgroup>
							<col style="width:30%;">
							<col style="width:65%;">
						</colgroup>
						<tr>
							<td>현재 비밀번호<span style="display:none">${user.passwd }</span></td>
							<td><input type="password" name="pwd" placeholder="현재 비밀번호를 입력해 주세요"></td>
						</tr>
						<tr>
							<td>새로운 비밀번호</td>
							<td><input type="password" name="npwd" placeholder="새로운 비밀번호를 입력해 주세요"></td>
						</tr>
						<tr>
							<td>새로운 비밀번호 확인</td>
							<td><input type="password" name="npwdC" placeholder="새로운 비밀번호를 한번더 입력해 주세요"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" id="modifyBtn" value="비밀번호수정 완료"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>