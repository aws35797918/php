<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>關於我們</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>

	<script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css.css" > 
	<script type="text/javascript">
		mapresize();
	$(function(){
	mapresize();
	$(window).resize(mapresize);



	});
	function mapresize() {
		
		$(".map").height($("#carouselarea").height())  ;
		;
	}

	</script>
</head>
<body>
	<?php include("header.php");?>
	
	<div class=" row us photodiv">

	<div id="carouselarea" class="carousel slide col-lg-6 col-12" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselarea" data-slide-to="0" class="active"></li>
			<li data-target="#carouselarea" data-slide-to="1"></li>
			<li data-target="#carouselarea" data-slide-to="2"></li>
			<li data-target="#carouselarea" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/photo01.jpg" alt="Photo1">
				<div class="carousel-caption">Photo1</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/photo02.jpg" alt="Photo2">
				<div class="carousel-caption">Photo2</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/photo03.jpg" alt="Photo3">
				<div class="carousel-caption">Photo3</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/photo04.jpg" alt="Photo4">
				<div class="carousel-caption">Photo4</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselarea" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#carouselarea" role="button" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	
	<div class="ustext col-12 col-lg-6">傳統通信行，開了有20年，秉持著童叟無欺的理念營業至今。</div>
	

	</div>
	<div class=" row us mapdiv">
		
		<div class=" col-12 col-lg-6">
		<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14573.902950361897!2d120.439164!3d24.0495459!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf3d0a6d8b83f287!2z5YWo55CD6YCa6YCa6KiK5buj5aC0LeaWsOe-qemAmuS_oeihjA!5e0!3m2!1szh-TW!2stw!4v1620709773671!5m2!1szh-TW!2stw" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
		</div>
		<div class="ustext col-12 col-lg-6">
			<p>聯絡電話 : 04-7766006</p>

			<p>聯絡傳真 : 04-7766006</p>

			<p>Email : aws3579@yahoo.com.tw</p>

			<p>客服時間 : 每日 10:30-9:40</p>

			<p>聯絡地址 : 彰化縣鹿港鎮彰鹿路8段12號</p>
		</div>
	</div>
	
	<?php include("footer.php");?>
</body>
</html>