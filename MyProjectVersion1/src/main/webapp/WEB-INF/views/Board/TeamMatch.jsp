<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<table class="table">
	<thead>
		<th>제목</th>
		<th>MASTER</th>
		<th>APPLY</th>
		<th>MESSAGE</th>
	</thead>
	<tbody>
	
	<c:if test="${mymatch eq null }">
		<tr align="center">
		<td colspan="3">매치된 프로젝트가 없습니다.</td>
		</tr>
	</c:if>
	
	<c:if test="${mymatch ne null }">
		<c:forEach items="${mymatch }" var="tb">
		<tr>
			<td><a href="./mymatchDetail?boardnum=<c:out value="${tb.title }"/>"><c:out value="${tb.title }"></c:out></a></td>
			<td><c:out value="${tb.masteruserid }"></c:out></td>
			<td><c:out value="${tb.applyuserid }"></c:out></td>
			<td><button type="button" data-toggle="modal" class="btn btn-primary" data-target="#modal1">쪽지보내기</button></td>
		</tr>
		<tr>
			<td colspan="4"><h3>content</h3><br><br>${tb.content }</td>
		</tr>
		</c:forEach>
	</c:if>
	
	</tbody>

</table>    


<!-- 쪽지모달 -->
<form action="./teamapply" method="post">
	<div class="modal fade" id="modal1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">SEND MESSAGE</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
					
		     	<textarea class="form-control" name="applyusercontent"></textarea>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      	  <button type="submit" class="btn btn-primary" >SEND</button>    
		      </div>
	    </div>
	  </div>
	</div>
</form>