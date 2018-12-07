<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>	
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/test.css?ver=1.5">
	
		<style>

.nav-item {
	border-bottom: 1px solid black;
	height: 60px;
}

.nav-item a:hover {
	color: #00ffcc
}

.navbar-brand {
	font-size: 30px;
}

/*  .navbar {
	background-color: rgb(49, 49, 49)
}  */
a {
	color: #ffffff;
	
}

.nav-pills .nav-link.active {
	color: #fff;
	background-color: #00ffcc;
}
.bg-light {
    background-color: #000000!important;
}
.btn-outline-secondary {
    color: #6c757d;
    background-color: #fdfdfd;
    background-image: none;
    border-color: #000000;
   
}
.btn-outline-secondary {
    color: #fffefe;
    background-color: #2a2b2b;
    background-image: none;
    border-color: #000000;
    position:relative;
    z-index:0;
    
}
/* 테이블 */
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			padding: 10px;
			border-bottom: 1px solid #CD5C5C;
		}
		tr:hover { background-color: #404040; }
/* 드롭다운 메뉴 */
ul  {
	list-style-type: none ;
	margin: 0 ;
	padding: 0 ;
	overflow: hidden ;
	
}
em{
font-weight: bold ;
color:black;
font-style: normal;
}
/*듣기/재생목록/내앨범/다운 */
/* <img src="./img/newimg/play-button.png"><img src="./img/newimg/add.png"><img src="./img/newimg/folderplus.png"><img src="./img/newimg/download.png"> */


/*플레이리스트 이미지*/
#playlistimg{width:50px; height:50px;}
/* ul.category {background-color: #333 ;} */

 .newMusicmenu {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	

}

li a:hover, .dropdown:hover .dropbtn {
	
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: fixed;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 2;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	
	display: block;
	text-align: left;
	
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.show {
	display: block;
	
}
/* 아이콘 png 설정*/
.icon {
    margin-left: 10px;
    margin-right: 10px;

}

</style>
<script type="text/javascript">
$(function() {
	$.ajax({
		type:"get",
		url:"./details/newchart.jsp",
		
		success: function(data) {
			$('#chartbody').html(data);
		}//success
		}); //ajax
		
		
	$('#newer button').click(function() {
		var buttonval= $(this).val();
		
		
		if(buttonval=="total"){
			
		$.ajax({
			type:"get",
			url:"./details/newchart2.jsp",
			
			success: function(data) {
				
				
				$('#chartbody').html(data);
			}//success
			}); //ajax
		} else if (buttonval=="newest"){
			
			$.ajax({
				type:"get",
				url:"./details/newchart.jsp",
				
				success: function(data) {
					
					
					$('#chartbody').html(data);
				}//success
				}); //ajax
			}  
	});
	
	
});
 
</script>
</head>
<body>
	<br>
				<div class="container-fluid pgtitle" style="padding-left: 0px;">
					<!-- 	드롭다운 -->
					<ul class="category">
						<li class="newMusicmenu"><a class="active" href="#home" >최신음악</a></li>
						<li class="newMusicmenu"><a href="javascript:void(0)"
							class="dropbtn" value="btnNation" onclick="myFunction()" class="btnNation"><img src="./img/newimg/globe.png" alt="">전체국가 <img src="./img/newimg/down-arrow.png" ></a>
							<div class="dropdown-content" id="myDropdown">
								<a href="#"><img src="https://file.bugsm.co.kr/wbugs/api/flag/square/KR.png" alt="">한국</a>
							 	<a href="#"><img src="https://file.bugsm.co.kr/wbugs/api/flag/square/US.png" alt="">미국</a> 
							 	<a href="#"><img src="https://file.bugsm.co.kr/wbugs/api/flag/square/GB.png" alt="">영국</a>
							</div>
							</li>
							
							
<li class="newMusicmenu dropdown"><a href="javascript:void(0)"
	class="dropbtn"  onclick="myFunction2()">전체장르 <img src="./img/newimg/down-arrow.png" ></a>
		<div class="dropdown-content" id="myDropdown2">
			<ul class="category">
			<li style="display: inline-block ; vertical-align:top ;">
				<em class="all"  style="vertical-align:top ;">전체</em>
				<ul style="text-align: center; border-top: 3px solid red;">
					<li ><a href="https://music.bugs.co.kr/newest/track/totalpicked" class="hyrend selected">전체 장르</a></li>
					<li ><a href="https://music.bugs.co.kr/newest/track/kpoppicked" class="hyrend">국내 전체 장르</a></li>
					<li ><a href="https://music.bugs.co.kr/newest/track/poppicked" class="hyrend">해외 전체 장르</a></li>
				</ul>
			</li>
			<li style="display: inline-block; vertical-align:top ;">
				<em class="domestic" style="vertical-align:top ;">국내</em>
				<ul style="text-align: center; border-top: 3px solid #6699ff;" class="listGenre">
					<li type="nbdp"><a href="https://music.bugs.co.kr/newest/track/nbdp" data-category="domestic" class="hyrend">발라드/댄스/팝</a></li>
					<li type="nrh"><a href="https://music.bugs.co.kr/newest/track/nrh" data-category="domestic" class="hyrend">랩/힙합</a></li>
					<li type="nrs"><a href="https://music.bugs.co.kr/newest/track/nrs" data-category="domestic" class="hyrend">알앤비/소울</a></li>
					<li type="nkelec"><a href="https://music.bugs.co.kr/newest/track/nkelec" data-category="domestic" class="hyrend">일렉트로닉</a></li>
					<li type="nkrock"><a href="https://music.bugs.co.kr/newest/track/nkrock" data-category="domestic" class="hyrend">락/메탈</a></li>
					<li type="nkjazz"><a href="https://music.bugs.co.kr/newest/track/nkjazz" data-category="domestic" class="hyrend">재즈</a></li>
					<li type="nindie"><a href="https://music.bugs.co.kr/newest/track/nindie" data-category="domestic" class="hyrend">인디</a></li>
					<li type="ntrot"><a href="https://music.bugs.co.kr/newest/track/ntrot" data-category="domestic" class="hyrend">성인가요</a></li>
				</ul>
			</li>
			<li style="display: inline-block; vertical-align:top ;">
				<em class="overseas" style="vertical-align:top ;">해외</em>
				<ul style="text-align: center ; border-top: 3px solid #ff9966" class="listGenre">
					<li type="nfpop"><a href="https://music.bugs.co.kr/newest/track/nfpop" data-category="overseas" class="hyrend">팝</a></li>
					<li type="nfhiphop"><a href="https://music.bugs.co.kr/newest/track/nfhiphop" data-category="overseas" class="hyrend">랩/힙합</a></li>
					<li type="nfrnb"><a href="https://music.bugs.co.kr/newest/track/nfrnb" data-category="overseas" class="hyrend">알앤비/소울</a></li>
					<li type="nfelec"><a href="https://music.bugs.co.kr/newest/track/nfelec" data-category="overseas" class="hyrend">일렉트로닉</a></li>
					<li type="nfrock"><a href="https://music.bugs.co.kr/newest/track/nfrock" data-category="overseas" class="hyrend">락</a></li>
					<li type="nfmetal"><a href="https://music.bugs.co.kr/newest/track/nfmetal" data-category="overseas" class="hyrend">메탈</a></li>
					<li type="nfjazz"><a href="https://music.bugs.co.kr/newest/track/nfjazz" data-category="overseas" class="hyrend">재즈</a></li>
				</ul>
			</li>
			<li style="display: inline-block; vertical-align:top ;">
				<em class="etc" style="vertical-align:top ;">기타</em>
				<ul style="text-align: center ; border-top: 3px solid #00cc99" class="listGenre">
					<li type="nost"><a href="https://music.bugs.co.kr/newest/track/nost" data-category="etc" class="hyrend">OST</a></li>
					<li type="nclassic"><a href="https://music.bugs.co.kr/newest/track/nclassic" data-category="etc" class="hyrend">클래식</a></li>
					<li type="nnewage"><a href="https://music.bugs.co.kr/newest/track/nnewage" data-category="etc" class="hyrend">뉴에이지</a></li>
					<li type="njpop"><a href="https://music.bugs.co.kr/newest/track/njpop" data-category="etc" class="hyrend">J-POP</a></li>
					<li type="nwpop"><a href="https://music.bugs.co.kr/newest/track/nwpop" data-category="etc" class="hyrend">월드뮤직</a></li>
					<li type="nkclassic"><a href="https://music.bugs.co.kr/newest/track/nkclassic" data-category="etc" class="hyrend">국악</a></li>
					<li type="nccm"><a href="https://music.bugs.co.kr/newest/track/nccm" data-category="etc" class="hyrend">CCM/종교&emsp;</a></li>
					<li type="nchildren"><a href="https://music.bugs.co.kr/newest/track/nchildren" data-category="etc" class="hyrend">어린이</a></li>
					<li type="nprenatal"><a href="https://music.bugs.co.kr/newest/track/nprenatal" data-category="etc" class="hyrend">태교</a></li>
					<li type="ncarol"><a href="https://music.bugs.co.kr/newest/track/ncarol" data-category="etc" class="hyrend">캐롤</a></li>
					</ul>
				</ul>
				</div>
			</li>
		</ul>
		<!-- 메뉴바 다음영역 -->
	<nav class="navbar navbar-light bg-light" style="padding-left: 0px;">
  <form class="form-inline" id="newer">
	<button class="btn btn-outline-secondary" type="button" value="newest">최신</button>
    <button class="btn btn-outline-secondary" type="button" value="total">전체</button>
  </form>
</nav>
	
					</div>	
					<div class= "nextmenu" >  <!-- style="float:right;" -->
			<button class="btn btn-default"><img src="./img/newimg/play-button.png"> 듣기 </button>
			<button class="btn btn-default"><img src="./img/newimg/add.png"> 재생목록에 추가 </button>
			<button class="btn btn-default"><img src="./img/newimg/folderplus.png"> 내 앨범에 담기 </button>
			<button class="btn btn-default"><img src="./img/newimg/download.png"> 다운로드</button>
			<button class="btn btn-default"><img src="./img/newimg/play-button.png"> 전체듣기(재생목록 추가) </button>
			<button class="btn btn-default"><img src="./img/newimg/repeat.png"> 전체듣기(재생목록 교체) </button>
		</div>
		<div id="chartbody"></div>
</div>
					
		
		
		
<!--  -->
	
	
					<script>
				
						/* When the user clicks on the button, 
						 toggle between hiding and showing the dropdown content */
						 $("#allCheck").click(function() {
							    if($(this).is(':checked')) {
							        $("input[name=selectm]").attr("checked", "checked");
							    } else {
							        $("input[name=selectm]").attr("checked", false);
							    }
							});


							

						function myFunction() {

							var dropdowns = document
									.getElementsByClassName("dropdown-content");
							for (var d = 0; d < dropdowns.length; d++) {
								var openDropdown = dropdowns[d];
								if (openDropdown.classList.contains('show')) {
									openDropdown.classList.remove('show');
								}
							}
							var addr=$(this).val();
							document.getElementById("myDropdown").classList
									.toggle("show");
						}
						function myFunction2() {

							var dropdowns = document
									.getElementsByClassName("dropdown-content");
							for (var d = 0; d < dropdowns.length; d++) {
								var openDropdown = dropdowns[d];
								if (openDropdown.classList.contains('show')) {
									openDropdown.classList.remove('show');
								}
							}
							var addr=$(this).val();
							document.getElementById("myDropdown2").classList
									.toggle("show");
						}

						
						// Close the dropdown if the user clicks outside of it
						window.onclick = function(e) {
							if (!e.target.matches('.dropbtn')) {

								var dropdowns = document
										.getElementsByClassName("dropdown-content");
								for (var d = 0; d < dropdowns.length; d++) {
									var openDropdown = dropdowns[d];
									if (openDropdown.classList.contains('show')) {
										openDropdown.classList.remove('show');
									}
								}
							}
						}
					</script>


					<!--드롭다운  -->
</body>
</html>