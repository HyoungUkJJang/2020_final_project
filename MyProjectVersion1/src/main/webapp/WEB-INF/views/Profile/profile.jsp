<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
	<title>Easy Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="./resources/Profile_Resources/css/font-awesome.min.css">
<!-- 
	<link rel="stylesheet" href="./resources/Profile_Resources/css/bootstrap.min.css">
 -->
	<link rel="stylesheet" href="./resources/Profile_Resources/css/templatemo-blue.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
 	-->
	<link href="https://stackpath.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet" />
	<script src="https://stackpath.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
	
	<script>
		function GOBTN()
			{
				$.ajax({
					type: "POST",
					url: "./profileinput1",
					data: { "Easy_Profile_name" : $('#Easy_Profile_name').val(),
						"Easy_profile_content": $('#Easy_profile_content').val()},
					success: function(data) {
						
						//console.log(data);
						
						var body = document.getElementById('profile1');
						body.innerHTML= "";
						console.log(JSON.stringify(data));
						body.innerHTML += "<ul class=\"list-inline\"><li class=\"list-inline-item\"><h3 class=\"accent\">Easy Profile</h3></li><li class=\"list-inline-item\" style=\"float:right;\">"+
							"<button type=\"button\" class=\"btn btn-link\" data-toggle=\"modal\" data-target=\"#modal1\">Edit</button></li></ul>"+
							"<h2>"+data.easy_Profile_name+"</h2>"+
							"<p>"+data.easy_profile_content+"</p>";
						$('#modal1').modal("hide"); 
					},
					error: function(){
						alert("전송실패");
					}
				});
			}
		</script>
		
		<script>
		function GOBTN2()
		{
			$.ajax({
				type: "POST",
				url: "./profileinput2",
				data: 
				{ 
					"Skill_name1" : $('#Skill_name1').val(),
					"Skill_Value1": $('#Skill_Value1').val(),
					"Skill_name2" : $('#Skill_name2').val(),
					"Skill_Value2": $('#Skill_Value2').val(),
					"Skill_name3" : $('#Skill_name3').val(),
					"Skill_Value3": $('#Skill_Value3').val()
				},
				success: function(data) {
					
					console.log(data); 
					
					var body = document.getElementById('profile2');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					body.innerHTML += "<ul class=\"list-inline\"> <li class=\"list-inline-item\"><h2 class=\"white\">Skills</h2></li> <li class=\"list-inline-item\" style=\"float:right;\">"+
					"<button type=\"button\" class=\"btn btn-link white\" data-toggle=\"modal\" data-target=\"#modal2\">Edit</button></li> </ul>"+
					"<strong>"+data.skill_name1+"</strong>"+"<span class=\"pull-right\">"+data.skill_Value1+"%</span>"+
					"<div class=\"progress\"><div class=\"progress-bar progress-bar-primary\" role=\"progressbar\" aria-valuenow="+data.skill_Value1+" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:"+data.skill_Value1+"%;\"></div></div>"+
					"<strong>"+data.skill_name2+"</strong>"+"<span class=\"pull-right\">"+data.skill_Value2+"%</span>"+
					"<div class=\"progress\"><div class=\"progress-bar progress-bar-primary\" role=\"progressbar\" aria-valuenow="+data.skill_Value2+" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:"+data.skill_Value2+"%;\"></div></div>"+
					"<strong>"+data.skill_name3+"</strong>"+"<span class=\"pull-right\">"+data.skill_Value3+"%</span>"+
					"<div class=\"progress\"><div class=\"progress-bar progress-bar-primary\" role=\"progressbar\" aria-valuenow="+data.skill_Value3+" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:"+data.skill_Value3+"%;\"></div></div>";
									
					$('#modal2').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
	
	
	<script>
		function GOBTN3()
		{
			$.ajax({
				type: "POST",
				url: "./profileinput3",
				data: 
				{ 
					"Education_Main_Name" : $('#Education_Main_Name').val(),
					"Education_Sub_Name": $('#Education_Sub_Name').val(),
					"Education_Content": $('#Education_Content').val()
				},
				success: function(data) {
					
					console.log(data); 
					
					var body = document.getElementById('profile3');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					body.innerHTML += "<h4 class=\"education-title accent\">"+data.education_Main_Name+"</h4> <div class=\"education-school\"> <h5>"+data.education_Sub_Name+"</h5></div>"+
									"<p class=\"education-description\">"+data.education_Content +"</p>";
					$('#modal3').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
	
		<script>
		function GOBTN4()
		{
			$.ajax({
				type: "POST",
				url: "./profileinput4",
				data: 
				{ 
					"Languages1" : $('#Languages1').val(),
					"Languages2": $('#Languages2').val(),
					"Languages3": $('#Languages3').val()
				},
				success: function(data) {
					
					console.log(data); 
					
					var body = document.getElementById('profile4');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					body.innerHTML +=  "<ul class=\"list-inline\"> <li class=\"list-inline-item\"><h2>Languages</h2></li> <li class=\"list-inline-item\" style=\"float:right;\">"+
					"<button type=\"button\" class=\"btn btn-link\" data-toggle=\"modal\" data-target=\"#modal4\">Edit</button></li></ul><ul>"+
					"<li>"+data.languages1+"</li> <li>"+data.languages2+"</li> <li>"+data.languages3+"</li></ul>";
					$('#modal4').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
	
	<script>
		function GOBTN5()
		{
			$.ajax({
				type: "POST",
				url: "./profileinput5",
				data: 
				{ 
					"Contact_Place" : $('#Contact_Place').val(),
					"Contact_Phone": $('#Contact_Phone').val(),
					"Contact_Mail": $('#Contact_Mail').val(),
					"Contact_Page": $('#Contact_Page').val()
				},
				success: function(data) {
					
					console.log(data); 
					
					var body = document.getElementById('profile5');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					body.innerHTML += "<ul class=\"list-inline\"> <li class=\"list-inline-item\"><h2>Contact</h2></li> <li class=\"list-inline-item\" style=\"float:right;\">"+
						"<button type=\"button\" class=\"btn btn-link\" data-toggle=\"modal\" data-target=\"#modal5\">Edit</button></li> </ul>"+
				   	"<p><i class=\"fa fa-map-marker\"></i>"+data.contact_Place+"</p>"+
					"<p><i class=\"fa fa-phone\"></i>"+ data.contact_Phone+"</p>"+
					"<p><i class=\"fa fa-envelope\"></i>"+ data.contact_Mail +"</p>"+
					"<p><i class=\"fa fa-globe\"></i><a>"+data.contact_Page +"</a></p>";
					$('#modal5').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
	
		<script>
		function GOBTN6()
		{
			$.ajax({
				type: "POST",
				url: "./profileinput6",
				data: 
				{ 
					"Experiences_Main_Name" : $('#Experiences_Main_Name').val(),
					"Experiences_Sub_Name": $('#Experiences_Sub_Name').val(),
					"Experiences_Content": $('#Experiences_Content').val()
				},
				success: function(data) {
					
					console.log(data); 
					
					var body = document.getElementById('profile6');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					body.innerHTML += "<h4 class=\"education-title accent\">"+data.experiences_Main_Name+"</h4> <div class=\"education-school\"> <h5>"+data.experiences_Sub_Name+"</h5></div>"+
					"<p class=\"education-description\">"+data.experiences_Content +"</p>";
					$('#modal6').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
		<script>
		function GOBTN7()
		{
			$.ajax({
				type: "POST",
				url: "./profilepicture",
				data: 
				{ 
					"userimg" : $('#userimg').val()
				}, 
				processData: false, 
				contentType: false,
				success: function(data) {
					
					console.log(data); 
					
					//var body = document.getElementById('profile6');
					body.innerHTML= "";
					console.log(JSON.stringify(data));
					//body.innerHTML += 
					$('#modal7').modal("hide");	
				},
				error: function(){
					alert("전송실패");
				}
			});
		}
	</script>
</head>

<!-- ------------------------------------------------------------MODAL----------------------------------------------------------------------------------------- -->
<!-- 모달1번 -->

<div class="modal fade" id="modal1" data-backdrop="flase" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">Simple Profile</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	         <input type="text" value=${profile.easy_Profile_name } class="form-control" id="Easy_Profile_name" name="Easy_Profile_name" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="제목"><br>
	        <textarea class="form-control"  id="Easy_profile_content" name="Easy_profile_content" aria-label="With textarea" placeholder="내용"></textarea>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" onclick="GOBTN()" class="btn btn-primary">Save</button>
	      </div>
    </div>
  </div>
</div>


<!-- 모달2번 -->
<div class="modal fade" id="modal2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Skills</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div  class="modal-body">
      	<div class="form-inline">
				<input type="text" id="Skill_name1" value=${profile.skill_name1 } class="form-control " name="Skill_name1" placeholder="ex) Java">
				<input type="text" id="Skill_Value1" value=${profile.skill_Value1 } class="form-control " name="Skill_Value1" placeholder="ex) 85">
		</div>
      	<div class="form-inline">
				<input type="text" id="Skill_name2" value=${profile.skill_name2 } class="form-control" name="Skill_name2" placeholder="스킬2">
				<input type="text" id="Skill_Value2" value=${profile.skill_Value2 } class="form-control" name="Skill_Value2" placeholder="1~100을 입력해주세요" >
		</div>
		 <div class="form-inline">
				<input type="text" id="Skill_name3" value=${profile.skill_name3 } class="form-control" name="Skill_name3" placeholder="스킬3">
				<input type="text" id="Skill_Value3" value=${profile.skill_Value3 } class="form-control" name="Skill_Value3" placeholder="1~100을 입력해주세요" >
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="GOBTN2()" >Save</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달3번 -->
<div class="modal fade" id="modal3" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Education</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="Education_Main_Name" name="Education_Main_Name" placeholder="메인제목"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="Education_Sub_Name" name="Education_Sub_Name" placeholder="서브제목"><br>
        <textarea class="form-control" aria-label="With textarea"  name="Education_Content" id="Education_Content" placeholder="내용"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="GOBTN3()">Save</button>
      </div>
    </div>
  </div>
</div>


<!-- 모달4번 -->
<div class="modal fade" id="modal4" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Simple Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Languages1" id="Languages1" placeholder="ex) 한국어"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Languages2" id="Languages2" placeholder="ex) 영어"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Languages3" id="Languages3" placeholder="ex) 러시아어"><br>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="GOBTN4()">Save</button>
      </div>
    </div>
  </div>
</div>


<!-- 모달5번 -->
<div class="modal fade" id="modal5" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Simple Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Contact_Place" id="Contact_Place" placeholder="Location"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Contact_Mail"  id="Contact_Mail"   placeholder="Mail"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Contact_Phone" id="Contact_Phone" placeholder="Phone"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Contact_Page"  id="Contact_Page" placeholder="Git"><br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  onclick="GOBTN5()">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달6번 -->
<div class="modal fade" id="modal6" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Education</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Experiences_Main_Name" id="Experiences_Main_Name" placeholder="메인제목"><br>
         <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="Experiences_Sub_Name" id="Experiences_Sub_Name" placeholder="서브제목"><br>
        <textarea class="form-control" aria-label="With textarea" name="Experiences_Content" id="Experiences_Content" placeholder="내용"></textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="GOBTN6()">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달7번 -->
<form  enctype="multipart/form-data" method="post" action="./profilepicture">
<div class="modal fade" id="modal7" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">프로필 사진 변경하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<input type="file" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="userimg" id="userimg" ><br>
       </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
</form>
<!-- ---------------------------------------------------------------END MODAL----------------------------------------------------------------------------- -->


<body>
<!-- header section -->
<header>
	<div class="containeruk">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<a href="#" data-toggle="modal" data-target="#modal7">
				<img src="./resources/myimage/${obj.userimg }" class="imguk img-circleuk tm-borderuk" alt="templatemo easy profile">
				</a>
				<h4 class="tm-title bold">${obj.username }님의 프로필</h3>
				<h5 class="bold">${obj.usermajor } 개발자</h4>

			</div>
		</div>
	</div>
</header>

<!-- about and skills section -->
<section class="container">

	<c:if test="${obj.secret == 0 }">
		<form action="./secretchange" method="post">
			<input type="hidden" name="userid" value=${obj.userid }>
			<input type="hidden" name="secret" value=${obj.secret }>
			<button type="submit"  class="btn btn-dark">프로필 비공개로 전환하기</button>
		</form>
	</c:if>
	
	<c:if test="${obj.secret == 1 }">
		<form action="./secretchange" method="post">
			<input type="hidden" name="userid" value=${obj.userid }>
			<input type="hidden" name="secret" value=${obj.secret }>
			<button type="submit" class="btn btn-success">프로필 공개로 전환하기</button>
		</form>
	</c:if>
	
	<div class="row">
	
	<!-- 이지프로필 부분 -->
		<div class="col-md-6 col-sm-12">
			<div id="profile1" class="about">
				<ul class="list-inline">
					<li class="list-inline-item"><h3 class="accent">Easy Profile</h3></li>
					<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#modal1">Edit</button></li>
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
				<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link white" data-toggle="modal" data-target="#modal2">Edit</button></li>
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
					<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link white" data-toggle="modal" data-target="#modal3">Edit</button></li>
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
					<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#modal4">Edit</button></li>
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
					<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#modal5">Edit</button></li>
				</ul>
				
					<p><i class="fa fa-map-marker"></i> ${profile.contact_Place }</p>
					<p><i class="fa fa-phone"></i> ${profile.contact_Phone }</p>
					<p><i class="fa fa-envelope"></i> ${profile.contact_Mail }</p>
					<p><i class="fa fa-globe"></i> ${profile.contact_Page }</p>
			</div>
		</div>
		
	<!-- 경험 -->
		<div class="col-md-8 col-sm-12">
			<div class="experience">
				<ul class="list-inline">
					<li class="list-inline-item"><h2 class="white">Experiences</h2></li>
					<li class="list-inline-item" style="float:right;"><button type="button" class="btn btn-link white" data-toggle="modal" data-target="#modal6">Edit</button></li>
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

<!-- footer section -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<p>Copyright &copy; 2084 Your Easy Profile</p>
				<ul class="social-icons">
					<li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-google-plus"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-dribbble"></a></li>
					<li><a href="#" class="fa fa-github"></a></li>
					<li><a href="#" class="fa fa-behance"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

<!-- javascript js -->	

<script src="./resources/Profile_Resources/js/jquery.js"></script>
<script src="./resources/Profile_Resources/js/bootstrap.min.js"></script>	

<!-- 
<script src="./resources/Profile_Resources/js/jquery.backstretch.min.js"></script>
 -->
</body>
