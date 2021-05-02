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
		<th>작성날짜</th>
		<th>진행상황</th>
	</thead>
	<tbody>
	
	<c:if test="${teamboard eq null }">
		<tr align="center">
		<td colspan="7">게시글이 없습니다.</td>
		</tr>
	</c:if>
	
	<c:if test="${teamboard ne null }">
		<c:forEach items="${teamboard }" var="tb">
		<tr>
			<td><c:out value="${tb.boardnum }"></c:out></td>
			<c:if test="${tb.result == 0 }">
				<td><a href="./TeamBoardDetail?boardnum=<c:out value="${tb.boardnum }"/>"><c:out value="${tb.boardtitle }"></c:out></a></td>
			</c:if>
			<c:if test="${tb.result == 1 }">
				<td><c:out value="${tb.boardtitle }"></c:out></td>
			</c:if>
			<td><c:out value="${tb.userid }"></c:out></td>
			<td><c:out value="${tb.scannum }"></c:out></td>
			<td><c:out value="${tb.applynum }"></c:out></td>
			<td><fmt:formatDate value="${tb.bdate }" pattern="yyyy-MM-dd"/></td>
			<!--  <td><c:out value="${tb.result }"></c:out></td>-->
			<c:if test="${tb.result == 0 }">
				<td>모집중</td>
			</c:if>
			<c:if test="${tb.result == 1 }">
				<td>모집완료</td>
			</c:if>
		</tr>
		</c:forEach>
	</c:if>
	
	<tr align="center">
	<td colspan="7"><a href="./TeamBoardInput"><button class="btn btn-primary">글쓰기</button></a></td>
	</tr>
	</tbody>

</table>
