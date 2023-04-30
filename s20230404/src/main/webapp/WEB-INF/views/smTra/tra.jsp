<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
.swiper-container {
	width:1200px;
	height:600px;
	padding:30px 0;
	border:5px solid silver;
	border-radius:7px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	box-shadow:0 0 5px #555;
}
  </style>
<script type="text/javascript">
    /* 검색어 입력 필드에서 Enter키 입력 시 검색 수행 */
	document.getElementById('searchId').addEventListener('keyup', function(event) {
   		 if (event.code === 'Enter')
    	{
        	event.preventDefault();
        	document.querySelector('form').submit();
    	}
	});
	
	/* 카테고리 선택에서 Enter키 입력 시 검색 수행 */
	document.getElementById('category').addEventListener('keyup', function(event) {
  		 if (event.code === 'Enter')
     	{
         	event.preventDefault();
         	document.querySelector('form').submit();
     	}
 	});
</script>
</head>

<body>
<div id="img_banner">
		<img src="img/main-picture.png" alt="배너">
	</div>
	


<!-- 여행지종류 -->
			<div >  																						
				<c:forEach items="${boardList}" var="list">
							<td>
									<!-- 컨트롤러로 보내는거 -->
								<a href="traFilter?code=${list.code}">${list.value}</a>									
							</td>
				</c:forEach>																
					   <c:set var="num" value="${page.total-page.start+1 }"></c:set>
			</div>				
	
	<!-- 검색 -->
			<form action="traSearch">
				<select name="search">
					<option value="all">전체</option>
					<option value="tra102">서울</option>
					<option value="tra132">인천</option>
					<option value="tra131">경기</option>
					<option value="tra133">강원</option>
					<option value="tra142">대전</option>
					<option value="tra141">충남</option>
					<option value="tra143">충북</option>
					<option value="tra151">부산</option>
					<option value="tra152">울산</option>
					<option value="tra153">대구</option>
					<option value="tra155">경남</option>
					<option value="tra154">경북</option>
					<option value="tra162">광주</option>
					<option value="tra161">전남</option>
					<option value="tra163">전북</option>
					<option value="tra164">제주</option>
				</select>	
					<div id="serch">
			<input type="text" placeholder="검색어를 입력해주세요" name="searchName" id="searchId">
	  	</div>
				
				
			</form>
		
			<c:set var="num" value="${page.total-page.start+1 }"></c:set>
		 <hr>
		 	
	
	<!-- 이 달의 축제 -->
	  <div id="session1">
		<h2>이달의 축제</h2>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
		<!-- 클래스명은 변경하면 안 됨 -->
		<div class="swiper-container">
		  <div class="swiper-wrapper">
<!-- 		  	<div class="swiper-slide">				
				<figure>
			 	<a href="fesDetail?fid=1">
						<img src="https://i.ibb.co/3493r17/cat.jpg" alt="이미지 1"></a>
			   			<br>서울
			    		<br>호수공원
			    		<br>★★★★☆ (0)
			    </figure>
			</div> -->
		  	<div class="swiper-slide">				
				<figure>
			 	<a href="https://www.chf.or.kr/chf">
						<img src="../fes/fes1.jpg" alt="이미지 1" width=1100px height=450px></a>
			   			<br>서울
			    		<br>창경궁 야연
			    		<br>5/2(화)~5/19(금)
			    </figure>
			</div>			
			<div class="swiper-slide">
				<figure>
			 	<a href="https://www.xn--vk1b9fv8tlkdzuqf4h.com/">
						<img src="../fes/fes2.jpg" alt="이미지 2" width=1100px height=450px></a>	
			   			<br>대전
			    		<br>대청호 대덕물빛축제
			    		<br>4/7(금)~5/7(일)
			    </figure>
			</div>
			<div class="swiper-slide">
				<figure>
			 	<a href="https://www.herbisland.co.kr">
						<img src="../fes/fes3.jpg" alt="이미지 3" width=1100px height=450px></a>	
			   			<br>경기도 포천
			    		<br>허브아일랜드 라벤더
			    		<br>4/22(토)~7/1(토)
			    </figure>
			</div>
			<div class="swiper-slide">
				<figure>
			 	<a href="http://bba48.or.kr">
						<img src="../fes/fes4.jpg" alt="이미지 4" width=1100px height=450px></a>	
			   			<br>부산
			    		<br>2567 부산연등축제
			    		<br>4/28(금)~5/14(일)
			    </figure>
			</div>
			<div class="swiper-slide">
				<figure>
			 	<a href="http://hwangmaefestival.com/">
						<img src="../fes/fes5.png" alt="이미지 5" width=1100px height=450px></a>
			   			<br>경남 합천
			    		<br>황매산 철쭉제
			    		<br>4/29(토)~5/14(일)
			    </figure>
			</div>
			<div class="swiper-slide">
				<figure>
			 	<a href="https://www.hpftf.or.kr/">
						<img src="../fes/fes6.png" alt="이미지 6" width=1100px height=450px></a>	
			   			<br>전남 함평
			    		<br>함평 나비 대축제
			    		<br>4/28(금)~5/7(일)
			    </figure>
			</div>		
		</div>
		  <!-- 네비게이션 -->
		  <div class="swiper-button-next"></div> <!-- 다음 버튼 (오른쪽에 있는 버튼) -->
		  <div class="swiper-button-prev"></div> <!-- 이전 버튼 -->
		  <!-- 페이징 -->
		  <div class="swiper-pagination"></div>
		</div>
		
		<script>
		  new Swiper('.swiper-container', {
			slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
			spaceBetween : 20, // 슬라이드간 간격
			slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
			// 그룹수가 맞지 않을 경우 빈칸으로 메우기
			// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
			loopFillGroupWithBlank : true,
			loop : true, // 무한 반복
			pagination : { // 페이징
			  el : '.swiper-pagination',
			  clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
			},
			navigation : { // 네비게이션
			  nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			  prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		  });
		</script>
		<hr>	
	
	<!-- 국내 인기 여행지  -->
		<div id="session2">
		  <h3>국내 인기 여행지</h3>    
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
		<!-- 클래스명은 변경하면 안 됨 -->
		<div class="swiper-container">
		  <div class="swiper-wrapper">
			<div class="swiper-slide"><img src="image1.png" alt="이미지 1"></div>
			<div class="swiper-slide"><img src="image2.jpg" alt="이미지 2"></div>
			<div class="swiper-slide"><img src="image3.jpg" alt="이미지 3"></div>
			<div class="swiper-slide"><img src="image4.jpg" alt="이미지 4"></div>
			<div class="swiper-slide"><img src="image5.jpg" alt="이미지 5"></div>
			<div class="swiper-slide"><img src="image6.jpg" alt="이미지 6"></div>
		  </div>
	  
		  <!-- 네비게이션 -->
		  <div class="swiper-button-next"></div> <!-- 다음 버튼 (오른쪽에 있는 버튼) -->
		  <div class="swiper-button-prev"></div> <!-- 이전 버튼 -->
		  <!-- 페이징 -->
		  <div class="swiper-pagination"></div>
		</div>
		<script>
		  new Swiper('.swiper-container', {
			slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
			spaceBetween : 20, // 슬라이드간 간격
			slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
			// 그룹수가 맞지 않을 경우 빈칸으로 메우기
			// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
			loopFillGroupWithBlank : true,
			loop : true, // 무한 반복
			pagination : { // 페이징
			  el : '.swiper-pagination',
			  clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
			},
			navigation : { // 네비게이션
			  nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			  prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		  });
		</script>

		<hr>

	<!-- 여행지리스트 테이블 -->
		  <h3>국내 전체 여행지 </h3>
			<table style="margin:auto;">
		<tr>
			<td hidden>번호</td>													
			<td>지역</td>
			<td>숙소명</td>
			<td>평점</td>
			<td>리뷰수</td>			
		</tr>
		<c:forEach items="${traList}" var="travel">
			<tr>
				<td hidden>${travel.travel_id}</td>
			 	<td>${travel.t_common_loc}</td>
				<td > <a href="traDetail?tid=${travel.travel_id}">${travel.t_name}</a></td>
				<td>
					<c:choose>
						<c:when test="${travel.t_avgscore eq '1'}">
							<c:out value="★☆☆☆☆"/>
						</c:when>
						<c:when test="${travel.t_avgscore eq '2'}">
							<c:out value="★★☆☆☆"/>
						</c:when>
						<c:when test="${travel.t_avgscore eq '3'}">
							<c:out value="★★★☆☆"/>
						</c:when>
						<c:when test="${travel.t_avgscore eq '4'}">
							<c:out value="★★★★☆"/>
						</c:when>
						<c:when test="${travel.t_avgscore eq '5'}">
							<c:out value="★★★★★"/>
						</c:when>
						<c:otherwise>
							<c:out value="☆☆☆☆☆"/>
						</c:otherwise>
					</c:choose>												
				</td>																				
				<td>${travel.t_revcount}</td>							
		</c:forEach>
		
	</table>
	<hr>

		<a style="text-align: right;" href="traWriteForm">글작성</a>
<!-- 페이징 처리 페이징 처리  페이징 처리  페이징 처리   -->

 <div>
	<c:if test="${page.startPage > page.pageBlock }">
		<a href="tra?currentPage=${page.startPage-page.pageBlock}">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
		<a
			href="tra?currentPage=${i}">[${i}]</a>
	</c:forEach>
	<c:if test="${page.endPage < page.totalPage }">
		<a
			href="tra?currentPage=${page.startPage+page.pageBlock}">[다음]</a>
	</c:if>
</div> 






</body>
	<c:import url="footer.jsp"/>
</html>