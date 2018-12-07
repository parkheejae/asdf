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
/* <!-- ��Ʈ ����Ʈ ���� �Ӽ��� --!> */
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
		//�޴� ������ ���
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

		//�޴�Ŭ���� ������ ������
		$('.inlist').each(function() {
			$(this).click(function() {
				 $(this).addClass("hover");
				 $(this).siblings().removeClass("hover"); //siblings:������ҵ�, removeClass:���õ� Ŭ������ Ư���� ����
			});//click
		});//each
		

		$('.date').addClass('datecss');

		//���糯¥�� �Էµ�
		var d = new Date();
		$('.day').html(d.getDate());
		$('.yearMonth').html(d.getFullYear() + "." + d.getMonth());

		//���ƿ��� ���δ�����Ǵ°� �����Ƽ� �ϵ��ڵ�
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

		//�˻����
		$('#Search').keyup(function() {
			var k = $('#Search').val();
			$(".post").hide();
			var temp = $(".post > .postarticle:contains('" + k + "')");
			$(temp).parent().show();
		}); //�ؽ�Ʈ�ʵ� Search
		
		

	}); //ready
</script>
</head>
<body>
					<br>

				<div class="container-fluid">
					<!-- ��Ʈ����Ʈ ��� -->
					<div class="row" style="border-bottom: 2px solid #00ffcc">
						<div class="col-sm-2">
							<h2>��Ʈ ����Ʈ</h2>
						</div>
						<div class="col-sm-8"></div>
						<div class="col-sm-2" style="text-align: right; margin-top: 15px;">
							<h6 style="color: lightgray;"><!-- ��ģ�� Ȩ��ũ �������ݽô�. -->
								<a href="http://localhost:8888/Test/index2.html">Ȩ></a>��Ʈ����Ʈ
							</h6>
						</div>
					</div>
					<!-- �޴� -->
					<div class="menu" style="padding: 40px;">
						<!-- �޴�  ��� -->
						<div class="menuheader">
							<div>
								<ul class="nav nav-tabs" style="background: gray;">
									<li class="nav-items"><a class="nav-link active"
										data-toggle="pill" href="#now">������ ����Ʈ</a></li>
									<li class="nav-items"><a class="nav-link"
										data-toggle="pill" href="#end">�ϰ�� ����Ʈ</a></li>
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
						<!-- �޴��� -->
						<div class="menus" id="now">
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#" class="active">��ü</a></li>
								<li class="inlist"><a href="#">�����</a></li>
								<li class="inlist"><a href="#">����Ž����Ȱ</a></li>
								<li class="inlist" style="border: none;"><a href="#">Ŭ����
										����</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#">MM JAZZ</a></li>
								<li class="inlist"><a href="#">������ �ٹ�</a></li>
								<li class="inlist"><a href="#">���߰��� Ž��</a></li>
								<li style="border: none;"><a href="#">�� �����丮</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li class="inlist"><a href="#">��Ʈ���ݶ�</a></li>
								<li class="inlist"><a href="#">��������</a></li>
								<li class="inlist"><a href="#">���ְ�����</a></li>
								<li class="inlist" style="border: none;"><a href="#">���Ϲ���
										ç����</a></li>
							</ul>

						</div>

						<div class="menus2 tab-pane fade" id="end" style="display: none;">
							<ul class="nav justify-content-center mylist">
								<li><a href="#" class="active">2017 MMA</a></li>
								<li><a href="#">���� ���� ��</a></li>
								<li><a href="#">������ ����</a></li>
								<li style="border: none;"><a href="#">���������ڵ�</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li><a href="#">�����÷��̾�</a></li>
								<li><a href="#">�۰� ���丮</a></li>
								<li><a href="#">����ī��</a></li>
								<li style="border: none;"><a href="#">�������</a></li>
							</ul>
							<ul class="nav justify-content-center mylist">
								<li><a href="#">����̿���</a></li>
								<li><a href="#">����</a></li>
								<li><a href="#">������ ���ͺ�</a></li>
								<li style="border: none;"><a href="#">��ΰ� ����</a></li>
							</ul>
						</div>
						<br>
						<!-- ����Ʈ ��� -->
						<div style="border-bottom: 1px solid #00ffcc;">
							<h4>��ü</h4>
						</div>
						<!-- ����Ʈ ���� ���� -->
						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- ��¥  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- �׸� -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg2.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- ��� -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>�̾�۶����� �载�� [Blue eyes] ���۱�</b>
								</h6>
								<p>
									'����� ������', '����', '�ƺ��̾߱�' �� ��ġ "�ϱ���"ó�� ������ ������ �ϻ��� ������ ����ƽ ���Ƿ�
									��Ƴ´� �载�Ⱑ ������ ������ 2018�� ����! û���� ������ Ʈ������ ���尡 �����̴� �̱� [Blue
									eyes]�� �߸��߽��ϴ�. 7���� ���� �ź��� ���� ������ �������� �غ� ���ߴٴ� �载��. �װ� ���� �Ұ��ϴ�
									������ �Կ� ���� ���Ǽҵ�� �߸� ���ͺ並 ���� �뷡�δ� �� ������ ���ߴ� �̾߱���� ����������. <br>
									<br>
								<p></p>
								<i class="fa fa-heart-o heart1" style="color: red;"></i><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">���</span>
								<span>��ȸ</span>
							</div>
						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- ��¥  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- �׸� -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg1.png"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- ��� -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>10cm '��Ʈ����' �������� �Կ� ����</b>
								</h6>
								<p>
									���� �߸� ������ ��Ʃ�� � "�̹߸� �Ű�"�̶�� �������� �ö�Դ� 10cm�� ���ο� Ʈ���� ���� ��������
									�����Ǿ����ϴ�. �׸� �� �ȿ��� Ȧ�� �ɾ� ����ִ� �پ��� �̾߱���� ��Ҵ� ���� 4������ �޸�, �̹�
									�̱ۿ����� ������ ������ �� ����� ���� �׷����Ҵٰ� �ϴµ���. <br> <br>
								<p></p><span>
								<i class="fa fa-heart-o heart1" style="color: red;"></i></span><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">���</span>
								<span>��ȸ</span>
							</div>

						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- ��¥  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- �׸� -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg3.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- ��� -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>���� ������, ���̸� ���̴�</b>
								</h6>
								<p>
									�������� ����, ��� ������� �ָ��� �޴� ���ۿ��� ��. �׷��� ���� �ź��� ������ ���ؼ��� 2���̶�� �� �ð���
									��ٷ��� �ߴµ���. �� ����� ���� ������ ���� ������ ����� ���� DARK ROOM���� �۾����� �����ߴٴ� �״�
									2018�� 6��, ���� �Ͻǿ��� ��� ����� ���� ������ ��� [DARK ROOM]�� ��� �ٽ� �츮 ������
									���ƿԽ��ϴ�. <br> <br>
								<p></p>
								<i class="fa fa-heart-o heart1" style="color: red;"></i><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">���</span>
								<span>��ȸ</span>
							</div>
						</div>

						<div class="row post" style="border-bottom: 1px solid #fff;">
							<!-- ��¥  -->
							<div class="col-sm-2 date">
								<h3 class="day"></h3>
								<p style="color: lightgray" class="yearMonth"></p>
							</div>
							<!-- �׸� -->
							<div class="col-sm-3 postimg">
								<img alt="" src="./img/postimg/postimg4.jpg"
									style="width: 330px; height: 200px; padding-top: 20px;">
							</div>
							<!-- ��� -->
							<div class="col-sm-7 postarticle" style="padding: 20px;">
								<h6 class="posttitle">
									<b>������ '���' �������� �Կ� ����</b>
								</h6>
								<p>
									4��, ù �ַ� �̱ۿ� �̾� �������� �� ��° �ַ� �̱� [���]�� ���Խ��ϴ�! ������� �������� ������ ��������
									'���'�� ������ �۰�, �ۻ�, �� ������������ ����! �⿬�� ���ε���. Ȱ�� ��ġ�� ���� �������
									��������� �������� �������-!! ������ '���' �۾��⸦ ��иŰ������� �����մϴ�! <br> <br>
								<p></p>
								<span class="heart3"><i class="fa fa-heart-o heart1" style="color: red;"></i></span><i
									class="fa fa-heart heart2" style="color: red; display: none;"></i><span
									class="hnum"
									style="border-right: 1px solid lightgray; padding-right: 15px"></span>
								<span
									style="border-right: 1px solid lightgray; padding-right: 15px">���</span>
								<span>��ȸ</span>
							</div>
						</div>

					</div>

					<div class="page-nav" style="text-align: center;">
						<a href="#" onclick="alert('ù ������ ��� �Դϴ�.');return false;"
							class="first"><span><i class="fa fa-angle-double-left"></i></span></a> <a href="#"
							onclick="alert('ù ������ �Դϴ�.');return false;" class="prev"><span><i class="fa fa-angle-left"></i></span></a> <a class="pagenum" href="#" onclick="javascript:void(0);"
							class="current">1</a> <a class="pagenum" href="?ctid=0&pg=2">2</a> <a class="pagenum"
							href="?ctid=0&pg=3">3</a> <a class="pagenum" href="?ctid=0&pg=4">4</a> <a class="pagenum"
							href="?ctid=0&pg=5">5</a> <a class="pagenum" href="?ctid=0&pg=6">6</a> <a
							href="?ctid=0&pg=7">7</a> <a class="pagenum" href="?ctid=0&pg=8">8</a> <a class="pagenum"
							href="?ctid=0&pg=9">9</a> <a class="pagenum" href="?ctid=0&pg=10">10</a> <a class="pagenum"
							href="?ctid=0&pg=2" class="next"><span><i class="fa fa-angle-right"></i></span></a> <a
							href="?ctid=0&pg=11" class="end"><span><i class="fa fa-angle-double-right"></i></span></a>
					</div>
				</div>
				<!-- �������� ��Ʈ����Ʈ -->
</body>
</html>