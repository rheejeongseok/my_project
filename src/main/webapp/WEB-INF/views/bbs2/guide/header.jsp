<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header-wrap">
				<div class="logo"><a href="/bbs2/"><img src="/resources/bbs2/img/logo.png" alt=""></a></div>
				<div class="login">
                    <c:choose>
                        <c:when test="${empty user }">
        					<ul>
        						<li><a href="/bbs2/login">Login</a></li>
        						<li><a href="/bbs2/join">Join</a></li>
        					</ul>
                        </c:when>
                        <c:otherwise>
                            <ul>
                                <li><a href="/bbs2/logout">Logout</a></li>
                                <li><a href="/bbs2/cuser">My info</a></li>
                            </ul>
                        </c:otherwise>
                    </c:choose>
				</div>
				<div class="gnb_line"></div>
				<div class="gnb">
					<ul>
						<li>
							ABOUT
							<ul class="sub1">
								<li><a href="/bbs2/about">한옥숙박체험관</a></li>
							</ul>
						</li>
						<li>
                            ROOMS
                            <ul class="sub2">
                                <li><a href="/bbs2/room">한옥1호</a></li>
                            </ul>
                        </li>
						<li>
                            SERVICE
                            <ul class="sub3">
                                <li><a href="/bbs2/service">무인카페</a></li>
                            </ul>
                        </li>
						<li>
                            TOUR
                            <ul class="sub4">
                                <li><a href="/bbs2/tour">전주한옥마을여행</a></li>
                            </ul>
                        </li>
						<li>
                            RESERVATION
                            <ul class="sub5">
                                <li><a href="/bbs2/reservation-info">예약안내</a></li>
                                <li><a href="/bbs2/reservation">실시간예약</a></li>
                            </ul>
                        </li>
						<li>
                            INFO
                            <ul class="sub6">
                                <li><a href="/bbs2/info">찾아오시는길</a></li>
                            </ul>
                        </li>
						<li>
                            COMMUNITY
                            <ul class="sub7">
                                <li><a href="/bbs2/community/notice?curPage=1">공지사항</a></li>
                                <li><a href="/bbs2/community/free?curPage=1">여행후기</a></li>
                            </ul>
                        </li>
					</ul>
				</div>
				<div class="gnb_line"></div>
				<div class="site_info">
					<div class="site_tel">TEL : 010-3452-4827</div>
					<div class="site_tel">Kakaotalk ID : gamsa1990</div>
					<div class="site_bank">신협 010-3452-4827 <br>예금주 : 이정석</div>
					<a href="" class="rev_btn">RESERVATION</a>
				</div>
			</div>