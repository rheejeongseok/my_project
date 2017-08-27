<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/findpwd.css">
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/common.css">
	<script type="text/javascript" src="/resources/cafe/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/cafe/js/common.js"></script>
    <script type="text/javascript" src="/resources/cafe/js/ajaxsetup.js"></script>
    <script type="text/javascript" src="/resources/cafe/js/MyAppBoard.js"></script>
    <script>
    $(function(){
    	
    	$('#submitBtn').click(function(){
    		
    		var usernickname = $('input[name=usernickname]').val();
    		var userphone = $('input[name=userphone]').val();
    		console.log(usernickname+userphone);
    		
    		return findemail(usernickname,userphone)
    		
    	})
    	
    })
    
    </script>
</head>
<body>
	<div class="wrap">
		<div class="header"><%@ include file="header.jsp" %></div>
		<div class="content">
			<div class="content_wrap">
				<form action="" method="post" enctype="">
					<div class="findtitle">
						<div class="find_category">
							<a href="" class="find_email">이메일 찾기</a>
						</div>
						<div class="line"></div>
					</div>
					<table class="findform">
						<colgroup>
							<col style="width:30%;">
							<col style="width:65%;">
						</colgroup>
						<tr>
							<td>닉네임 입력</td>
							<td><input type="text" name="usernickname" placeholder="닉네임을 입력해 주세요"></td>
						</tr>
						<tr>
							<td>전화번호 입력</td>
							<td><input type="text" name="userphone" placeholder="전화번호를 입력해 주세요"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" id="submitBtn" value="이메일 찾기"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>