				
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
	?>

		<div id="flextop">
		<div id="listleft"> 
				<ul><a id="choose" href="BuyList.php">選擇品牌</a>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Apple">Apple</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=VIVO">VIVO</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=OPPO">OPPO</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Sony">Sony</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Samsung">Samsung</a></li>
					<li class="brand"><a class="brandlink"  href="BuyList.php?Brand=realme">realme</a></li>
				</ul>
		</div> 

		<div id="listmiddle"> 

			 <?php

			$round=0;
			include("dblink.php");
			$sql="";

			if(isset($_GET['Brand']))

				{
					$sql="SELECT * FROM phonebrand WHERE Brand = '".$_GET['Brand']."' LIMIT 20";//選品牌
				}
			else{
				$sql="SELECT * FROM phonebrand LIMIT 20";
			}



			
			$result=mysqli_query($link,$sql);
			if(mysqli_num_rows($result)>0)
			{
				echo"<div id='listtable'><table>";
				while($row = mysqli_fetch_array($result))
       			{

       			if ($round==0)
				 {
					echo "<tr>";
					
				}
				echo "<td><a href='PhoneInf.php?phone=".$row['Phone']."'><img src='img/".$row['Phone'].".jpg' class='phimg' ><br>".$row['Phone']."</a></td>";
				$round++;
				if ($round==4)
				 {
					echo "</tr>";
					$round=0;
				}

				}
				echo"</table></div>";
			}


			echo "<div id='listpage'><p>";
			for($i=0;$i<=10;$i++)//頁數
			{
				$j=$i*20;
				$pgsql="SELECT * FROM phonebrand LIMIT $j,20";//這行要改
				$result=mysqli_query($link,$pgsql);
				if(mysqli_num_rows($result)>0)
					{
						$k=$i+1;
						echo "<a href='http://tw.yahoo.com'>$k</a>";
					}
			}
			echo "</p></div>";
			mysqli_close($link);

			?> 
		</div>
	
	



		
	</div>
	<?php
	include("footer.php");
	?>
	
	</body>











				