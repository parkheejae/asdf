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
<link rel="stylesheet" href="./css/test.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var audio = new Audio('Kalimba.mp3');
		$('#play1').click(function() {
			audio.play();
			$(this).hide();
			$('#pause1').show();
		}); //click
		
		 $('#pause1').click(function() {
			audio.pause(); 
			$(this).hide();
			$('#play1').show();
		});
		
		$('#Search').keyup(function() {
	         var k = $('#Search').val();
	         $("table> tbody > tr").hide();
	         var temp = $("table>tbody>tr>td:contains('" + k + "')");
	         $(temp).parent().show();
	    }); //�ؽ�Ʈ�ʵ� Search
		
		
	});
</script>

<style>


/* .navbar {
	background-color: rgb(49, 49, 49)
} */


.nav-pills .nav-link.active {
	color: #fff;
	background-color: #00ffcc;
}

table {
	width:100%;
	border: 3px solid white;
	margin: 10px auto;
	border-right: 0px;
	border-left: 0px;
}

tr, td, th {
	border: 1px dotted white;
	padding-top:0px;
	padding-bottom:0px;
	font-size: 1.0em;
	text-align:center;
	border-left: 0px; 
	border-right: 0px;
	border-bottom: 1px solid white;
}

th{
font-size: 1.2em;
}

#number{padding-left:0px;
}

</style>	
</head>
<body>
<br>
				<div class="row">
                  <div class="col-sm-2">
                     <h2>��Ʈ ��Ʈ</h2>
                  </div>
                  <div class="col-sm-8"></div>
                  <div class="col-sm-2" style="text-align: right; margin-top: 15px;">
                     <h6 style="color: lightgray;"><!-- ��ģ�� Ȩ��ũ �������ݽô�. -->
                        <a href="http://localhost:8888/Test/index2.html">Ȩ></a>��Ʈ��Ʈ
                     </h6>
                  </div>
               </div>
				<hr style="border: 1px solid rgb(51, 255, 255);" width="100%"> 
				<div class="container-fluid">
				<button class="btn btn-success" type="submit"
							style="background-color: #00ffcc">���</button>
				<button class="btn btn-success" type="submit"
							style="background-color: #00ffcc">�����Ͽ� �߰�</button>
				<button class="btn btn-success" type="submit"
							style="background-color: #00ffcc">�� �ٹ��� ���</button>
				<button class="btn btn-success" type="submit"
							style="background-color: #00ffcc">�ٿ�ε�</button>		
					
				</div>
				
					<div class=col-sm-12>
						<table>
							<thead>
								<tr>
									<th style="width:5%">�� ��</th>
									<th style="width:8%"></th>
									<th style="width:30%">��</th>
									<th style="width:15%">��Ƽ��Ʈ</th>
									<th style="width:15%">�� ��</th>
									<th style="width:5%">�� ��</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;1</td>
									<td><img src="./img/chartimg/chartimg.png" alt="profil" width=100%></td> 
									<td>��Ʈ����</td>
									<td>10cm(�ʼ�ġ)</td>
									<td>4.1</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play1"><span id="pause1" style="display:none">
									    <img src="./img/chartimg/pause.png" alt="pause" width=50 style='cursor:pointer'></span></td> 
								</tr>

								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;2</td>
									<td><img src="./img/chartimg/chartimg22.PNG" alt="profil" width=100%></td>
									<td>�� ��������</td>
									<td>����Ŵ</td>
									<td>�ƴ� ������ (tvN ������) OST - Part.3</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play2"></td>
								</tr>

								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;3</td>
									<td><img src="./img/chartimg/chartimg3.png" alt="profil" width=100%></td> 
									<td>��(-)</td>
									<td>(����)���̵�</td>
									<td>��(-)</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play3"></td>
								</tr>

								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;4</td>
									<td><img src="./img/chartimg/chartimg4.png" alt="profil" width=100%></td> 
									<td>IDOL</td>
									<td>��ź�ҳ��</td>
									<td>LOVE YOURSELF ̿ ��Answer��</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play4"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;5</td>
									<td><img src="./img/chartimg/chartimg5.png" alt="profil" width=100%></td> 
									<td>Power Up</td>
									<td>Red Velvet(���座��)</td>
									<td>Summer Magic - Summer Mini Album</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play5"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;6</td>
									<td><img src="./img/chartimg/chartimg6.png" alt="profil" width=100%></td> 
									<td>Way Back Home</td>
									<td>��(SHAUN)</td>
									<td>Take</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play6"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;7</td>
									<td><img src="./img/chartimg/chartimg4.png" alt="profil" width=100%></td> 
									<td>Euphoria</td>
									<td>��ź�ҳ��</td>
									<td>LOVE YOURSELF ̿ ��Answer��</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play7"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;8</td>
									<td><img src="./img/chartimg/chartimg8.png" alt="profil" width=100%></td> 
									<td>Dance The Night Away</td>
									<td>TWICE(Ʈ���̽�)</td>
									<td>Summer Nights</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play8"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;9</td>
									<td><img src="./img/chartimg/chartimg9.png" alt="profil" width=100%></td> 
									<td>�ѵζѵ� (DDU-DU DDU-DU)</td>
									<td>BLACKPINK</td>
									<td>SQUARE UP</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play9"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;10</td>
									<td><img src="./img/chartimg/chartimg10.png" alt="profil" width=100%></td> 
									<td>�ʳ� ��(Egotistic)</td>
									<td>������(Mamamoo)</td>
									<td>Red MOON</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play10"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;11</td>
									<td><img src="./img/chartimg/chartimg11.png" alt="profil" width=100%></td> 
									<td>SoulMate(Feat. ������)</td>
									<td>����(Zico)</td>
									<td>SoulMate</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play11"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;12</td>
									<td><img src="./img/chartimg/chartimg4.png" alt="profil" width=100%></td> 
									<td>I'm Fine</td>
									<td>��ź�ҳ��</td>
									<td>LOVE YOURSELF ̿ ��Answer��</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play12"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;13</td>
									<td><img src="./img/chartimg/chartimg13.png" alt="profil" width=100%></td> 
									<td>Rumor</td>
									<td>��.��(������ ���̽�)</td>
									<td>PRODUCE 48 - 30 Girls 6 Concepts</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play13"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;14</td>
									<td><img src="./img/chartimg/chartimg14.png" alt="profil" width=100%></td> 
									<td>��� ��,��� ����(Every day, Every Moment)</td>
									<td>��Ŵ(Paul Kim)</td>
									<td>'Ű�� ���� �ұ��?' OST Part.3</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play14"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;15</td>
									<td><img src="./img/chartimg/chartimg15.png" alt="profil" width=100%></td> 
									<td>1�� ����</td>
									<td>Apink(������ũ)</td>
									<td>ONE & SIX</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play15"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;16</td>
									<td><img src="./img/chartimg/chartimg16.png" alt="profil" width=100%></td> 
									<td>�װڴ�(KILLING ME)</td>
									<td>iKON</td>
									<td>NEW KIDS : CONTINUE</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play16"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;17</td>
									<td><img src="./img/chartimg/chartimg17.png" alt="profil" width=100%></td> 
									<td>������</td>
									<td>��</td>
									<td>RECIPE</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play17"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;18</td>
									<td><img src="./img/chartimg/chartimg18.png" alt="profil" width=100%></td> 
									<td>�Ӽ���</td>
									<td>������ ������</td>
									<td>To Love Somebody</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play18"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;19</td>
									<td><img src="./img/chartimg/chartimg19.png" alt="profil" width=100%></td> 
									<td>�� ���״� (1, 2, 3!)</td>
									<td>�¸�</td>
									<td>THE GREAT SEUNGRI</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play19"></td>
								</tr>
								
								<tr>
									<td id="number"><input type="checkbox" name="chart" value="check">&nbsp;&nbsp;&nbsp;20</td>
									<td><img src="./img/chartimg/chartimg9.png" alt="profil" width=100%></td> 
									<td>Forever Young</td>
									<td>BLACKPINK</td>
									<td>SQUARE UP</td>
									<td><img src="./img/chartimg/play.png" alt="profil" width=50 style='cursor:pointer' id="play20"></td>
								</tr>
								
							
							</tbody>
						</table>
					</div>
				

</body>
</html>