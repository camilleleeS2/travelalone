<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="header.jsp"/>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script defer src="/js/detailBoardLoginChk.js"></script>
<script type="text/javascript">
	function imgOnclickCheck() {
        var checked = $('#imgOnlyCheckbox').is(':checked');
		if(checked) {
			 $(".img_stored_file_no").css("display", "none");
		} else {
			$(".img_stored_file_no").css("display", "");
		}
	}
</script>
<script type="text/javascript">
	function getOrderList() { location.href= "/listBoard"; }
</script>

<style>
	th, td { border-bottom: 2px solid rgb(64, 64, 64); }
</style>

</head>
	<link href="/css/main.css" rel="stylesheet" type="text/css">
	<link href="/css/list.css" rel="stylesheet" type="text/css">
<body>
   	<c:import url="boardHeader.jsp"/>
   	<form action="listBoard?b_common_board=${board.b_common_board }">
		<!-- 검색창 -->
       	<div id="serch">
         	<input type="text" placeholder="종합 검색">
        </div>
	</form>
	
	<hr>
	
		<h3> 커뮤니티 - 마이 페이지</h3> 
		<h5> 커뮤니티 활동 내역 </h5>
  
	<c:set var="num" value="${page.total - page.start + 1 }"></c:set>
   
	<div>
      	<table>
      	  	<!--  img_stored_file_yn  파일 유무 Check -->
         	<c:forEach var="board" items="${myPageCommunityList}">
         		<c:choose>
					<c:when test="${board.img_stored_file_yn == 0}">
						<tr class="img_stored_file_no" >
					</c:when>
					<c:when test="${board.img_stored_file_yn > 0}">
						<tr class="img_stored_file_yes" >
					</c:when>
				</c:choose>
							<td style="width: 300px;">
								<a href="detailBoard?board_id=${board.board_id}&b_common_board=${board.b_common_board }">${board.b_title }</a>
							</td>
							<c:choose>
								<c:when test="${board.b_common_board == 'bor100'}">
									<td style="width: 100px;">자유 게시판</td>
								</c:when>
								<c:when test="${board.b_common_board == 'bor200'}">
									<td style="width: 100px;">정보 게시판</td>
								</c:when>
								<c:when test="${board.b_common_board == 'bor300'}">
									<td style="width: 100px;">질문 게시판</td>
								</c:when>
								<c:when test="${board.b_common_board == 'bor400'}">
									<td style="width: 100px;">홍보 게시판</td>
								</c:when>
								<c:when test="${board.b_common_board == 'bor500'}">
									<td style="width: 100px;">모집 게시판</td>
								</c:when>
							</c:choose>
							<td style="width: 200px;">${board.getFormattedCreateDate() }</td>
							<td style="width: 50px;">${board.b_like_cnt }</td>
							<td style="width: 30px;">${board.b_view_cnt }</td>
							
							<c:set var="num" value="${num - 1 }"></c:set>
						</tr>
         	</c:forEach>
      	</table>
   	</div>
   	<c:if test="${page.startPage > page.pageBlock }">
      	<a href="listBoard?currentPage=${page.startPage - page.pageBlock }&b_common_board=${board.b_common_board }&orderList=${board.orderList}">[이전]</a>
   	</c:if>
   	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
      	<a href="listBoard?currentPage=${i }&b_common_board=${board.b_common_board }&orderList=${board.orderList}">[${i }]</a>
   	</c:forEach>
   	<c:if test="${page.endPage < page.totalPage }">
      	<a href="listBoard?currentPage=${page.startPage + page.pageBlock }&b_common_board=${board.b_common_board }&orderList=${board.orderList}">[다음]</a>
   	</c:if>
</body>
	<c:import url="footer.jsp"/>
</html>