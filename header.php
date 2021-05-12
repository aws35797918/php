<?php if(isset($_GET['logout']))
			 {
			 		setcookie("user", "", time()-30000);
			 		session_start();
			 		unset($_SESSION['gwc']);
			 		echo "<script>alert('登出成功!');window.location.href='BuyList.php';</script>";
			  }
?>
<header >
		<ul class="left">
			<li><a href="BuyList.php">我要購物 |</a></li>
			<li><a href="AboutUs.php">關於我們 |</a></li>
			<li><a href="BuyCar.php">購物車 |</a></li>
			<li>會員中心
				<ul>
					<li><a href="UpdateMember.php"><div>更改帳號資料</div></a></li>
					<li><a href="SetAddressee.php"><div>設定常用地址</div></a></li>
					<li><a href="SearchForm.php"><div>訂單查詢</div></a></li>
					<li><a href="LikeItem.php"><div>我的最愛</div></a></li>
				</ul>

			</li>

			
		</ul>
		<ul class="right">
			<?php 
			if(isset ($_COOKIE['user'])&&$_COOKIE['user']!="")
			{

				echo "<li>Hi! ".$_COOKIE['user']." | </li>";
				echo "<li><a href='BuyList.php?logout=1'>登出</a></li>";
			}
			else
			{
				echo "<li><a href='MemberLogin.php'>會員登入 |</a></li>";
				echo "<li><a href='AdminLogin.php'>管理員登入</a></li>";
			}


			 ?>
			
			
		</ul>
	</header>
	<div class="center">
	<div class="padding">