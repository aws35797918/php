<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css.css" /> 
	<title>Document</title>
	<script type="text/javascript">
		function openform()
		{
			document.getElementById('addform1').disabled=false;
			document.getElementById('addform2').disabled=false;
			document.getElementById('addform3').disabled=false;
		}
		function closeform()
		{
			document.getElementById('addform1').disabled=true;
			document.getElementById('addform2').disabled=true;
			document.getElementById('addform3').disabled=true;
		}
	</script>
</head>
<body>
	<?php include("header.php");?>
	<?php
	$ac=$_COOKIE['user'];
	include ("dblink.php");
	if(isset($_COOKIE['user']))
	{
		$ac=$_COOKIE['user'];
		include ("dblink.php");
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
	            echo"</table>";
	            echo"<form method='get' action='BuyFinal.php'class='BuyFinalForm'>
	            <table>";

	            $asql="SELECT * FROM addressee WHERE Account='$ac'";
	            $aresult=mysqli_query($link,$asql);
			    if(mysqli_num_rows($aresult)>0)
		        {	
		        	while($arow = mysqli_fetch_array($aresult))
		            {
		            	echo"<tr>";
		            	echo "<td><input type='radio' name='chadd' value='$arow[0]'onclick='closeform()'></td>";		        
		            	echo "<td><font class='fonta'>收件人</font><font class='fontb'>$arow[2]</font><br><font class='fonta'>電話</font><font class='fontb'>$arow[3]</font><br><font class='fonta'>地址</font><font class='fontb'>$arow[4]</font></td>";
		            	echo"</tr>";
		            	
		            }

		        }





	            echo"
				<tr>
				<td><input type='radio' name='chadd' onclick='openform()'></td>
				<td>
				<label for='name'>收件人</label><input name='name' id='addform1' type='text' disabled ><br> 
				<label for='tel'>電話</label><input name='tel' id='addform2' type='text' disabled><br>
				<label for='add'>地址</label><input name='add' id='addform3' type='text' disabled ><br>
				
				</td></tr>
				</table>
				<input type='submit' value='確認訂單'>
				</form>
				
				


	            </div>";


	        }

		}
		elseif(isset($_GET['name'])&&!empty($_GET['name'])&&!empty($_GET['add'])&&!empty($_GET['tel']))
		{
			
			$name=$_GET['name'];
			$add=$_GET['add'];
			$tel=$_GET['tel'];
			final2($name,$add,$tel);
			$sql="INSERT INTO addressee(Account,Name,Telephone,Address) VALUES('$ac','$name','$tel','$add')";
			$result=mysqli_query($link,$sql);


		}
		elseif(isset($_GET['chadd'])&&$_GET['chadd']!="on")
		{
				$id=$_GET['chadd'];
				$chasql="SELECT * FROM addressee WHERE Account='$ac'AND AddId='$id'";
				$charesult=mysqli_query($link,$chasql);
			    if(mysqli_num_rows($charesult)>0)
		        {	
		        	
		        
		        	while($charow = mysqli_fetch_array($charesult))
		            {
		            	$name=$charow[2];
		            	$add=$charow[3];
		            	$tel=$charow[4];
		            	final2($name,$add,$tel);
		            	
		            }
			}
		
		}
		else echo"<script>alert('請完整填寫資料');history.go(-1);</script>";
		
	}
		else echo"<script>alert('請先登入帳號');location.href='BuyList.php';</script>";
	function final2($name,$add,$tel)
	{
		
		$ac=$_COOKIE['user'];
		include ("dblink.php");
			$file=fopen('buyid.txt','r');

			$num=fgets($file);
			fclose($file);

			
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
	?>

	<?php include("footer.php");?>
	
</body>
</html>