<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css.css" /> 
	<title>Document</title>
</head>
<body>
	<?php include("header.php");?>
	
		


		<div id="logindiv">


			<form action="ManagementProduct.php" method="post">
				<h1>管理員登入</h1>
				<label for="account">▲</label><input class="login" type="text" placeholder="管理員帳號" name="account"><br>
				<label for="password">▲</label><input class="login" type="password"placeholder="管理員密碼"  name="password"><br>
				<input type="submit" value="登入">
			</form>
		

		</div>

	
	<?php include("footer.php");?>
	
</body>
</html>