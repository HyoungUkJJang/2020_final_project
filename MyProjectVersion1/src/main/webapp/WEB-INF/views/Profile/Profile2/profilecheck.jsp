<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html >
<head>
	<title>Easy Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheet css -->
	<link rel="stylesheet" href="./resources/Profile_Resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/Profile_Resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/Profile_Resources/css/templatemo-blue.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

</head>
<body >



<!-- header section -->
<header>
	<div class="containeruk">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<img src=${obj.userimg } class="imguk img-circle tm-borderuk" alt="templatemo easy profile">
				<h4 class="tm-title bold shadow">${obj.username }님의 프로필</h3>
				<h5 class="white bold shadow">${obj.usermajor } 개발자</h4>
			</div>
		</div>
	</div>
</header>

<!-- about and skills section -->
<section class="container">
	<div class="row">
	
	<!-- 이지프로필 부분 -->
		<div class="col-md-6 col-sm-12">
			<div id="profile1" class="about">
				<ul class="list-inline">
					<li class="list-inline-item"><h3 class="accent">Easy Profile</h3></li>
				</ul>
				<h2>${profile.easy_Profile_name }</h2>
				<p>${profile.easy_profile_content}</p>
			</div>
		</div>
		
	<!-- 스킬부분 -->
		<div class="col-md-6 col-sm-12">
			<div id="profile2" class="skills">
			<ul class="list-inline">
				<li class="list-inline-item"><h2 class="white">Skills</h2></li>
			</ul>
				<strong>${profile.skill_name1 }</strong>
				<span class="pull-right">${profile.skill_Value1 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value1 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value1}%;"></div>
					</div>
				<strong>${profile.skill_name2 }</strong>
				<span class="pull-right">${profile.skill_Value2 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value2 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value2 }%;"></div>
					</div>
				<strong>${profile.skill_name3 }</strong>
				<span class="pull-right">${profile.skill_Value3 }%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-primary" role="progressbar" 
                        aria-valuenow=${profile.skill_Value3 } aria-valuemin="0" aria-valuemax="100" style="width:${profile.skill_Value3 }%;"></div>
					</div>
			</div>	
		</div>
		
	</div>
</section>

<!-- education and languages -->
<section class="container">

	<div class="row">
	
	<!-- 경력부분 -->
		<div class="col-md-8 col-sm-12">
			<div class="education">
				<ul class="list-inline">
					<li class="list-inline-item"><h2 class="white">Education</h2></li>
				</ul>
				<div class="education-content"  id="profile3">
					<h4 class="education-title accent">${profile.education_Main_Name }</h4>
						<div class="education-school">
							<h5>${profile.education_Sub_Name }</h5>
						</div>
					<p class="education-description">${profile.education_Content }</p>
				</div>
			</div>
		</div>
		
	<!-- 언어부분 -->
		<div class="col-md-4 col-sm-12">
			<div class="languages" id="profile4">
				<ul class="list-inline">
					<li class="list-inline-item"><h2>Languages</h2></li>
				</ul>
					<ul>
						<li>${profile.languages1 }</li>
						<li>${profile.languages2 }</li>
						<li>${profile.languages3 }</li>
					</ul>
			</div>
		</div>
		
	</div>
</section>

<!-- contact and experience -->
<section class="container">

	
	<div class="row">
	
	<!-- 연락처 -->
		<div class="col-md-4 col-sm-12">
			<div class="contact" id="profile5">
				<ul class="list-inline">
					<li class="list-inline-item"><h2>Contact</h2></li>
				</ul>
				
					<p><i class="fa fa-map-marker"></i> ${profile.contact_Place }</p>
					<p><i class="fa fa-phone"></i> ${profile.contact_Phone }</p>
					<p><i class="fa fa-envelope"></i> ${profile.contact_Mail }</p>
					<p><i class="fa fa-globe"></i><a> ${profile.contact_Page }</a></p>
			</div>
		</div>
		
	<!-- 경험 -->
		<div class="col-md-8 col-sm-12">
			<div class="experience">
				<ul class="list-inline">
					<li class="list-inline-item"><h2 class="white">Experiences</h2></li>
				</ul>

					<div class="experience-content" id="profile6">
						<h4 class="experience-title accent">${profile.experiences_Main_Name }</h4>
						<h5>${profile.experiences_Sub_Name }</h5>
						<p class="education-description">${profile.experiences_Content }</p>
					</div>
			</div>
		</div>
		
	</div>
</section>

<!-- javascript js -->	

<script src="./resources/Profile_Resources/js/jquery.js"></script>
<script src="./resources/Profile_Resources/js/bootstrap.min.js"></script>	

<!-- 
<script src="./resources/Profile_Resources/js/jquery.backstretch.min.js"></script>
 -->
</body>
</html>