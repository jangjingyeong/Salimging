<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="/resources/css/user-edit.css">
	</head>
	<body>
		<div id="container">
            <nav id="nav1">
                <div id="nav1-1"></div>
                <div id="nav1-2">
                    <ul id="nav1ul">
                        <li><a href="/member/mypage.jsp">마이페이지</a></li>
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
                        <li><a href="/help/saliming-notice.html">고객지원</a></li>
                    </ul>
                </nav>
            </header>
            <main id="main">
                <div id="main-left">
                    <table id="category">
                        <tr>
                            <th><a href="/member/mypage.jsp">마이페이지</a></th>
                        </tr>
                        <tr>
                            <td><a href="/member/mypage-edit.jsp">회원정보수정</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">장바구니</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">주문내역</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">내 후기</a></td>
                        </tr>
                        <tr>
                            <td><a href="/member/saliming-mypage-mywrite.html">내가 쓴 글/댓글</a></td>
                        </tr>
                        <tr>
                            <td><a href="/member/saliming-mypage-scrap.html">스크랩</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">내 문의</a></td>
                        </tr>
                    </table>
                </div>
                <div id="main-right">
                    <div id="prop">
                    <p class="titles">
                        ${sessionScope.memberName }(${sessionScope.memberId })님 환영합니다!님 <br> 안녕하세요!
                    </p>
                    </div>
                    <div id="mynotifi">
                        <hr>
                        <p class="titles"><b>알림</b><img src="/resources/img/알림.png" height="25px" alt=""></p> 
                        <p>▶ 내가 쓴 글에 댓글이 달렸습니다</p>
                        <p>▶ 내가 쓴 댓글에 댓글이 달렸습니다.</p>
                        <p>▶ 내가 쓴 글에 댓글이 달렸습니다</p>
                        <p>▶ 작성해주신 후기에 판매자가 답글을 남겼습니다</p>
                        <p>▶ 구매하신 상품이 배송 시작 되었습니다.</p>
                        <hr>
                    </div>
                    <div id="myscrap">
                        <p class="titles"><b>스크랩</b><img src="/resources/img/스크랩.png" height="25px" alt=""></p> 
                        <p>▶ 여름 옷 넣기 전 필수! 누런 얼룩 쏙 빼는 노하우</p>
                        <p>▶ 쓰레기 수납의 신세계! 파우치만 준비하세요</p>
                        <p>▶ 간단한 선풍기 청소법</p>
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