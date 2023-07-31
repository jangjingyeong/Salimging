<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>살림ing</title>
        <link rel="stylesheet" href="../resources/css/header&footer.css">
        <link rel="stylesheet" href="../resources/css/login.css">
	</head>
	<body>
		<div id="container">
            <nav id="nav1">
                <div id="nav1-1"></div>
                <div id="nav1-2">
                    <ul id="nav1ul">
                        <li><a href="/member/login.jsp">로그인</a></li>
                        <li><a href="/member/enroll.jsp">회원가입</a></li>
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
                        <li><a href="/help/saliming-notice.html">고객지원</a></li>
                    </ul>
                </nav>
            </header>
            <main id="main">
                <form id="login-page" action="/member/login.do" method="post">
                    <div id="login-title"><h2>로그인</h2></div>
                    <div id="id" class="idpw"><input type="text" name="id" placeholder="아이디를 입력하세요."></div>
                    <div id="pw" class="idpw"><input type="password" name="pw" placeholder="비밀번호를 입력하세요."></div>
                    <div id="save_find">
                        <label for="idsave">
                        <input type="checkbox" name="idsave" id="idsave"> 
                        아이디저장</label>
                        <a href="#">아이디/비밀번호 찾기</a>
                    </div>
                    <button id="login">로그인</button>
                </form>
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