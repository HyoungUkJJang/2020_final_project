<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>포트폴리오 매칭</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./resources/Index_Resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="./resources/Index_Resources/assets/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="divided">
			
			<form action="./profiletext" method="post">
			
				<!-- One -->
					<section class="banner style1 orient-left content-align-left image-position-right fullscreen onload-image-fade-in onload-content-fade-right">
						<!-- 영역1 -->
						<div class="content form-group">
							<h3> ${profile.username} 님 프로필을 완성해주세요. </h3>
							<p class="major">사용자들이 참고하기 편해질거에요.</p>
						   <div class="field half">
						   
								<input type="text" name="Easy_Profile_name" placeholder="이지프로필네임"><br>
								<textarea  name="Easy_profile_content">이지프로필 내용입력</textarea><br>
								<div class="form-inline">
									<input type="text" class="col-6" name="Skill_name1" placeholder="스킬1번">
									<input type="text" class="col-6" name="Skill_Value1" placeholder="1번값" style="width:100px;">
								</div>
								<div class="form-inline">
									<input type="text" class="col-6" name="Skill_name2" placeholder="스킬2번">
									<input type="text" class="col-6" name="Skill_Value2" placeholder="2번값" style="width:100px;">
								</div>	
								<div class="form-inline">
									<input type="text" class="col-6" name="Skill_name3" placeholder="스킬3번">
									<input type="text" class="col-6" name="Skill_Value3" placeholder="3번값" style="width:100px;">
								</div>
								<hr />
								<input type="text" name="Education_Main_Name" placeholder="교육메인이름"><br>
								<input type="text" name="Education_Sub_Name" placeholder="서브이름"><br>
								<textarea name="Education_Content" >교육 내용입력</textarea><br>
								
							</div>
						</div>
						
						
						<!-- 영역2 -->
						<div class="image">
							<img src="./resources/Index_Resources/images/banner.jpg" alt="" />
						</div>
					</section>
					</form>
			</div>

		    <!-- Scripts -->
			<script src="./resources/Index_Resources/assets/js/jquery.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/browser.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/breakpoints.min.js"></script>
			<script src="./resources/Index_Resources/assets/js/util.js"></script>
			<script src="./resources/Index_Resources/assets/js/main.js"></script>

	</body>
</html>