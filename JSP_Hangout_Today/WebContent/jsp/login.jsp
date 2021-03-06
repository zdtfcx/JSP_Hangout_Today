<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file='header.jsp' %>

    <section>
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>로그인</h1>
                </div>
                <form action="../function/accessLogin.jsp" method="POST">
                    <div class="login-box">
                        <h3>아이디</h3>
                        <input type="text" name="id" placeholder="ID">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호</h3>
                        <input type="password" name="password" placeholder="PASSWORD">
                    </div>
                    <div class="login-box">
                        <input type="submit" value="로그인" class="submit">
                    </div>
                    <div class="login-box">
                        <input type="submit" value="NAVER 소셜 로그인" class="social naver">
                    </div>
                </form>
                <div class="find">
                    <a href="find-id.jsp">아이디가 기억나지 않으시나요?</a>
                    <a href="find-pw.jsp">비밀번호 찾기</a>
                </div>
                <div class="create-box">
                    <p>아직 회원이 아니라면?</p>
                    <button class="black-btn" onclick="location.href='register.jsp'">회원가입</button>
                </div>
            </div>
        </div>
    </section>

<%@ include file='footer.jsp' %>