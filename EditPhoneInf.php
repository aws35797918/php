
<!DOCTYPE html>
<html>
	<head>
		<title>新義全球通-編輯商品</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		 <link rel="stylesheet" type="text/css" href="css.css" /> 
		 <link rel="icon" href="img/LOGO.ico" type="image/x-icon" >
		<link rel="shortcut icon" href="img/LOGO.ico" type="image/x-icon" >
	</head>
	<body >
		<?php
		include("header.php");
	
		include("dblink.php");
		if(isset($_GET['phone']))
		{
			echo "<script>alert(".$_GET['phone'].");</script>";
			$sql="SELECT phoneinformation.* ,phonebrand.Brand FROM phoneinformation LEFT JOIN phonebrand ON phoneinformation.Phone=phonebrand.Phone WHERE phoneinformation.Phone = '".$_GET['phone']."'";
			

			$result=mysqli_query($link,$sql);

			 echo "<h1 style='padding: 0px 40px;margin: 20px 0 -40px;'>編輯頁面</h1>";

			echo"<form action='EditPhoneInf.php' method='post' enctype='multipart/form-data'>";
			if(mysqli_num_rows($result)>0)
			{
				
				while($row = mysqli_fetch_array($result))
				{
				echo "<div id='inftop'><div id='infimg'><img src='img/".$row[0].".jpg'><br><input type='file' name='Photo'><br>提示:若沒更新請按ctrl+F5重新整理</div>";//照片
				echo"<div id='inftable'><table id='inf'> <caption>手機規格</caption>";//規格表
				echo "<tr><td>手機名稱</td>".td("<input class='pe' type='text' value='$row[0]' name='pn' readonly='readonly'>")."</tr>";
				echo "<tr><td>手機品牌</td>".td("<input class='pe' type='text' value='$row[10]' name='pb' >")."</tr>";
				echo "<tr><td>系統</td>".td("<input class='pe' type='text' value='$row[1]' name='os'>")."</tr>";
				echo "<tr><td>處理器</td>".td("<input class='pe' type='text' value='$row[2]' name='ps'>")."</tr>";
				echo "<tr><td>螢幕尺寸</td>".td("<input class='pe' type='text' value='$row[3]' name='sc'>"." 吋")."</tr>";
				echo "<tr><td>主相機像素</td>".td("<input class='pe' type='text' value='$row[4]' name='ca'>"." 萬畫素")."</tr>";
				echo "<tr><td>電池容量</td>";
				
				echo td("<input class='pe' type='text' value='$row[7]' name='bt'>"." mAh")."</tr>";

				if($row[8]==1)
					{
						$flag= "是<input type='radio' name='fg' value='1' checked>
	 					否<input type='radio' name='fg' value='0' >";

					}
				else{
						$flag= "是<input type='radio' name='fg' value='1' >
	 					否<input type='radio' name='fg' value='0' checked>";

					}

				echo "<tr><td>5G</td>".td($flag)."</tr>";
				echo "</table></div></div>";


				echo "<div id='infview'><p>詳細介紹</p><textarea class='detail' name='Detail' >".$row[9]."</textarea><br><input type='submit' value='更新'></div>";//詳細資訊
							}
				

			}
			echo "</form>";

			
		}
		function td($td)
			    {
			      return "<td><p>$td</p></td>";
			      
			    }
		if(isset($_POST['ps'])&&isset($_POST['os']))
		{
			$pn=$_POST['pn'];
			$os=$_POST['os'];
			$ps=$_POST['ps'];
			$sc=$_POST['sc'];
			$ca=$_POST['ca'];
			$bt=$_POST['bt'];
			$fg=$_POST['fg'];
			$detail=$_POST['Detail'];
			$alert="";

			$sql="UPDATE phoneinformation SET 
			OsVer='$os', 
			ProcessorName='$ps', 
			ScreenSize='$sc',
			CameraPixel='$ca',
			Battery='$bt',
			FiveG='$fg',
			Detail='$detail'

			 WHERE Phone='$pn'";

			$result=mysqli_query($link,$sql);
			if($result){
				$alert.="資料更新成功\\n";
			}

			$pb=$_POST['pb'];
			$sql="UPDATE phonebrand SET Brand='$pb' WHERE Phone='$pn'";
			$result=mysqli_query($link,$sql);
			if($result){
				$alert.="品牌更新成功\\n";
			}




			if(isset($_FILES['Photo']['tmp_name']))
			{
				$tmp=$_FILES['Photo']['tmp_name'];
				move_uploaded_file($tmp,"./img/".$pn.".jpg");
				$alert.="照片更新成功";
			}
			echo "<script>alert('$alert');location.href='ManagementProduct.php';</script>";
			
		}
		
	
	?>
	</body>
<?php
include("footer.php");
?>