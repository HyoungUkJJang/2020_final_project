<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
    <table class="table">
	<thead>
		<th>신청자 아이디</th>
		<th>신청 내용</th>
		<th>선택하기</th>
	</thead>
	
	<tbody>
	
	<c:if test="${apply eq null }">
		<tr align="center">
		<td colspan="6">게시글이 없습니다.</td>
		</tr>
	</c:if>
	
	<c:if test="${apply ne null }">
		<c:forEach items="${apply }" var="apply">
		<tr>
			<td><a href="./profilecheck?userid=<c:out value="${apply.applyuserid }"/>" target="blank"><c:out value="${apply.applyuserid }"></c:out></a></td>
			<td><c:out value="${apply.applyusercontent }"></c:out></td>
			<td>
				<form action="./match" method="post">
					<input type="hidden" name="title" value=${detail.boardtitle }>
					<input type="hidden" name="content" value=${detail.boardcontent }>
					<input type="hidden" name="masteruserid" value=${detail.userid }>
					<input type="hidden" name="applyuserid" value=${apply.applyuserid }>
					<input type="submit" value="매칭하기">
				</form>
			</td>
		</tr>
		</c:forEach>
	</c:if>
	
	</tbody>

</table>