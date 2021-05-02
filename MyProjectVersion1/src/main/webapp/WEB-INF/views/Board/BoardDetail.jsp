<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
      
      <script>
      //console.log("이거뭥미 "+"${applystate }");
      if("${applystate }" == "")
    	  {
    	  	console.log("널이다 지원가능함")
    	  }
      else
    	  {
    	    console.log("널 아니다 이미 지원함")
    	  }
     </script>
<label>팀원 모집 게시판</label>
    <table class="table">
    	<thead class="thead-dark">
    		<tr>
    			<th>작성자 :  ${detail.userid }</th>
    			<th>모집분야 : ${detail.boardmajor }</th>
    			<th colspan="2">제목 : ${detail.boardtitle }</th>
    		</tr>
    	</thead>
    	<tbody>
    		<tr align="center">
    		<td colspan="4"><label>${detail.boardcontent }</label></td>
    		</tr>
    	</tbody>
    	<tr>
    			<c:if test="${applystate eq null }">
		      	  <td><button type="button" data-toggle="modal" class="btn btn-primary" data-target="#modal1">지원하기</button></td>
		        </c:if>
		        
		        <c:if test="${applystate ne null }">
		        <td> <button type="submit" class="btn btn-primary" id="applycheck"  disabled="disabled">지원완료</button> </td>
		        </c:if>
    	
    	</tr>
    </table>
<a href="./TeamBoardList">목록</a>

<!-- 신청모달 -->
<form action="./teamapply" method="post">
	<div class="modal fade" id="modal1" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">프로젝트 신청</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<input type="hidden" value=${detail.boardnum } name="boardnum"> 
		     	<input type="hidden" value=${detail.userid } name="masteruserid">
		     	<input type="hidden" value=${obj.userid } name="applyuserid">
		     	<textarea class="form-control" name="applyusercontent"></textarea>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      	  <button type="submit" class="btn btn-primary" >Apply</button>    
		      </div>
	    </div>
	  </div>
	</div>
</form>