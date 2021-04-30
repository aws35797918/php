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
	<?php
	if(isset($_COOKIE['user']))
	{
		if(isset($_GET['totalprice'])&&$_GET['totalprice']!="$0")
		{
			include ("dblink.php");
			$ac=$_COOKIE['user'];
			$sql="SELECT * FROM buycar WHERE Account ='$ac'";
			$result=mysqli_query($link,$sql);
		    if(mysqli_num_rows($result)>0)
	        {	
	        	echo"<div  class='BuyCarTable'><table><tr><th>序列</th><th>手機名稱</th><th>顏色</th><th>容量</th><th>數量</th><th>單價</th></tr>";
	        	$totalprice=0;
	        	$count=1;
	        	while($row = mysqli_fetch_array($result))
	            {
	            	echo"<tr>";
	            	echo "<td>$count</td>";
	            	echo "<td>$row[1]</td>";
	            	echo "<td>$row[2]</td>";
	            	echo "<td>$row[3]</td>";
	            	echo "<td>$row[4]</td>";
	            	$price=number_format($row[5]);
	            	echo "<td>\$$price</td>";
	            	echo"</tr>";
	            	$count++;
	            	$totalprice+=$row[5];
	            }
	            echo"<tr><td colspan='6'>總價為:\$$totalprice</td></tr>";
	            echo"</table>
	            <form method='get' action='BuyFinal.php'>
				
				<label for='name'>收件人</label><input name='name' type='text'><br> 
				<label for='tel'>電話</label><input name='tel' type='text'><br>
				<label for='add'>地址</label><input name='add' type='text'><br>
				<input type='submit' value='確認訂單'>
				</form>


	            </div>";


	        }

		}
		elseif(isset($_GET['name'])&&!empty($_GET['name'])&&!empty($_GET['add'])&&!empty($_GET['tel']))
		{
			include ("dblink.php");
			$name=$_GET['name'];
			$add=$_GET['add'];
			$tel=$_GET['tel'];
			$file=fopen('buyid.txt','r');

			$num=fgets($file);
			fclose($file);

			$ac=$_COOKIE['user'];
			$sql="SELECT * FROM buycar WHERE Account ='$ac'";
			$result=mysqli_query($link,$sql);
		    if(mysqli_num_rows($result)>0)
	        {	
	        	
	        	$totalprice=0;
	        	
	        	$count = str_pad($num, 8, '0', STR_PAD_LEFT);
	        	$count="sy".$count;
	        	$num++;
	        	$file=fopen('buyid.txt','w');
	        	fwrite($file, $num);
	        	fclose($file);
	        	date_default_timezone_set('Asia/Taipei');
	            $t=date('Y/m/d H:i:s');
	        	while($row = mysqli_fetch_array($result))
	            {
	            	$isql="INSERT INTO buyhistory (BuyId,Account,Phone,Color,Memory,Count,Price,DTime) VALUES('$count','$row[0]','$row[1]','$row[2]','$row[3]','$row[4]','$row[5]','$t')";
	            	$iresult=mysqli_query($link,$isql);
	            	
	            	
	            }
	            $isql="INSERT INTO buyform (BuyId,Account,Name,Telephone,Address,DTime) VALUES('$count','$ac','$name','$tel','$add','$t')";
	            $iresult=mysqli_query($link,$isql);
	        }

	        $dsql="DELETE  FROM buycar WHERE Account ='$ac'";
	        $dresult=mysqli_query($link,$dsql);
	        session_start();
	        unset($_SESSION['gwc']);
	        echo "<script>alert('訂購成功\\n請前去歷史訂單查看');location.href='BuyList.php';</script>";
		}
		else{
			echo"<script>alert('資料不可為空')</script>";
		}
	}
	else echo"<script>alert('請先登入帳號')</script>"
	?>

	<?php include("footer.php");?>
	
</body>
</html>