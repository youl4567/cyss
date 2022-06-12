<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/include_head.jsp" %>
<link rel="stylesheet" href="${rootPath}/static/css/board_detail.css?ver=2022-05-28-001">
</head>
<body>
<%@ include file="/WEB-INF/views/include/include_nav.jsp" %>

 <section id="board-in">
 
      <div id="title1">
      
            <div id="nick">
              <img src="${rootPath}/static/image/01.png" />
              <p>닉네임</p>
            </div>
            
			    <!-- 제목 title  -->
			    
				    <h3>${BOARD.b_title}</h3>
	  </div>
				
				<!-- 내용 content -->
				<div id="content">
				     <p>
				  				  ${BOARD.b_content}
				     </p>
				</div>
       
      


	<!-- 댓글 부분 -->
	
      <div id="comment">
        <ul>
          <li>
            <div id="nick">
              <img src="${rootPath}/static/image/02.png"/>
              <p>닉네임</p>
            </div>
            <p>
              카카오페이가 5월 10일 장중 공모가 9만원을 밑도는 주가를 기록했다.
              성장주에 대한 투자심리가 약화된 데다 의무보유 기간 해제에
              오버행(매도 대기 물량) 우려가 겹쳤다.카카오페이가 공모가 9만원
            </p>
          </li>
          <li>
            <div id="nick">
              <img src="${rootPath}/static/image/03.png"/>
              <p>닉네임</p>
            </div>
            <p>
              SK하이닉스 DRAM AE 책임자 김형수 담당은 “SK하이닉스는 키사이트의
              전문성, 특히 키사이트 PCIe 5.0 테스트 솔루션을 높이 평가한다”며
              “키사이트의 오실로스코프, 밝혔다. SK하이닉스 DRAM AE 책임자 김형수
            </p>
          </li>
        </ul>
      </div>

      <div id="comment-sub">
        <ul>
          <li id="comment-nick">닉네임님</li>
          <li>
            <input type="text" placeholder="댓글을 남겨보세요!" />
          </li>
          <li id="btnli">
            <button type="button">댓글 등록</button>
          </li>
        </ul>
      </div>
    </section>

<%@ include file="/WEB-INF/views/include/include_footer.jsp" %>
</body>
</html>