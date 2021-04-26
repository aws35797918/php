<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css.css" /> 
	<title>Document</title>
</head>
<body>
	<?php
	if (!isset($_COOKIE['user'])) {
		echo "<script>alert('請先登入會員');history.go(-1);</script>";
	}
	 include("header.php");
	 ?>

	<div class="mc1">
		安安!<?php echo $_COOKIE['user']; ?>
	</div>
	<div class="mc2">
		<a href="UpdateMember.php"><div>更改帳號資料</div></a>
		<a href="#"><div>設定常用地址</div></a>
	</div>
	<div class="mc2">
		<a href="#"><div>訂單查詢</div></a>
		<a href="#"><div>我的最愛</div></a>
	</div>



	<?php include("footer.php");?>
	
</body>
</html>