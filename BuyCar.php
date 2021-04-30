<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css.css" /> 
	<title>Document</title>
</head>
<body>

	<script>
		function se(no)
		{
			var se="se".concat(no);
			var va=document.getElementById(se).value;

			location.href="BuyCar.php?chnum=".concat(no,"&chva=",va);

		}
	</script>



	<?php include("header.php");?>
	<?php 

	class BuyCarItem
	{
		// public Setname
		public $phone;
		public $color;
		public $mem;
		public $num;
		public $price;
		public function SetValue($phone,$color,$mem,$num,$price)
		{
			$this->phone=$phone;
			$this->color=$color;
			$this->mem=$mem;
			$this->num=$num;
			$this->price=$price;
		}


		
	}
	include("dblink.php");
	session_start();

	// unset($_SESSION['gwc']);
	// $arr[1]=new BuyCarItem;
	// 	$arr[1]->SetValue($_POST['phone'],$_POST['color'],$_POST['mem'],1,$_POST['price']);
	// 	$_SESSION["gwc"]=$arr ;

	// 	echo $_SESSION["gwc"][1]->color;
	// 	echo count($_SESSION["gwc"]);


	if(isset($_POST['price']))	
	{
		if($_POST['price']=="???")
		{
			echo "<script>alert('價格錯誤!請重新整理!');history.go(-1)</script>";
		}
		elseif($_POST['color']=="選顏色")
		{
			echo "<script>alert('顏色錯誤!請重新整理!');history.go(-1)</script>";
		}
		elseif($_POST['mem']=="選容量")
		{
			echo "<script>alert('容量錯誤!請重新整理!');history.go(-1)</script>";
		}
		else
		{
			//存入購物車
			if(empty($_SESSION["gwc"]))
			{

			//1.購物車是空的，第一次點選新增購物車
				$arr[0]=new BuyCarItem;
				$arr[0]->SetValue($_POST['phone'],$_POST['color'],$_POST['mem'],1,$_POST['price']);
				$_SESSION["gwc"]=$arr;
				$acc=$_COOKIE['user'];
				$ph=$_SESSION["gwc"][0]->phone;
				$color=$_SESSION["gwc"][0]->color;
				$mem=$_SESSION["gwc"][0]->mem;
				$count=1;
				$price=$_SESSION["gwc"][0]->price;
				$sql="INSERT INTO buycar (Account,Phone,Color,Memory,Count,Price) VALUES ('$acc','$ph','$color','$mem',$count,$price)";
				mysqli_query($link,$sql);
				
			}
			else
			{
				$flag=0;
				for($i=0;$i<count($_SESSION["gwc"]);$i++)
				{

					if($_SESSION["gwc"][$i]->phone==$_POST['phone']&&$_SESSION["gwc"][$i]->color==$_POST['color']&&$_SESSION["gwc"][$i]->mem==$_POST['mem'])
					{
						$_SESSION["gwc"][$i]->num+=1;
						$flag=1;
						$ph=$_SESSION["gwc"][$i]->phone;
						$acc=$_COOKIE['user'];
						$count=$_SESSION["gwc"][$i]->num;
						
						$sql="UPDATE buycar SET Count=$count WHERE Account='$acc' AND Phone ='$ph'";
						mysqli_query($link,$sql);
					}
				}
				if($flag==0)
				{
				$SessCount=(count($_SESSION["gwc"]));
				$arr=$_SESSION["gwc"];
				$arr[$SessCount]=new BuyCarItem;
				$arr[$SessCount]->SetValue($_POST['phone'],$_POST['color'],$_POST['mem'],1,$_POST['price']);
				$_SESSION["gwc"]=$arr;

				$acc=$_COOKIE['user'];
				$ph=$_SESSION["gwc"][$SessCount]->phone;
				$color=$_SESSION["gwc"][$SessCount]->color;
				$mem=$_SESSION["gwc"][$SessCount]->mem;
				$count=1;
				$price=$_SESSION["gwc"][$SessCount]->price;
				$sql="INSERT INTO buycar (Account,Phone,Color,Memory,Count,Price) VALUES ('$acc','$ph','$color','$mem',$count,$price)";
				mysqli_query($link,$sql);
				}	

				
			}
		}
	}
	if(isset($_GET['del']))
	{
		$del=$_GET['del'];
		
		$acc=$_COOKIE['user'];
		$ph=$_SESSION["gwc"][$del]->phone;
		$sql="DELETE FROM buycar WHERE Account='$acc' AND Phone ='$ph'";
		mysqli_query($link,$sql);
		

		unset($_SESSION["gwc"][$del]);
		$_SESSION["gwc"]=array_values($_SESSION["gwc"]);
	}

	if(isset($_SESSION['gwc']))
	{	
		if(isset($_GET['chnum']))
		{
			$num=(int)$_GET['chnum'];
			$value=$_GET['chva'];
			$_SESSION['gwc'][$num]->num=$value;


			$ph=$_SESSION["gwc"][$num]->phone;
			$acc=$_COOKIE['user'];
			$count=$_SESSION["gwc"][$num]->num;
			
			$sql="UPDATE buycar SET Count=$count WHERE Account='$acc' AND Phone ='$ph'";
			mysqli_query($link,$sql);



		}
		$totalprice=0;

		echo"<div  class='BuyCarTable'><table><th>序列</th><th>手機名稱</th><th>顏色</th><th>容量</th><th>數量</th><th>單價</th><th>刪除</th>";
		foreach ($_SESSION["gwc"] as $i => $value)
		{	
			echo "<tr>";
			$count=$i+1;
			echo "<td>$count</td>";
			echo "<td><a href='PhoneInf.php?phone=".$_SESSION["gwc"][$i]->phone."'>".$_SESSION["gwc"][$i]->phone."</a></td>";
			echo "<td>".$_SESSION["gwc"][$i]->color."</td>";
			echo "<td>".$_SESSION["gwc"][$i]->mem."</td>";
			echo "<td><select id='se$i' onchange='se($i)' >";
			for($j=1;$j<=20;$j++)
			{
				if ($j!=$_SESSION["gwc"][$i]->num)
					{echo "<option value='$j'>$j</option>";}
				else
					{echo "<option value='$j'selected='selected'>$j</option>";}
			}
			echo"</select></td>";
			echo "<td>$".number_format($_SESSION["gwc"][$i]->price)."</td>";
			echo"<td><a href='BuyCar.php?del=$i'>刪除</a></td>";
			echo "</tr>";
			$totalprice+=($_SESSION["gwc"][$i]->price*$_SESSION["gwc"][$i]->num);
		}
		echo"</table></div>";
		$ftotalprice=number_format($totalprice);
		echo "<form class='BuyCarForm' action='BuyFinal.php' method='get'><label for='totalprice'>總價:</label><input type='text' class='totalprice' name='totalprice' value='\$$ftotalprice' readonly='readonly'>
		<input type='submit'  value='結帳'>
		</form>";
		
	}

	
	

	
	

	
	?>
	<?php include("footer.php");?>
	
</body>
</html>