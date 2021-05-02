<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<form action="./teamboardinput" method="post">

  <div class="form-group">
    <label>프로젝트 제목</label>
    <input type="hidden" value=${obj.userid } name="userid">
    <input type="text" name="boardtitle" class="form-control" placeholder="Title">
  </div>
  
  <div class="form-group">
    <label>모집분야</label>
    <select name="boardmajor" class="form-control">
      <option value="Back-End">Back-End</option>
      <option value="Front-End">Front-End</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label>프로젝트 소개</label>
    <textarea name="boardcontent" class="form-control" rows="3"></textarea>
  </div>
  <input type="submit"  class="btn btn-primary" value="작성완료">
</form>