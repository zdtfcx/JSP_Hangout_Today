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
                        <h4>게시판 목록</h4>
                        <h5>
                            <a href="moim.jsp" class="selected">모임 게시판</a>
                            <a href="review.jsp" class="off">리뷰 게시판</a>
                        </h5>
                    </div>
                </div>
                <div class="moim-wrapper">
                    <div class="list-item moim">
                        <span class="icon">📕</span>
                        <h3>독서</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>40개 모임</p>
                    </div>
                </div>
                <div class="category-list">
                    <div class="review">
                        <div class="title">
                            <h3>모임 만들기</h3>
                        </div>
                        <div class="moim-review">
                            <form action="" method="POST" class="review-form">
                                <label for="review-title" class="block">모임명 : </label><input type="text" name="title" id="review-title" class="review-input" placeholder="모임명 입력" required>
                                <label for="review-content" class="block">모임내용 : </label><textarea name="content" id="review-content" placeholder="모임 내용을 입력해주세요" required></textarea>
                                <label for="review-location" class="block">모임위치 : </label><input type="text" name="location" id="review-location" class="review-input" placeholder="모임 위치를 알려주세요." required>
                                <label for="review-people" class="block">인원제한 : </label>
                                <input type="radio" id="no-limit" name="limit-check" value="제한없음"><label for="no-limit" class="inline-block">제한없음</label> <br>
                                <input type="radio" id="limit" name="limit-check" value="제한있음"><label for="limit" class="inline-block">제한있음</label>
                                <input type="text" placeholder="직접 입력">
                                <div class="create-comment">
                                    <div class="button-area">
                                        <button class="btn cancel" type="button">
                                            <a href="moim.jsp">취소</a>
                                        </button>
                                        <button class="btn submit" type="submit">
                                            작성
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        </div>
    </section>


<%@ include file='footer.jsp' %>