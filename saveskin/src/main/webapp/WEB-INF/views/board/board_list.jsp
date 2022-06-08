<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/include_head.jsp" %>
<link rel="stylesheet" href="${rootPath}/static/css/board_list.css?ver=2022-05-28-001">
</head>
<body>
<%@ include file="/WEB-INF/views/include/include_nav.jsp" %>
  <section id="freeboard">
      <div id="topsection">
        <div id="bh2">
              <ul>
                <li>
                  <h2>커뮤니티 자유게시판</h2>

              </li>
            </ul>
          </div>
          <div id="bp">
            <p>화장품에 대한 정보를 자유롭게!</p>
          </div>
        </div>
        <table id="boardtable">
          <colgroup>
            <col width="15%" />
            <col width="40%" />
            <col width="15%" />
            <col width="15%" />
            <col width="15%" />
          </colgroup>
          <thead>
          <tr>
            <th>NO.</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회수</th>
          </tr>
          </thead>
	
	<table class="">
		<tbody>
		<!--
		서버로 부터 받은 데이터(도서리스트)를 보여주기 위한 부분
		BOOKS : 서버로부터 받을 데이터
		BOOK : forEach 를 사용하여 한개의 요소를 추출하여 저장할 변수
		 -->
		 <c:forEach items="${bCon}" var="Con" varStatus="INDEX">
		 <tr data-b_num="${Con.b_num}">
		 	<td>${Con.b_num}</td>
		 	<td>${Con.b_title}</td>
		 	<td>${Con.b_content}</td>
		 	<td>${Con.b_hit}</td>
		 	<td>${Con.b_writer}</td>
		 	<td>${Con.b_date}</td>
		 </tr>
		 </c:forEach>
		</tbody>
	</table>
	<div class="btn_box">
		<a href="${rootPath}/books/insert">도서정보추가</a>
	</div>
	<a href="${rootPath}/books/insert">도서정보추가</a>

      </table>
      <div id="page">
        <ul>
          <a href="#"><li><<</li></a>
          <a href="#"><li><</li></a>
          <a href="#"><li>1</li></a>
          <a href="#"><li>2</li></a>
          <a href="#"><li>3</li></a>
          <a href="#"><li>4</li></a>
          <a href="#"><li>5</li></a>
          <a href="#"><li>6</li></a>
          <a href="#"><li>7</li></a>
          <a href="#"><li>8</li></a>
          <a href="#"><li>9</li></a>
          <a href="#"><li>10</li></a>
          <a href="#"><li>></li></a>
          <a href="#"><li>>></li></a>
        </ul>
        <div id="pagebutton">
          <a href="${rootPath}/board/board_write"><button>작성하기</button></a>
        </div>
      </div>
    </section>


<%@ include file="/WEB-INF/views/include/include_footer.jsp" %>
</body>
</html>