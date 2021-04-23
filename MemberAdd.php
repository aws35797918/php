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
	if(isset($_POST['password'])&&isset($_POST['account']))
	{
		if($_POST['password']==""||$_POST['account']=="")
			{echo "<script>alert('請完整輸入帳號資料');</script>";}
		else
		{
			include("dblink.php");
			$ac=$_POST['account'];
			$pw=$_POST['password'];
			$em=$_POST['email'];
			$sql="SELECT account FROM member WHERE account='$ac'";
			$result=mysqli_query($link,$sql);
			if(mysqli_num_rows($result)>0)//判斷有無重複資料
			{
				echo "<Script >alert('有重複帳號')</Script>";
			}
			else
			{
				$sql="INSERT INTO member(Account,Password,Email) VALUES ('$ac',TO_BASE64('$pw'),'$em')";
				$result=mysqli_query($link,$sql);
				if($result){echo "<script>alert('申請成功');</script>";}
				else{ echo "<script>alert('申請失敗，請洽工作人員');</script>";}
			}
		}
	}	
	?>




	<?php include("header.php");?>
	<div id="madiv">
	
	<form action="MemberAdd.php" method="post">
        <h1>申請帳號</h1>
        

        <label for="account">▲</label><input class="login"  type="text" placeholder="帳號" name="account" ><br>
        <span id="accs"></span><br>
        <label for="password">▲</label><input class="login" id="pw1" type="password"placeholder="密碼"  name="password" onkeyup="pwlength();"><br>
        <span id="pw1s"></span><br>
        <label for="password">▲</label><input class="login" id="pw2" type="password"placeholder="確認密碼"  name="password" onkeyup="validate();" ><br>
        <span id="tishi"></span><br>
        <label for="email">▲</label><input class="login"  id="em" type="text" placeholder="E-mail" name="email" onkeyup="ema();" ><br>
        <span id="emspan"></span><br><br>
        <input type="submit" id="submit"value="送出">
    </form>
    <script>
    	function ema(){
			var emvalue = document.getElementById('em').value;
			var emailRegxp = /^([\w]+)(.[\w]+)*@([\w]+)(.[\w]{2,3}){1,2}$/;
			if (emailRegxp.test(emvalue) != true)
			{document.getElementById("emspan").innerHTML="<font color='red'>email格式錯誤</font>";
			document.getElementById("submit").disabled = true;
			}
			else{document.getElementById("emspan").innerHTML="";
			document.getElementById("submit").disabled = false;
			}


		}



		function pwlength() {
		var pw1 = document.getElementById("pw1").value;
			document.getElementById("pw1s").innerHTML=pw1;
			if (pw1.length<8)
			{
				document.getElementById("pw1s").innerHTML="<font color='red'>請輸入8個字元以上</font>";
				document.getElementById("submit").disabled = true;
			}
			else
			{
				document.getElementById("pw1s").innerHTML="";
				document.getElementById("submit").disabled = false;
			}
		}

		function validate() {
		var pw1 = document.getElementById("pw1").value;
		var pw2 = document.getElementById("pw2").value;
		if(pw1 == pw2) {
		document.getElementById("tishi").innerHTML="";
		document.getElementById("submit").disabled = false;
		}
		else {
		document.getElementById("tishi").innerHTML="<font color='red'>兩次密碼不相同</font>";
		document.getElementById("submit").disabled = true;
		}

		
		}
	</script>
	</div>
	<?php include("footer.php");?>
	
</body>
</html>