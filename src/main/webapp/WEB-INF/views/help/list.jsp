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
        <link rel="stylesheet" href="/resources/css/header&footer.css">
        <link rel="stylesheet" href="/resources/css/mypage.css">
        <link rel="stylesheet" href="/resources/css/community.css">
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
                <div id="main-left">
                    <table id="category">
                        <tr>
                            <th><a href="/notice/list.do">고객지원</a></th>
                        </tr>
                        <tr>
                            <td><a href="/notice/list.do">공지사항</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">FAQ</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">Q&A</a></td>
                        </tr>
                    </table>
                </div>
                <section id="section">

                    <div>
                        <div id="sharetitle">공지사항</div>
                    </div>
                    <div class="actionArea">
            			<c:if test="${memberId eq 'admin' }">
							<span class="writeArea">
								<form action="/notice/insert.do" method="get">
                           			<button class="writeBtn" onclick="">글쓰기</button> 
                            	</form>
                        	</span>
                        </c:if>
                        <span class="searchArea">
                            <input class="searchInput" type="text" placeholder="검색">
                            <a class="searchIconATag" href="#"><img class="searchIcon" src="/resources/img/검색.png""></a>
                        </span>
                    </div>
            
                    <table class="boardtable">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th style="width: 300px;">제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="notice" items="${requestScope.nList }">
	                            <tr>
	                                <td>${notice.noticeNo }</td>
	                                <td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</td>
	                                <td>${notice.noticeDate }</td>
	                                <td>${notice.viewCount }</td>
	                            </tr>
                           </c:forEach>
                        </tbody>
                    </table>
            
                    <div class="page">
                        <ul class="pagination">
                            <li><a href="#" class="first"><img class="arrowKey" src="/resources/img/왼쪽페이지.png"></a></li>
                            <li><a href="#" class="num">1</a></li>
                            <li><a href="#" class="num">2</a></li>
                            <li><a href="#" class="num">3</a></li>
                            <li><a href="#" class="num">4</a></li>
                            <li><a href="#" class="num">5</a></li>
                            <li><a href="#" class="last"><img class="arrowKey" src="/resources/img/오른쪽페이지.png"></a></li>
                        </ul>
                    </div>
                </section>
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