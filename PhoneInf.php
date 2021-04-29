
<!DOCTYPE html>
<html>
	<head>
		<title>**通信行</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		 <link rel="stylesheet" type="text/css" href="css.css" /> 
	</head>
	<body >
		<?php
		include("header.php");
	
		include("dblink.php");

		$sql="SELECT phoneinformation.* ,phonebrand.Brand FROM phoneinformation LEFT JOIN phonebrand ON phoneinformation.Phone=phonebrand.Phone WHERE phoneinformation.Phone = '".$_GET['phone']."'";

		$result=mysqli_query($link,$sql);




		if(mysqli_num_rows($result)>0)
		{
			
			while($row = mysqli_fetch_array($result))
			{
			echo "<div id='inftop'><div id='infimg'><img class ='img1'src='img/".$row[0].".jpg'></div>";//照片
			echo"<div id='inftable'><table id='inf'> <caption>手機規格</caption>";//規格表
			
			echo "<tr><td>手機名稱</td>".td($row[0])."</tr>";
			echo "<tr><td>手機品牌</td>".td($row[10])."</tr>";
			echo "<tr><td>系統</td>".td($row[1])."</tr>";
			echo "<tr><td>處理器</td>".td($row[2])."</tr>";
			echo "<tr><td>螢幕尺寸</td>".td($row[3]." 吋")."</tr>";
			echo "<tr><td>主相機像素</td>".td($row[4]." 萬畫素")."</tr>";
			echo "<tr><td>電池容量</td>";
			if($row[7]==0){echo "<td><p>無資料</p></td></tr>";}
			else {echo td($row[7]." mAh")."</tr>";}

			if($row[8]==1){$flag="是";}
			else$flag="否";

			echo "<tr><td>5G</td>".td($flag)."</tr>";
			echo "</table></div></div>";
			//顏色選擇
			echo"<div class='GoBuyCar'>

			<form action='BuyCar.php' method='post'>
			<input type='text' class='BuyItem' id='bpn' name='phone' value='$row[0]' readonly='readonly'>
			<label for='color'>顏色</label><select name='color' class= 'BuyItem'>
			<option>選顏色</option>

			";

			$bsql="SELECT Color FROM phonecolor WHERE Phone='".$_GET['phone']."'";
			$bresult=mysqli_query($link,$bsql);

			if(mysqli_num_rows($bresult)>0)
			{

				while ( $brow = mysqli_fetch_array($bresult)) {
					echo "<option value='$brow[0]'>$brow[0]</option>";
				}
			}

			//容量選擇
			echo"</select>
			<label for='mem'>容量</label><select id='MemSe' class= 'BuyItem' name='mem' onchange='MemBox();'>
			<option>選容量</option>

			";
			$bsql="SELECT Memory,Price FROM phonememory WHERE Phone='".$_GET['phone']."'";
			$bresult=mysqli_query($link,$bsql);
			if(mysqli_num_rows($bresult)>0)
			{

				while ( $brow = mysqli_fetch_array($bresult)) {
					echo "<option value='$brow[0]'>$brow[0]</option>

					";
					
				}
				
			}

			//script function設置
			echo"<script>
						function MemBox(){
							var m=document.getElementById('MemSe').value;
							var arr = new Array(); 
							";

			$bsql="SELECT Memory,Price FROM phonememory WHERE Phone='".$_GET['phone']."'";
			$bresult=mysqli_query($link,$bsql);
			if(mysqli_num_rows($bresult)>0)
			{

				while ( $brow = mysqli_fetch_array($bresult)) 
							{
								echo "arr ['$brow[0]']=$brow[1];";
							}
				
			}


							
				echo"		

				
				 
				

				document.getElementById('PriceBox').value=arr[m];
						}


				</script>";



			
			echo"
			</select>
			<label for='price'>價格</label><input name= 'price'id='PriceBox' type='text' readonly='readonly' class= 'BuyItem' value='???'>
			<input  type='submit' class= 'BuyItem' value='加入購物車'>
			</form>

			</div>";

			echo "<div id='infview'><p>詳細介紹</p>".nl2br($row[9])."</div>";//詳細資訊
						}
			
			
		}

	function td($td)
	    {
	      return "<td><p>$td</p></td>";
	      
	    }

	
	?>

	</body>
<?php
include("footer.php");
?>