<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="header.jsp"/>

<script type="text/javascript">
	function getOrderList() { location.href= "/listAllBoard"; }
</script>

<style>
	th, td { border-bottom: 2px solid rgb(64, 64, 64); }
</style>

</head>
	<link href="/css/list.css" rel="stylesheet" type="text/css">
	<link href="/css/main.css" rel="stylesheet" type="text/css">
  
<body>
	<c:import url="boardHeader.jsp"/>
	<form action="listAllBoard">
		<!-- 검색창 -->
       	<div id="serch">
         	<input type="text" placeholder="종합 검색">
       	</div>
	</form>
		<hr>
		<form action="list" id="list">
        	<h3> 커뮤니티 - 전체 게시판 </h3>
        <input type="checkbox" style="margin-bottom: 30px;">이미지 첨부글만 보기
        
        <select id="orderList" style="margin-right: 500px;">
	        <option value="new" ${board.orderList == 'new' ? 'selected="selected"' : '' }>최신순</option> 
	        <option value="view" ${board.orderList == 'view' ? 'selected="selected"' : '' }>조회수순</option> 
	        <option value="like" ${board.orderList == 'like' ? 'selected="selected"' : '' }>추천순</option> 
        </select>
         
	   	<script>
		   	document.getElementById('orderList').onchange = function() {
		       	location.href="listAllBoard?orderList="+orderList.value;
		   	}
		</script>
   	</form>
   
   	<c:set var="num" value="${page.total - page.start + 1 }"></c:set>
   
   	<div>
      	<table>
         	<c:forEach var="board" items="${listAllBoard}">
            	<tr>
					<td style="width: 300px;">
						<a href="detailBoard?board_id=${board.board_id}&b_common_board=${board.b_common_board}">${board.b_title }</a>
					</td>
					<td style="width: 100px;">${board.m_nickname }</td>
					<td style="width: 200px;">${board.getFormattedCreateDate() }</td>
					<td style="width: 50px;">${board.b_like_cnt }</td>
					<td style="width: 30px;">${board.b_view_cnt }</td>
					
					<c:set var="num" value="${num - 1 }"></c:set>
            	</tr>
         	</c:forEach>
      	</table>
   	</div>
   
	<c:if test="${page.startPage > page.pageBlock }">
      	<a href="listAllBoard?currentPage=${page.startPage - page.pageBlock }&orderList=${board.orderList}">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
      	<a href="listAllBoard?currentPage=${i }&orderList=${board.orderList}">[${i }]</a>
	</c:forEach>
	<c:if test="${page.endPage < page.totalPage }">
      	<a href="listAllBoard?currentPage=${page.startPage + page.pageBlock }&orderList=${board.orderList}">[다음]</a>
	</c:if>
   
</body>
	<c:import url="footer.jsp"/>
</html>