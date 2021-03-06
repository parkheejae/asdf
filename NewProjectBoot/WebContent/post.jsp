<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="./css/test.css?ver=1.5">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<style>
/* <!-- 민트 포스트 생성 속성들 --!> */
.nav-items a:hover {
	color: #00ffcc
}


ul.mylist {
	margin: 0px;
	padding: 3px;
	width: 100%;
	border-bottom: 1px solid lightgray;
	text-align: center;
}

ul.mylist.active {
	color: #fff;
	background-color: #00ffcc;
}

ul.mylist li {
	text-align: center;
	width: 350px;
	border-right: 1px solid lightgray;
}

ul.mylist li:hover {
	background-color: #00ffcc;
}

.hover {
	color: #fff;
	background-color: #00ffcc;
}

.datecss {
	text-align: center;
	padding: 70px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		//메뉴 접고열기 기능
		$('.fold').click(function() {
			$('.menus').hide();
			$('.fold').hide();
			$('.fold2').show();
		});//click

		$('.fold2').click(function() {
			$('.menus').show();
			$('.fold2').hide();
			$('.fold').show();
		});//click

		//메뉴클릭시 색고정 진행중
		$('.inlist').each(function() {
			$(this).click(function() {
				 $(this).addClass("hover");
				 $(this).siblings().removeClass("hover"); //siblings:형제요소들, removeClass:선택된 클래스의 특성을 없앰
			});//click
		});//each
		

		$('.date').addClass('datecss');

		//현재날짜가 입력됨
		var d = new Date();
		$('.day').html(d.getDate());
		$('.yearMonth').html(d.getFullYear() + "." + d.getMonth());

		//좋아요기능 전부다적용되는거 귀찮아서 하드코딩
		var hnumber = 0;
		
			$('.heart1:eq(0)').click(function() {
				$(this).hide();
				$('.heart2:eq(0)').show();
				$('.hnum:eq(0)').html(hnumber=+1).css('color', 'white');
			});//click1
		
		    $('.heart2:eq(0)').click(function() {
			   $(this).hide();
			   $('.heart1:eq(0)').show();
			   $('.hnum:eq(0)').html(hnumber-1).css('color', 'white');
		    });//click2
		    
		    $('.heart1:eq(1)').click(function() {
				$(this).hide();
				$('.heart2:eq(1)').show();
				$('.hnum:eq(1)').html(hnumber=+1).css('color', 'white');
			});//click1
		
		
		    $('.heart2:eq(1)').click(function() {
			   $(this).hide();
			   $('.heart1:eq(1)').show();
			   $('.hnum:eq(1)').html(hnumber-1).css('color', 'white');
		    });//click2
		    
		    $('.heart1:eq(2)').click(function() {
				$(this).hide();
				$('.heart2:eq(2)').show();
				$('.hnum:eq(2)').html(hnumber=+1).css('color', 'white');
			});//click1
		
		
	
		    $('.heart2:eq(2)').click(function() {
			   $(this).hide();
			   $('.heart1:eq(2)').show();
			   $('.hnum:eq(2)').html(hnumber-1).css('color', 'white');
		    });//click2
		    
		    $('.heart1:eq(3)').click(function() {
				$(this).hide();
				$('.heart2:eq(3)').show();
				$('.hnum:eq(3)').html(hnumber=+1).css('color', 'white');
			});//click1
		
		
	
		    $('.heart2:eq(3)').click(function() {
			   $(this).hide();
			   $('.heart1:eq(3)').show();
			   $('.hnum:eq(3)').html(hnumber-1).css('color', 'white');
		    });//click2

		//검색기능
		$('#Search').keyup(function() {
			var k = $('#Search').val();
			$(".post").hide();
			var temp = $(".post > .postarticle:contains('" + k + "')");
			$(temp).parent().show();
		}); //텍스트필드 Search
		
		

	}); //ready
</script>
</head>
<body>
					<br>

				<div class="container-fluid">
					<!-- 민트포스트 헤더 -->
					<div class="row" style="border-bottom: 2px solid #00ffcc">
						<div class="col-sm-2">
							<h2>민트 포스트</h2>
						</div>
						<div class="col-sm-8"></div>
						<div class="col-sm-2" style="text-align: right; margin-top: 15px;">
							<h6 style="color: lightgray;"><!-- 합친후 홈링크 변경해줍시다. -->
								<a href="http://localhost:8888/Test/index2.html">홈></a>민트포스트
							</h6>
						</div>
					</div>
					<!-- 메뉴 -->
					<div class="menu" style="padding: 40px;">
						<!-- 메뉴  헤더 -->
						<div class="menuheader">
							<div>
								<ul class="nav nav-tabs" style="background: gray;">
									<li class="nav-items"><a class="nav-link active"
										data-toggle="pill" href="#now">연재중 포스트</a></li>
									<li class="nav-items"><a class="nav-link"
										data-toggle="pill" href="#end">완결된 포스트</a></li>
									<li style="padding-top: 6px; padding-left: 1140px;"><a
										href="#"><Button type="button" class="fold"
												style="background: gray; border: 1px solid white">
												<i class="fa fa-angle-up fold" style="font-size: 24px">
												</i>
											</Button>
											<Button type="button" class="fold2"
												style="background: gray; border: 1px solid white; display: none;">
												<i class="fa fa-angle-down fold2" style="font-size: 24px"></i>
											</Button></a></li>
								</ul>
							</div>
						</div>
						<!-- 메뉴들 -->
						<div class="menus" id="now">
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#" class="active">전체</a></li>
								<li class="inlist"><a href="#">스페셜</a></li>
								<li class="inlist"><a href="#">음악탐구생활</a></li>
								<li class="inlist" style="border: none;"><a href="#">클래식
										공감</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#">MM JAZZ</a></li>
								<li class="inlist"><a href="#">이주의 앨범</a></li>
								<li class="inlist"><a href="#">대중가요 탐방</a></li>
								<li style="border: none;"><a href="#">팝 히스토리</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#">스트릿콜라보</a></li>
								<li class="inlist"><a href="#">핫플힙플</a></li>
								<li class="inlist"><a href="#">연애공감송</a></li>
								<li class="inlist" style="border: none;"><a href="#">지니뮤직
										챌린지</a></li>
							</ul>

						</div>

						<div class="menus2 tab-pane fade" id="end" style="display: none;">
							<ul class="nav justify-content-center mylist">
								<li><a href="#" class="active">2017 MMA</a></li>
								<li><a href="#">스쿨 오브 록</a></li>
								<li><a href="#">별님의 선택</a></li>
								<li style="border: none;"><a href="#">오프더레코드</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li><a href="#">힙합플레이야</a></li>
								<li><a href="#">작가 스토리</a></li>
								<li><a href="#">공감카툰</a></li>
								<li style="border: none;"><a href="#">재즈월드</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li><a href="#">재즈섬싱엘스</a></li>
								<li><a href="#">락쇼</a></li>
								<li><a href="#">릴레이 인터뷰</a></li>
								<li style="border: none;"><a href="#">블로거 뮤직</a></li>
							</ul>
						</div>
						<br>
						<!-- 포스트 헤더 -->
						<div style="border-bottom: 1px solid #00ffcc;">
							<h4>전체</h4>
						</div>
						<!-- 포스트 내용 시작 -->
						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- 날짜  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- 그림 -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg2.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- 기사 -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>싱어송라이터 김슬기 [Blue eyes] 제작기</b>
								</h6>
								<p>
									'사실은 좋아해', '위로', '아빠이야기' 등 마치 "일기장"처럼 누구나 공감할 일상을 따뜻한 어쿠스틱 음악로
									담아냈던 김슬기가 유난히 무더운 2018년 여름! 청량함 가득한 트로피컬 사운드가 돋보이는 싱글 [Blue
									eyes]를 발매했습니다. 7개월 만의 신보를 위해 설레는 마음으로 준비에 임했다는 김슬기. 그가 직접 소개하는
									프로필 촬영 현장 에피소드와 발매 인터뷰를 통해 노래로는 다 전하지 못했던 이야기들을 만나보세요. <br>
									<br>
								<p></p>
								<i class="fa fa-heart-o heart1" style="color: red;"></i><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">댓글</span>
								<span>조회</span>
							</div>
						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- 날짜  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- 그림 -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg1.png"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- 기사 -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>10cm '매트리스' 뮤직비디오 촬영 현장</b>
								</h6>
								<p>
									정식 발매 전부터 유튜브 등에 "미발매 신곡"이라는 제목으로 올라왔던 10cm의 새로운 트랙이 드디어 음원으로
									공개되었습니다. 네모난 방 안에서 홀로 앉아 들려주는 다양한 이야기들을 담았던 정규 4집과는 달리, 이번
									싱글에서는 설렘이 가득한 두 사람의 방을 그려보았다고 하는데요. <br> <br>
								<p></p><span>
								<i class="fa fa-heart-o heart1" style="color: red;"></i></span><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">댓글</span>
								<span>조회</span>
							</div>

						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- 날짜  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- 그림 -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg3.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- 기사 -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>세상 밖으로, 사이먼 도미닉</b>
								</h6>
								<p>
									누구보다 핫한, 모든 사람들의 주목을 받는 래퍼였던 그. 그러나 그의 신보를 만나기 위해서는 2년이라는 긴 시간을
									기다려야 했는데요. 긴 공백기 동안 만족할 만한 음악을 만들기 위해 DARK ROOM에서 작업에만 몰두했다는 그는
									2018년 6월, 드디어 암실에서 벗어나 고통과 땀과 눈물이 담긴 [DARK ROOM]을 들고 다시 우리 곁으로
									돌아왔습니다. <br> <br>
								<p></p>
								<i class="fa fa-heart-o heart1" style="color: red;"></i><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">댓글</span>
								<span>조회</span>
							</div>
						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- 날짜  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- 그림 -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg4.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- 기사 -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>조현아 '고백' 뮤직비디오 촬영 현장</b>
								</h6>
								<p>
									4월, 첫 솔로 싱글에 이어 조현아의 두 번째 솔로 싱글 [고백]이 나왔습니다! 제목부터 설레임이 가득한 조현아의
									'고백'은 조현아 작곡, 작사, 편곡에 뮤직비디오까지 직접! 출연한 곡인데요. 활기 넘치는 녹음 현장부터
									사랑스러운 뮤직비디오 현장까지-!! 조현아 '고백' 작업기를 멜론매거진에서 공개합니다! <br> <br>
								<p></p>
								<span class="heart3"><i class="fa fa-heart-o heart1" style="color: red;"></i></span><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">댓글</span>
								<span>조회</span>
							</div>
						</div>

					</div>

					<div class="page-nav" style="text-align: center;">
						<a href="#" onclick="alert('첫 페이지 블록 입니다.');return false;"
							class="first"><span><i class="fa fa-angle-double-left"></i></span></a> <a href="#"
							onclick="alert('첫 페이지 입니다.');return false;" class="prev"><span><i class="fa fa-angle-left"></i></span></a> <a class="pagenum" href="#" onclick="javascript:void(0);"
							class="current">1</a> <a class="pagenum" href="?ctid=0&pg=2">2</a> <a class="pagenum"
							href="?ctid=0&pg=3">3</a> <a class="pagenum" href="?ctid=0&pg=4">4</a> <a class="pagenum"
							href="?ctid=0&pg=5">5</a> <a class="pagenum" href="?ctid=0&pg=6">6</a> <a
							href="?ctid=0&pg=7">7</a> <a class="pagenum" href="?ctid=0&pg=8">8</a> <a class="pagenum"
							href="?ctid=0&pg=9">9</a> <a class="pagenum" href="?ctid=0&pg=10">10</a> <a class="pagenum"
							href="?ctid=0&pg=2" class="next"><span><i class="fa fa-angle-right"></i></span></a> <a
							href="?ctid=0&pg=11" class="end"><span><i class="fa fa-angle-double-right"></i></span></a>
					</div>
				</div>
				<!-- 위에까지 민트포스트 -->
</body>
</html>