<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%@ include file='header.jsp' %>

<%@ page import= "org.Hangout.hangoutDAO" %>


    <%
		String[] datetime = new String[2];
		
		ResultSet rs = null;
		hangoutDAO dao = hangoutDAO.getInstance();
		try{
			rs = dao.showHangout();
		} catch(SQLException e) {
		out.print("exception : " + e.toString());
		}
	%>
	
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
                    <div class="title-right">
                        <button class="map" onclick="location.href='moim-edit.jsp'">🗽 새로운 모임 만들기</a></button>
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

					<% if(rs != null){ 
						while(rs.next()) {
					%>

                    <div class="list-item post">
                       <span class="icon">👨</span>
                        <h3><%=rs.getString("title") %></h3>
                        <h4><%=rs.getString("txt").substring(0, 2)%></h4>
                        <p>모이는 날 <span id="time"><%=rs.getString("hdate") +  " " + rs.getString("htime") %></span></p>
                       <div class="black-bg">
                          <div class="modal-wrap">
                             <div class="modal-close">
                                <a href="">close</a>
                             </div>
                             <div class="modal-content">
                                <form method="POST" action="moim-submit.jsp">
                                   <label for="review-title" class="block">모임 주최자 : </label><input type="text" name="title" id="review-title" class="" value="<%= rs.getString("name") %>" readonly>
                                       <label for="review-content" class="block">모임내용 : </label><textarea name="content" id="review-content"  readonly > <%= rs.getString("txt")%></textarea>
                                       <label for="review-location" class="block">모임위치 : </label><input type="text" name="addr" id="review-location" class=""  value="<%= rs.getString("moim_addr") %>" readonly>
                                       <label for="review-people" class="block">인원현황 : </label> <input type="text" value= "<%=rs.getInt("personnel")%>"readonly>
                                       <input class="black-btn" type="submit" value="신청하기">
                                </form>
                                
                             </div>
                          </div>
                       </div>
                    </div>
                    <%}} else out.print("<p>현재는 모임이 없습니다.</p>"); %>
                    
                    
                </div>
            </div>
						

					<%--
                   <% while(rs.next()) {
                   		if(!rs.next()) 
                   %>
                   
                    <div class="list-item post">
                       <span class="icon">👨</span>
                        <h3><%=rs.getString("title") %></h3>
                        <h4><%=rs.getString("txt").substring(0, 2)%></h4>
                        <p>모이는 날 <span id="time"><%=rs.getString("hdate") +  " " + rs.getString("htime") %></span></p>
                       <div class="black-bg">
                          <div class="modal-wrap">
                             <div class="modal-close">
                                <a href="">close</a>
                             </div>
                             <div class="modal-content">
                                <form method="POST" action="moim-submit.jsp">
                                   <label for="review-title" class="block">모임 주최자 : </label><input type="text" name="title" id="review-title" class="" value="<%= rs.getString("name") %>" readonly>
                                       <label for="review-content" class="block">모임내용 : </label><textarea name="content" id="review-content"  readonly > <%= rs.getString("txt")%></textarea>
                                       <label for="review-location" class="block">모임위치 : </label><input type="text" name="location" id="review-location" class=""  value="<%= rs.getString("addr") %>" readonly>
                                       <label for="review-people" class="block">인원현황 : </label> <input type="text" value= "<%=rs.getInt("personnel")%>"readonly>
                                       <input class="black-btn" type="submit" value="신청하기">
                                </form>
                                
                             </div>
                          </div>
                       </div>
                    </div>
                    <%} %>
                </div>
            </div>
             --%>

            <button class="map-button" onclick="location.href='map.jsp'">
                <h2>🗺지도에서 모임 전체 보기</h2>
            </button>
        </div>
    </section>

    
    
    <script>
 	
   	 function popUp() {
   		 this.querySelector(".black-bg").classList.add("on");
   		 this.querySelector(".modal-wrap").classList.add("on");
	 }   
   	    
   	 function popClose() {
   		
   		//var post = this.parentNode.parentNode.parentNode;
   		//console.log(post.querySelector(".black-bg"));
   		//post.querySelector(".black-bg").classList.remove("on");
   		//post.querySelector(".modal-wrap").close();
   		
 	 }

     var posts = document.querySelectorAll('.list-item.post');
     
     var modal = document.querySelectorAll('.mordal_wrap');
     var black_bg = document.querySelectorAll('.black-bg');
     
     for(let i=0; i<posts.length; i++){
         posts[i].addEventListener('click', popUp);
         close_btn = posts[i].querySelector(".modal-close");
         close_btn.addEventListener('click', popClose);
     }
     
	</script>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>


	
	<script>
	
	// 시간 지난 게시물 없애기
	
	function deletePost(){
		var posts = document.querySelectorAll(".list-item.post");
		
		var today = new Date();
		
		for(let i=0; i<posts.length; i++){
			let time = posts[i].querySelector("#time").innerText;
			let moim_time = new Date(time);
			let diff = (moim_time.getTime()-today.getTime())/(60*60); 
			
			// 시간 지난 게시물 삭제
			if(diff<0){
				posts[i].parentNode.removeChild(posts[i]);
			}
		
		}
	}
	
	deletePost();
	setInterval(deletePost, 10000)
	
	</script>
	
    
<%@ include file='footer.jsp' %>