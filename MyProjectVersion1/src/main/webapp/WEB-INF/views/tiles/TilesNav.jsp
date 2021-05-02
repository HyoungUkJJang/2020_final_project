<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<link href="./resources/Nav_Resources/bt1/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="./resources/Nav_Resources/bt1/css/sb-admin-2.min.css" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    

<div class="Header">
	       
	           
	    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

		<a href="./TeamBoardList">LOGO</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
          <!-- Topbar Search -->
          <form action="./profilecheck" method="get" target="blank" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
             <input type="text" name="userid" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
              <!-- <button type="submit">검색</button> -->
         
                <button class="btn btn-primary" type="submit">
                  <i class="fas fa-search fa-sm"></i>
                </button>

              </div>
            </div>
          </form>
          <!-- Topbar Search 
          <form action="./profilecheck" method="post" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
             <input type="text" name="userid" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="submit" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
          -->
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              
              
              
              
              
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">${obj.alertnotice }</span>
              </a>
              
              <!-- Dropdown - Alerts -->
                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  	알림판
                </h6>
                
               <c:forEach items="${notice }" var="nt">
	                <a class="dropdown-item d-flex align-items-center" href="#">
	                  <div class="mr-3">
	                    <div class="icon-circle bg-primary">
	                      <i class="fas fa-file-alt text-white"></i>
	                    </div>
	                  </div>
	                  <div>
	                    <div class="small text-gray-500"><fmt:formatDate value="${nt.noticedate }" pattern="yyyy-MM-dd"/></div>
	                    <span class="font-weight-bold"><c:out value="${nt.content }"></c:out></span>
	                  </div>
	                </a>
	           </c:forEach>
            
            
            
            
            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
             <!-- Dropdown - Messages -->

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${obj.userid }</span>
                <img class="img-profile rounded-circle" src="./resources/myimage/${obj.userimg }">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="./profile">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="./logout" >
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
</div>

  <!-- Bootstrap core JavaScript-->
  <script src="./resources/Nav_Resources/bt1/vendor/jquery/jquery.min.js"></script>
  <script src="./resources/Nav_Resources/bt1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="./resources/Nav_Resources/bt1/vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="./resources/Nav_Resources/bt1/js/sb-admin-2.min.js"></script>
  
  <!-- Page level plugin
   <script src="./resources/Nav_Resources/bt1/vendor/chart.js/Chart.min.js"></script> 
  <!-- Page level custom scripts 
   <script src="./resources/Nav_Resources/bt1/js/demo/chart-area-demo.js"></script> 
	<script src="./resources/Nav_Resources/bt1/js/demo/chart-pie-demo.js"></script>
	 -->
