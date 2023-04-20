<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


  <!-- 헤더 -->
  <div class="main">
		<div id="header">
		  <div class="container">
			<div id="container-left clearfix">
			  <div class="logo">
				<a href="mainPage"><img src="img/로고.png"></a>
			  </div>
			  <div class="headerLogin">
				<a href="loginPage.html">로그인</a>
			  </div> 
			  <div class="headerLogin">
				<a href="">회원가입</a>
			  </div> 
			</div>
		  </div>
		  <div class="headerForm">
			<div class="headerBenner">
			  <ul>
				<li><a href="#">여행지</a>
				  <ul>
					<li><a href="#">관 광</a></li>
	                <li><a href="#">자 연</a></li>
	                <li><a href="#">레 저</a></li>
	                <li><a href="#">쇼 핑</a></li>
				  </ul>
	            </li>
	            <li><a href="#">숙소</a>
	      		  <ul>
	              	<li><a href="#">호 텔</a></li>
	              	<li><a href="#">모 텔</a></li>
	              	<li><a href="#">팬 션</a></li>
	              	<li><a href="#">캠 핑</a></li>
	              	<li><a href="#">게스트 하우스</a></li>
				  </ul>
				</li>
				<li><a href="#">맛집</a>
				  <ul>
				   <li><a href="#">한 식</a></li>
				   <li><a href="#">중 식</a></li>
				   <li><a href="#">일 식</a></li>
				   <li><a href="#">양 식</a></li>
				   <li><a href="#">카 페</a></li>
				   <li><a href="#">기 타</a></li>
				  </ul>
				</li>
	            <li><a href="#">커뮤니티</a>
				  <ul>
				   <li><a href="#">자 유</a></li>
				   <li><a href="#">정 보</a></li>
				   <li><a href="#">질 문</a></li>
				   <li><a href="#">홍 보</a></li>
				   <li><a href="#">모 집</a></li>
				  </ul>
				</li>
			  </ul>
			</div>
		  </div>
		</div>
	</div>

	<!-- 본문 -->
 	<form >
 	<div>
		<h1>고객센터</h1>
			
			<div >
				 <a href="notice">공지사항</a>
				  <a href="faq">자주 묻는 질문</a>
				  <a href="inquire">문의하기</a>
			</div>			
						<h3>문의글수 : ${totalInquire }</h3>	
		</div>
	</form>	
	
	
			
			<form action="inquireSearch">
				<select name="search">
					<option value="s_title">제목</option>
					<option value="s_content">내용</option>
					
				</select> <input type="text" name="keyword" placeholder="keyword을 입력하세요" value="${search}">
				<button type="submit">keyword검색</button>
				<p>
			</form>
		
			<c:set var="num" value="${page.total-page.start+1 }"></c:set>
		
				<!-- 문의 분류하기 -->
			<div >  
				<table style="margin:auto;">
					<tr>
						<td>
							<form action="inquireEtcFilter">
								<button type="submit">기타문의</button>
							</form>
						</td>
						<td>
						
							 
						  <form action="inquireTraFilter">
						  <button type="submit">여행지추가문의</button>
						   </form>
						
						</td>
						<td>
						
						  	
						   <form action="inquireHouFilter">
						  <button type="submit">숙소추가문의</button>
						   </form>
						
						</td>
						<td>
						
						  <form action="inquireResFilter">
						  <button type="submit">맛집추가문의</button>
						   </form>			
						
						
						</td>
					</tr>
				</table>							
			
					   <c:set var="num" value="${page.total-page.start+1 }"></c:set>
			</div>			
			
				
		
		<!-- 찐본문 -->
	<div style = "text-align:center;">
			<table style="margin:auto;">
				<tr>
					<td hidden>번호</td>
					<td>제목</td>
					<td>작성자</td>					
					<td>답변여부</td>					
					<td>작성일</td>
				</tr>
				<c:forEach items="${inquireList}" var="inquire">
					<tr>
						<td hidden>${inquire.g_writing_id}</td>
						<td> <a href="inquireDetail?gid=${inquire.g_writing_id}"> ${inquire.g_title}</a>
							<%-- 		<a href="noticeDetail/${notice.g_notice_id}">${notice.g_notice_title}</a> --%>
						</td>
						<td>${inquire.member_id}</td>
						<td> 
							<%-- <c:out  value="${inquire.g_reply_yn}"/> --%>
							<c:choose>
								<c:when test="${inquire.g_reply_yn eq '1'.charAt(0)}">
									<c:out value="답변완료"/>
								</c:when>
								<c:otherwise>
									<c:out value="답변중"/>
								</c:otherwise>
							</c:choose>
							<%-- <c:if test="${}">
					        	
					         </c:if>
					         <c:if test="${inquire.g_reply_yn eq '0'}">
					            
					          </c:if> --%>
					     </td>     
						<td>${inquire.create_date}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5"><a href="inquireWriteForm">글작성</a></td>
				</tr>
			</table>

	</div>
	<c:if test="${page.startPage > page.pageBlock }">
		<a href="inquire?currentPage=${page.startPage-page.pageBlock}">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
		<a
			href="inquire?currentPage=${i}">[${i}]</a>
	</c:forEach>
	<c:if test="${page.endPage < page.totalPage }">
		<a
			href="inquire?currentPage=${page.startPage+page.pageBlock}">[다음]</a>
	</c:if>

</body>
</html>