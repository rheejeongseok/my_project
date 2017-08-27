<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="header_t">
	<div class="join">
        <c:choose>
        <c:when test="${empty user }">
        <ul>
			<li><a href="/cafebbs/user/join">회원가입</a></li>
			<li><a href="/cafebbs/user/login">로그인</a></li>
		</ul>
        </c:when>
        <c:otherwise>
        <ul>
            <li><a href="/cafebbs/user/myinfo">내 정보</a></li>
            <li><a href="/cafebbs/user/logout">로그아웃</a></li>
        </ul>
        </c:otherwise>
        </c:choose>
	</div>
	<div class="logo">
        <a href="/cafebbs/">
		  <img src="/resources/cafe/img/logo.png">
        </a>
	</div>
</div>
<div class="header_b"></div>