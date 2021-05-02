<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<div class="SideBarUk">
<a href="./TeamBoardList">팀원모집</a><br>
기술Q&A<br>
<a href="./myboardlist">내가 모집한 프로젝트</a><br>
<a href="./applylist?userid=<c:out value="${obj.userid }"/> "> 내가 신청한 프로젝트</a><br>
<a href="./matchlist?userid=<c:out value="${obj.userid }"/> "> 매치된 프로젝트</a><br>
</div>