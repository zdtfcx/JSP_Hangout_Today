<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='header.jsp' %>

    <section>
        <div id="main-wrapper">
            <div id="title">
                <h1>오늘머해?</h1>
                <h3>취향 및 위치 기반 실시간 소모임</h3>
            </div>

            <div class="today category">
                <div class="title">
                    <div class="title-left">
                        <h4>카테고리 전체 보기</h4>
                        <h5>
                            <a href="#" class="selected">전체</a>
                            <a href="#" class="off">컴퓨터</a>
                            <a href="#" class="off">운동</a>
                            <a href="#" class="off">힐링</a>
                            <a href="#" class="off">여행</a>
                            <a href="#" class="off">문화</a>
                            <a href="#" class="off">애견</a>
                        </h5>
                    </div>
                </div>
                <div class="category-list">
                    <div class="list-item">
                        <a href="moim.jsp">
                            <span class="icon">📕</span>
                            <h3>독서</h3>
                            <h4>마음의 양식을 쌓아보아요</h4>
                            <p>40개 모임</p>
                        </a>
                    </div>
                    <div class="list-item">
                        <span class="icon">🎞</span>
                        <h3>영화</h3>
                        <h4>팝콘 남았는데 같이 먹으면서 보실?</h4>
                        <p>5개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🎨</span>
                        <h3>미술</h3>
                        <h4>미대생과 함께하는 원데이 클래스</h4>
                        <p>9개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🏓</span>
                        <h3>탁구</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>5개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🏊‍♀️</span>
                        <h3>수영</h3>
                        <h4>음파음파 음파파</h4>
                        <p>3개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🧘‍♀️</span>
                        <h3>요가</h3>
                        <h4>힐링으로 떠나는 요가 여행.</h4>
                        <p>8개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🧗‍♂️</span>
                        <h3>클라이밍</h3>
                        <h4>전국 스파이더맨 모두 모여!</h4>
                        <p>10개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">👨‍🍳</span>
                        <h3>요리</h3>
                        <h4>취미로 요리해요 :)</h4>
                        <p>21개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">👩‍💻</span>
                        <h3>코딩</h3>
                        <h4>같이 프로젝트 해요!</h4>
                        <p>17개 모임</p>
                    </div>
                    <div class="list-item">
                        <span class="icon">🏌️‍♀️</span>
                        <h3>골프</h3>
                        <h4>골프좀 치뉘 혹쉬?</h4>
                        <p>4개 모임</p>
                    </div>
                </div>
            </div>

        </div>
    </section>
    
    <script src="../js/category.js"></script>
    
<%@ include file='footer.jsp' %>