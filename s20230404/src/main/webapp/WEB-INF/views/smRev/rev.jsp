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

	<div>

		<h1>리뷰 메인화면</h1>
		<div>리뷰 갯수 ${totalReview}</div>

		<div>
			<a href="tour"> 관광 </a> <a href="nature"> 자연 </a> <a
				href="leisure"> 레저 </a> <a href="shopping"> 쇼핑 </a>
		</div>

	</div>
	
	<!-- 찐본문 -->

			<table style="margin:auto;">
				<tr>
					<td hidden>번호</td>													
					<td>카테고리</td>
					<td>내용</td>
					<td>평점</td>
					<td>리뷰수</td>
					<td>조회수</td>

				</tr>
				<c:forEach items="${reviewList}" var="review">
					<tr>
						<td hidden>${review.review_id}</td>
						
						<td>${review.r_common_tsr_category}</td>
						<td> <a href="revDetail?rid=${review.review_id}">${review.r_content}</a></td>
						<td>★임시방편</td>
						<td>777임시방편</td>
						<td>777임시방편</td>						

				</c:forEach>
				<tr>
					<td colspan="5"><a href="revWriteForm">글 작성</a></td>
				</tr>
			</table>
	








</body>
</html>