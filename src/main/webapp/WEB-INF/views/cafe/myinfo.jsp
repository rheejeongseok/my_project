<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/myinfo.css">
	<link rel="stylesheet" type="text/css" href="/resources/cafe/css/common.css">
	<script type="text/javascript" src="/resources/cafe/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/cafe/js/common.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="header"><%@ include file="header.jsp" %></div>
		<div class="content">
			<div class="content_wrap">
				<form action="/cafebbs/user/join" method="post" enctype="">
					<div class="infotitle">나의 회원 정보 <div class="line"></div></div>
					<table class="infoform">
						<colgroup>
							<col style="width:30%;">
							<col style="width:65%;">
						</colgroup>
						<tr>
							<td>이메일</td>
							<td>
								${cafeuser.email }
							</td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td>
								${cafeuser.usernickname }
							</td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td>${cafeuser.userphone }</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>
							     ${cafeuser.useraddr }
                            </td>
						</tr>
						<tr>
							<td>성별</td>
							<td>
								${cafeuser.sex }
							</td>
						</tr>
                        <tr>
                            <td colspan="2"><a href="/cafebbs/user/pwdmodify" class="pwdmodify">비밀번호 변경</a> <a href="/cafebbs/user/byebye" style="margin-left:5px" class="byebye">회원탈퇴</a></td>
                        </tr>
					</table>
				</form>
			</div>
		</div>
		<div class="footer"><%@ include file="footer.jsp" %></div>
	</div>
</body>
</html>