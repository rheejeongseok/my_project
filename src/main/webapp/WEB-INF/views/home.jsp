<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WEB DEVELOPER PORTPOLIO</title>
    <link rel="stylesheet" href="/resources/index/css/index.css" type="text/css" />
    <script type="text/javascript" src="/resources/index/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/resources/index/js/index.js"></script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAe6WWuBh01wxj7dGIpGaiCyfTuCj94uwg&callback=initMap">
    </script>

</head>
<body>
    <div class="wrap">
    	<div class="header">
	    	<div class="logo">
	    		<div class="logo_img"><img src="/resources/index/img/logo.png" alt=""></div>
	    		<div class="title"></div>
	    	</div>
	    	<div class="page_nav">
            	  <button class="list_btn">
				    <span class="top"></span>
				    <span class="middle"></span>
				    <span class="bottom"></span>
				  </button>
                <div class="nav_list">
                    <a href="javascript:void(0)" class="on"><span>Main</span></a>
                    <a href="javascript:void(0)"><span>Environment</span></a>
                    <a href="javascript:void(0)"><span>Portfolio</span></a>
                    <a href="javascript:void(0)"><span>End</span></a>
                </div>
            </div>
         </div>
        <section>
            
			<div class="contents">
                <div class="content1 on">
					<div class="main">
						<div class="title">
							웹 개발자 포트폴리오<br>
							<div class="title_sub">이정석</div>
						</div>
						<img class="img1" src="/resources/index/img/img1.jpg">
						<img class="img2" src="/resources/index/img/img2.png">
						<img src="/resources/index/img/img3.jpg" alt="" class="img3">
					</div>
					<div class="mouse">
						<img src="/resources/index/img/mousewheel.png">
					</div>
                </div>
                <div class="content2">
                	<div class="content_title">Environment</div>
					<div class="main">
						<div class="main_left">
							<img src="/resources/index/img/computer.jpg">
						</div>
						<div class="main_right">
							<div class="description">
								<div class="desc1">
									<div class="desc_title">작업환경</div>
									<ul>
										<li>java 1.*</li>
										<li>Spring 4.x</li>
										<li>Tomcat 8.0</li>
										<li>MySQL 5.x</li>
										<li>MyBatis</li>
										<li>Gradle 3.x</li>
									</ul>
								</div>
								<div class="desc2">
									<div class="desc_title">적용언어</div>
									<ul>
										<li>java</li>
										<li>HTML5</li>
										<li>CSS</li>
										<li>JavaScrpit</li>
										<li>jQuery</li>
										<li>JSTL</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
                </div>
                <div class="content3">
                	<div class="content_title">Portfolio</div>
					<div class="main_left_go">
						<div class="imgbox">
						<img src="/resources/index/img/bbs1.png" alt="" class="bbs1">
						<img src="/resources/index/img/bbs2.png" alt="" class="bbs2">
						<img src="/resources/index/img/bbs3.png" alt="" class="bbs3">
						</div>
						<div class="explain">
							<div class="ex_title">기능 설명</div>
							<div class="ex_text">
								<ul>
									<li>
										<div class="text_title">로그인</div>
										<div class="text_desc">- 로그인 기능 및 로그아웃 기능을 구현</div>
									</li>
									<li>
										<div class="text_title">회원가입</div>
										<div class="text_desc">- 회원가입 및 정보수정 탈퇴 기능 구현</div>
									</li>
									<li>
										<div class="text_title">게시판</div>
										<div class="text_desc">- 게시글 등록 및 수정 삭제 기능을 구현</div>
									</li>
									<li>
										<div class="text_title">파일등록</div>
										<div class="text_desc">- 게시글 작성시 이미지파일을 등록 <br><span style="color:transparent;">- </span>및 삭제 구현</div>
									</li>
									<li>
										<div class="text_title">댓글등록</div>
										<div class="text_desc">- 게시글의 댓글 작성 및 수정 삭제 구현</div>
									</li>
									<li>
										<div class="text_title">권한</div>
										<div class="text_desc">- 본인의 게시글,댓글만 수정 삭제 가능</div>
									</li>
								</ul>
							</div>
							<a href="/bbs2/" class="site_link">사이트 바로가기</a>
						</div>
						<div class="close"><img src="/resources/index/img/cancel.png"></div>
					</div>
					<div class="main_right_go">
						<div class="imgbox">
							<img src="/resources/index/img/cafe1.png" alt="" class="cafe1">
							<img src="/resources/index/img/cafe2.png" alt="" class="cafe2">
							<img src="/resources/index/img/cafe3.png" alt="" class="cafe3">
						</div>
						<div class="explain">
							<div class="ex_title">기능 설명</div>
							<div class="ex_text">
								<ul>
									<li>
										<div class="text_title">로그인</div>
										<div class="text_desc">- 로그인 및 로그아웃 기능 구현</div>
									</li>
									<li>
										<div class="text_title">회원가입</div>
										<div class="text_desc">- 회원가입 및 정보수정, 비밀번호 찾기 
										<br><span style="color:transparent;">- </span>회원탈퇴 구현</div>
									</li>
									<li>
										<div class="text_title">댓글</div>
										<div class="text_desc">- 각 카페에 댓글 수정 삭제 기능 구현</div>
									</li>
									<li>
										<div class="text_title">화면구현</div>
										<div class="text_desc">- 일정 조건에 맞게 데이터를 나눠 구현</div>
									</li>
									<li>
										<div class="text_title">권한</div>
										<div class="text_desc">- 본인의 댓글 이외에 수정, 삭제 불가</div>
									</li>
								</ul>
							</div>
							<a href="/cafe/" class="site_link">사이트 바로가기</a>
						</div>
						<div class="close"><img src="/resources/index/img/cancel.png"></div>
					</div>
                </div>
                <div class="content4">
					<div class="content_title">End</div>
					<div class="main">
						<div class="main_left">
							<img src="/resources/index/img/profile.jpg">
							<div class="name">Rhee JeongSeok, 28</div>
							<div class="sns">
								@rheejs
							</div>
						</div>
						<div class="main_right">
							<script>
						      function initMap() {
						        var uluru = {lat: 37.656278, lng: 127.063280};
						        var map = new google.maps.Map(document.getElementById('my_map'), {
						          zoom: 18,
						          center: uluru,
						          disableDefaultUI: true
						        });
						        var marker = new google.maps.Marker({
						          position: uluru,
						          map: map
						        });
						      }
						    </script>
							<div id="my_map"></div>
							<div class="my">
								<span>tel : 010.3452.4827</span><br><br>
								<span>email : gamsa1990@hanmail.net</span><br><br>
								<span>열심히 하는 웹 개발자가 되겠습니다.</span>
							</div>
						</div>
					</div>
                </div>
         </section>
	</div>
</body>
</html>
