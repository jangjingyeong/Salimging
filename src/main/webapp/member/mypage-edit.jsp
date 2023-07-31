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
                        <li><a href="/member/myInfo.do?member-id=${memberId }">마이페이지</a></li>
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
                <section id="section">

                    <div id="edit-title">
                        <div id="sharetitle">회원정보수정</div>
                        <p id="pTag1"><span class="compulsory"> *</span> 필수입력사항</p>
                    </div>
                    <div id="user-edit">
                        <div id="personal">
                            <div id="edit-id" class="edit">
                                <span class="compulsory"> * </span><strong>아이디</strong><br>
                                <p>saliming123</p> 
                            </div>
                            <div id="edit-pw" class="edit">
                                <label for="pw"><span class="compulsory"> * </span><strong>비밀번호수정</strong><br>
                                <input type="password" name="pw" id="join_pw" placeholder="영문, 숫자, 특수문자를 포함한 8~20자리"></label>
                            </div>
                            <div id="edit-pw1" class="edit">
                                <label for="pw1"><span class="compulsory"> * </span><strong>비밀번호확인</strong><br>
                                <input type="password" name="pw1" id="join_pw1" placeholder="영문, 숫자, 특수문자를 포함한 8~20자리"></label>
                            </div>
                            <div id="edit-name" class="edit">
                                <span class="compulsory"> * </span><strong>이름</strong><br>
                                <p>김이름</p> 
                            </div>
                            <div id="edit-nickname" class="edit">
                                <label for="nickname"><span class="compulsory"> * </span><strong>닉네임</strong><br>
                                <p>살림이</p> 
                                <input type="text" name="nickname" id="join_nickname" placeholder="변경할 닉네임을 입력해주세요."></label>
                            </div>
                            <div id="edit-birth" class="edit"> 
                                <label for="birth"><span class="compulsory"> * </span><strong>생년월일</strong><br>
                                <p>1993년 7월 5일</p> 
                                <input type="text" name="birth" id="join_birth" placeholder="YYYYMMDD"></label>
                            </div>
                            <div id="edit-tel" class="edit">
                                <label for="tel"><span class="compulsory"> * </span><strong>연락처</strong><br>
                                    <p>010-1234-5678</p> 
                                <input type="text" name="tel" id="join_tel" placeholder="'-'빼고 숫자만 입력해주세요."></label>
                            </div>
                            <div id="edit-email" class="edit">
                                <label for="email"><strong>이메일</strong><br>
                                    <p>saliming@gmail.com</p> 
                                <input type="text" name="email" id="join_email" placeholder="이메일을 입력해주세요."></label>
                            </div>
                            <div id="edit-address">
                                <p><strong>주소</strong></p>
                                <p>04540 서울 중구 남대문로 120 대일빌딩 3층</p> 
                            <input type="text" id="postcode" placeholder="우편번호" class="post">
                            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="post"><br>
                            <input type="text" id="address" placeholder="주소" class="addr"><br>
                            <input type="text" id="detailAddress" placeholder="상세주소" class="addr"> 
                            </div>
                            <div id="edit-btns" class="edit">
                                <button id="edit-btn">회원정보수정</button>
                            </div>
                        </div>
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