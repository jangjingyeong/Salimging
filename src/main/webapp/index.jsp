<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>살림ing</title>
        <link rel="stylesheet" href="/resources/css/main.css">
	</head>
	<body>
		<div id="container">
            <nav id="nav1">
                <div id="nav1-1"></div>
                <div id="nav1-2">
                    <ul id="nav1ul">
                    <c:if test="${sessionScope.memberId !=null }">
                    	<li><a href="/member/mypage.do">마이페이지</a></li>
                        <li><a href="/member/logout.do">로그아웃</a></li>
                    </c:if>
                    
                    <c:if test="${memberId eq null }">
                        <li><a href="/member/login.do">로그인</a></li>
                        <li><a href="/member/register.do">회원가입</a></li>
                    </c:if>
                    </ul>
                </div>
            </nav>
            <header id="header">
                <div id="logo">
                    <a href="/index.jsp"><h1><i>살림ing</i></h1></a>
                </div>
                <nav id="nav2">
                    <ul id="nav2ul">
                        <li><a href="/community/saliming-community.html">커뮤니티</a></li>
                        <li><a href="/shopping/saliming-shopping.html">쇼핑</a></li>
                        <li><a href="/event/saliming-eventing.html">이벤트</a></li> 
                        <li><a href="/notice/list.do">고객지원</a></li>
                    </ul>
                </nav>
            </header>
            <main id="main">
                <div id="main-layer1"><img src="/resources/img/배너사진.png" height="450px" alt=""></div>
                <div id="main-layer2"><h3> <img src="/resources/img/인기글.png" height="25px" alt="">  이번주 인기글</h3></div>
                <div id="main-layer3">
                    <div id="main3-1">
                        <div id="main-3-1-img">
                            <img src="/resources/img/화장실청소.jpg" height="200px" alt=""></div>
                        <div id="main-3-1-txt" class="in-main-layer3"> 
                            <p>
                                <b>화장실 청소법</b>
                            </p> 
                            <p>화장실 청소에 관련된 내용</p>
                        </div>
                    </div>
                    <div id="main3-2" >
                        <div id="main-3-2-img">
                        <img src="/resources/img/서랍장.jpg" height="200px" alt=""></div>
                        <div id="main-3-2-txt" class="in-main-layer3"> 
                        <p>
                            <b>깔끔한 수납템 추천</b>
                        </p> 
                        <p>수납 아이템 추천</p></div>
                    </div>
                    <div id="main3-3" >
                        <div id="main-3-3-img">
                            <img src="/resources/img/분리수거.jpg" height="200px" alt=""></div>
                        <div id="main-3-3-txt" class="in-main-layer3"> 
                            <p>
                                <b>분리수거 방법</b>
                            </p> 
                            <p>편하게 분리수거 하는 법</p>
                        </div>
                    </div>
                    <div id="main3-4" >
                        <div id="main-3-4-img">
                            <img src="/resources/img/스팸계란볶음밥.jpg" height="200px" alt=""></div>
                        <div id="main-3-4-txt"class="in-main-layer3"> 
                            <p>
                                <b>간단 레시피</b>
                            </p> 
                            <p>스팸계란볶음밥 레시피</p>
                        </div>
                    </div>
                </div>
            </main>
            <footer id="footer">
                <ul>
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                    <!-- <li><a href="#">맞다</a></li> -->
                </ul>
            </footer>
        </div>
    </body>
</html>