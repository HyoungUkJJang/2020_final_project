<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<form action="/book/listAll" method="post">

<select name="type">
	<option value="----" selected="selected">------</option>
	<option >제목</option>
	<option >작성자</option>
	<option >모집분야</option>
</select>

<input type="text" name="keyword">
<input type="submit" value="검색">

</form>
<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Panel heading</div>
  <div class="panel-body">
    <p>...</p>
</div>

  <!-- Table -->
  <table class="table">
<thead>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>조회수</th>
</tr>
</thead>
<tbody>
	<c:forEach items="${list }" var="book">
		<tr align="center">
		<td><c:out value="${book.don }"></c:out></td>
		<td><a href="/book/read?don=<c:out value="${book.don }"/> "><c:out value="${book.doname }"></c:out></a></td>
		<td><c:out value="${book.doactor }"></c:out></td>
		<td><c:out value="${book.docompany }"></c:out></td>
		<td><c:out value="${book.doprice }"></c:out></td>
		<td><fmt:formatDate value="${book.doday }" pattern="yyyy-MM-dd"/></td>
		<td><c:out value="${book.dostate }"></c:out></td>
		<td><a href="/book/delete?don=<c:out value="${book.don }"/> "><button>삭제</button></a></td>
		</tr>
	</c:forEach>
	<tr align="center">
	<td colspan="8"><a href="/book/input"><button>등록</button></a></td>
	</tr>
</tbody>
  </table>
</div>