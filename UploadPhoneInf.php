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
	<div id="flextop">
		<?php
		include("adminleft.php");
		?>

	<div id="listmiddle"> 
		<?php
			include("dblink.php");

			if(isset($_POST['PhoneName'])&&isset($_POST['FiveG']))
			{
				$PhN=$_POST['PhoneName'];
				$OV=$_POST['OsVer'];
				$PrN=$_POST['ProcessorName'];
				$SS=$_POST['ScreenSize'];
				$CP=$_POST['CameraPixel'];
				$Ram=$_POST['Ram'];
				$Rom=$_POST['Rom'];
				$Battery=$_POST['Battery'];
				$FG=$_POST['FiveG'];

				$Detail=$_POST['Detail'];
				


				$sql="INSERT INTO phoneinformation(Phone,OsVer,ProcessorName,ScreenSize,CameraPixel,Ram,Rom,Battery,FiveG,Detail) VALUES('$PhN','$OV','$PrN','$SS','$CP','$Ram','$Rom','$Battery','$FG','$Detail') ";
				$result=mysqli_query($link,$sql);
				if($result){echo "<Script language='javascript'>alert('上傳成功');</Script>";}
				else{echo "<Script language='javascript'>alert('請填寫表格');</Script>";}
			}
			


			?>







		<form  action="UploadPhoneInf.php" method="post">
		<table>
			<tr>
			<td>手機</td>
			<td>
			<select  name="PhoneName">
				
				<?php
				
				
				$sql="SELECT Phone FROM phonebrand ta WHERE NOT EXISTS ( SELECT Phone FROM phoneinformation tb WHERE ta.Phone = tb.Phone)";
				$result=mysqli_query($link,$sql);
				if(mysqli_num_rows($result)>0)
					while($row = mysqli_fetch_array($result))
					{
						echo "<option>".$row['Phone']."</option>"  ;
					}
				
				?>

			</select>
			</td>
			</tr>

			<tr><td>作業系統與版本</td><td><input type="text" name="OsVer"></td></tr>
			<tr><td>處理器型號</td><td><input type="text" name="ProcessorName"></td></tr>
			<tr><td>主螢幕尺寸</td><td><input type="text" name="ScreenSize"></td></tr>
			<tr><td>主相機畫素</td><td><input type="text" name="CameraPixel"></td></tr>
			<tr><td>RAM記憶體</td><td><input type="text" name="Ram"></td></td>
			<tr><td>ROM儲存空間</td><td><input type="text" name="Rom"></td></tr>
			<tr><td>電池容量</td><td><input type="text" name="Battery"></td></tr>
			<tr><td>5G</td><td>是<input type="radio" name="FiveG" value=1>
			否<input type="radio" name="FiveG" value=0></td></tr>
			<tr><td>詳細說明</td><td><textarea name="Detail"></textarea></td></tr>
			<tr><td colspan="2"><input type ="submit" value="更新"></td></tr>

		</table>
		
		</form>

		
	</div>
	</div>
	<?php include("footer.php");?>
	
</body>
</html>

		


		
		
