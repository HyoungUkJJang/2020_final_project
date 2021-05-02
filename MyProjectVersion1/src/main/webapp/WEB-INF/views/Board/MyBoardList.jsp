<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    

<table class="table">
	<thead>
		<th>번호</th>
		<th>프로젝트 제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>신청자수 </th>
		<th>신청자 보기</th>
	</thead>
	<tbody>
	
	<c:if test="${myboard eq null }">
		<tr align="center">
		<td colspan="6">게시글이 없습니다.</td>
		</tr>
	</c:if>
	
	<c:if test="${myboard ne null }">
		<c:forEach items="${myboard }" var="myboard">
		<tr>
			<td><c:out value="${myboard.boardnum }"></c:out></td>
			<td><a href="./TeamBoardDetail?boardnum=<c:out value="${myboard.boardnum }"/>"><c:out value="${myboard.boardtitle }"></c:out></a></td>
			<td><c:out value="${myboard.userid }"></c:out></td>
			<td><c:out value="${myboard.scannum }"></c:out></td>
			<td><c:out value="${myboard.applynum }"></c:out></td>
			<td><a href="./applycheck?boardnum=<c:out value="${myboard.boardnum }"/>">신청자 확인하기</a></td>
		</tr>
		</c:forEach>
	</c:if>
	</tbody>

</table>
