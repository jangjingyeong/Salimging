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
                        <li><a href="/member/mypage.do">마이페이지</a></li>
                        <li><a href="/member/logout.do">로그아웃</a></li>
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
                        <li><a href="/notice/list.do"">고객지원</a></li>
                    </ul>
                </nav>
            </header>
            <main id="main">
                <div id="main-left">
                    <table id="category">
                        <tr>
                            <th><a href="/notice/list.do"">고객지원</a></th>
                        </tr>
                        <tr>
                            <td><a href="/notice/list.do"">공지사항</a></td>
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
                        <div id="sharetitle">공지사항 상세</div>
                    </div>
                    <div>
	                    <table class="boardtable">
	                    	<tr>
								<td>
									<label>글번호</label>
									<span>${requestScope.noticeOne.noticeNo }</span>
								</td>
								<td>
									<label>작성일</label>
									<span>${requestScope.noticeOne.noticeDate }</span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<label><b>제목 : ${noticeOne.noticeSubject }</b></label>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<label><b>내용 : </b></label>
									<p>${noticeOne.noticeContent }</p>
								</td>							
							</tr>
	                    </table>
	                </div>
                </section>
            </main>
            <footer id="footer">
                <ul>
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                </ul>
            </footer>
        </div>
	</body>
</html>