<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>新義全球通</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<link rel="icon" href="img/LOGO.ico" type="image/x-icon" >
	<link rel="shortcut icon" href="img/LOGO.ico" type="image/x-icon" >
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
				<img class="d-block w-100" src="img/aboutus1.jpg" alt="店面外觀">
				<div class="carousel-caption">店面外觀</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/aboutus2.jpg" alt="店內場景1">
				<div class="carousel-caption">店內場景1</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/aboutus3.jpg" alt="店內場景2">
				<div class="carousel-caption">店內場景2</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/aboutus4.jpg" alt="店內場景3">
				<div class="carousel-caption">店內場景3</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselarea" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
		<a class="carousel-control-next" href="#carouselarea" role="button" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
	
	<div class="ustext col-12 col-lg-6">
		<p>
		新義全球通創始於1990年，主要的服務內容為安裝監視系統、總機、防盜系統，
		辦理門號轉移、新辦門號(遠傳電信、台灣大哥大、亞太電信、台灣之星及中華電信)…等通訊產品各項業務。</p></div>
	

	</div>
	<div class=" row us mapdiv">
		
		<div class=" col-12 col-lg-6">
		<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14573.902950361897!2d120.439164!3d24.0495459!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf3d0a6d8b83f287!2z5YWo55CD6YCa6YCa6KiK5buj5aC0LeaWsOe-qemAmuS_oeihjA!5e0!3m2!1szh-TW!2stw!4v1620709773671!5m2!1szh-TW!2stw" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
		</div>
		<div class="ustext col-12 col-lg-6">
			<p>聯絡電話 : 04-7766006</p>

			<p>聯絡傳真 : 04-7780008</p>

			<p>Email : aws35797918@gmail.com</p>

			<p>服務時間 : 每週一到週六 10:30-21:40</p>

			<p>聯絡地址 : 彰化縣鹿港鎮彰鹿路8段12號</p>
		</div>
	</div>
	
	<?php include("footer.php");?>
</body>
</html>