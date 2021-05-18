<?php if(isset($_GET['logout']))
			 {
			 		setcookie("user", "", time()-30000);
			 		session_start();
			 		unset($_SESSION['gwc']);
			 		echo "<script>alert('登出成功!');window.location.href='BuyList.php';</script>";
			  }
?>

<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	
	$(function(){

	
	if(readCookie("user")=="admin0315")
	{
		$(".left").append("<li>管理頁面👇<ul><li><a href='ManagementProduct.php'><div>商品管理</div></a></li><li><a href='AdminForm.php'><div>客戶訂單查詢</div></a></li></ul><il>")
	}
	if(readCookie("user")==null)
	{
		$(".left>li:nth-child(4)").css("display","none");
	}

	$("header ul>li").click(listopen)
	$(".hamdivout").click(hamdivout);
	$(".hambtn").click( hamdivin);
	
	
	

	function listopen()
	{
		if($(this).find("li").css("display")=="none")
		$(this).find("li").css("display","block");
		else
		$(this).find("li").css("display","none");

	}

	function hamdivout()
	{
		
		$(".hamdiv").animate({left:'-70%'});
		$(".hamdivout").css("display","none");
			
		
	}
	function hamdivin()
	{
		$(".hamdiv").animate({left:'0'});
		$(".hamdivout").css("display","block");
	}








	

	});
	
	function readCookie(name) {
   var nameEQ = name + "=";
   var ca = document.cookie.split(';');
   for (var i = 0; i < ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == ' ') c = c.substring(1, c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
   }
   return null;
}
	
</script>
<header >
	<button class="hambtn"><img src="img/hamberger.png"></button>
	<div class="logo">
		<img src="img/LOGO.png">新義全球通
	</div>
	<div class="hamdiv">
		<ul class="right">
			<?php 
			if(isset ($_COOKIE['user'])&&$_COOKIE['user']!="")
			{

				echo "<li>Hi! ".$_COOKIE['user']."👇";
				echo "<ul><li><a href='BuyList.php?logout=1'><div>登出</div></a></li></ul></li>";
			}
			else
			{
				echo "<li><a href='MemberLogin.php'>會員登入 </a></li>";
				
			}


			 ?>
			
			
		</ul>
		<ul class="left">
			<li><a href="index.php">首頁 </a></li>
			<li><a href="BuyList.php">我要購物 </a></li>
			<li><a href="BuyCar.php">購物車 </a></li>
			<li>會員中心👇
				<ul>
					<li><a href="UpdateMember.php"><div>更改帳號資料</div></a></li>
					<li><a href="SetAddressee.php"><div>設定常用地址</div></a></li>
					<li><a href="SearchForm.php"><div>訂單查詢</div></a></li>
					<li><a href="LikeItem.php"><div>我的最愛</div></a></li>
				</ul>

			</li>

			
		</ul>
		
	</div>
	<div class="hamdivout">
	</div>
	</header>
	<div class='container'>
	<div class="center">
	<div class="padding">
	