<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>join</title>
	<link rel="stylesheet" type="text/css" href="/resources/bbs2/css/common.css">
	<link rel="stylesheet" type="text/css" href="/resources/bbs2/css/join.css">
	<script type="text/javascript" src="/resources/bbs2/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/bbs2/js/common.js"></script>
    <script type="text/javascript" src="/resources/bbs2/js/join.js"></script>
    <script type="text/javascript" src="/resources/bbs2/js/ajaxsetup.js"></script>
    <script type="text/javascript" src="/resources/bbs2/js/MyAppBoard.js"></script>
   <script>
        $(document).ready( function(e){
            
            $('#confirm').click( function(e){
                var email = $('input[name=email]').val();
                var phone = $('input[name=phone]').val();
                
                return findid(email,phone);
            });
        });
    </script> 
</head>
<body>
	<div class="wrap">
		<div class="header"><%@ include file="guide/header.jsp" %></div>
		<div class="content">
			<div class="section1">
				<img src="/resources/bbs2/img/mainTypo01.png" alt="" class="main_tp">
				<ul>
					<li><a href="javascript:void(0)"><img src="/resources/bbs2/img/about01_bg.jpg" alt=""></a></li>
				</ul>
				<div class="slider_line1"></div>
			</div>
			<div class="section2">
                <div class="login-form">
                     <span>아이디 찾기</span>
                         <table>
                         <colgroup>
                             <col style="width:200px">
                             <col style="width:400px">
                         </colgroup>
                             <tr>
                                 <td>이메일</td>
                                 <td><input type="text" name="email" placeholder="이메일을 입력해주세요" style="width:80%"/></td>
                             </tr>
                             <tr>
                                 <td>전화번호</td>
                                 <td><input type="text" name="phone" placeholder="전화번호를 입력해주세요" style="width:80%"/></td>
                             </tr>
                             <tr><td colspan="2" style="text-align:center;"><input type="button" value="확인" id="confirm"/></td></tr>
                         </table>
                    </div>
             </div>
		</div>
		<div class="footer"><%@ include file="guide/footer.jsp" %></div>
	</div>
	<div class="login_alert">
        <div class="alert_title"></div>
        <div class="alert_text"></div>
    </div>
</body>
</html>