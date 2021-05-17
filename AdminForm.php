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
	include("header.php");

	include("dblink.php");
	
	if(isset($_GET['DT']))
	{
		$dt=$_GET['DT'];
		$sql="SELECT * FROM buyhistory WHERE DTime='$dt'";
		$result=mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0)
		{	
			$totalprice=0;
			echo"<div class='deftb'><table><tr><th>訂單編號</th><th>商品</th><th>顏色</th><th>記憶體容量</th><th>數量</th><th>價格</th></tr>";
			while($row = mysqli_fetch_array($result))
			{
				$price=number_format($row[6]);
				echo"
				<tr>
				<td>$row[0]</td>
				<td>$row[2]</td>
				<td>$row[3]</td>
				<td>$row[4]</td>
				<td>$row[5]</td>
				<td>$price</td>
				
				</tr>
				";
				$totalprice+=$row[6];
			}
			$totalprice=number_format($totalprice);
			echo "<tr><td colspan='6'>總價:\$$totalprice</td></tr></table></div>";

			

		}

		$sql="SELECT * FROM buyform WHERE DTime='$dt'";
		$result=mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0)
		{	
			$totalprice=0;
			echo"<div class='deftb'><table><tr><th>訂貨人</th><th>電話</th><th>電話</th><th>地址</th></tr>";
			while($row = mysqli_fetch_array($result))
			{
				echo "
				<tr>
				<td>$row[2]</td>
				<td>$row[3]</td>
				<td>$row[4]</td>
				<td>$row[5]</td>
				</tr>

				";
			}
			
			echo "</table></div>";
			

		}
	}
	else
	{
		$sql="SELECT BuyId ,Name,Account,DTime FROM buyform ORDER BY `BuyNum` DESC";
		$result=mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0)
		{	
			echo"<div class='deftb'><table><tr><th>訂單編號</th><th>收件人</th><th>帳號</th><th>訂貨時間</th><th>詳情</th></tr>";
			while($row = mysqli_fetch_array($result))
			{
				echo"
				<tr>
				<td>$row[0]</td>
				<td>$row[1]</td>
				<td>$row[2]</td>
				<td>$row[3]</td>
				<td><a href='AdminForm.php?DT=$row[3]'>詳情</a></td>
				</tr>
				";
			}
			echo "</table></div>";
		}

	}
	include("footer.php");
	?>
	
</body>
</html>