				
<?php
include("dblink.php");
$round=0;
if(isset($_GET['Brand']))

				{	
					

					$sql="SELECT * FROM phonebrand WHERE Brand = '".$_GET['Brand']."' LIMIT 20";//選品牌
					if($_GET['Brand']=='true') $sql="SELECT * FROM phonebrand  LIMIT 20";
					$result=mysqli_query($link,$sql);
			
					if(mysqli_num_rows($result)>0)
					{
						
						while($row = mysqli_fetch_array($result))
		       			{

		       			if ($round%4==0)
						 {
							echo "<div class='row'>";
							
						}
						echo "<div class='col-12 col-sm-6 col-lg-3'><a href='PhoneInf.php?phone=".$row['Phone']."'><img src='img/".$row['Phone'].".jpg' class='phimg' ><br>".$row['Phone']."</a></div>";
						$round++;
						if ($round%4==0||$round==mysqli_num_rows($result))
						 {
							echo "</div>";
							
						}

						}
						
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



				}
			else{

?>



<!DOCTYPE html>
<html>
	<head>
		<title>**通信行</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		 
		 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script> 
		<link rel="stylesheet" type="text/css" href="css.css" >
		<script type="text/javascript">
			$(window).ready(function(){
				$('#choosebrand').change(function(){

					//location.href='BuyList.php?Brand='+$(this).val();

					$.ajax(
					 {
			          type: "GET",
			          url: "BuyList.php",
			          dataType: "html",
			          data: {Brand: $(this).val()},
			          success: function(data) {
			            $("#listitem").html(data);
			            },
			          error: function(xhr) {
			            alert(xhr.status);
			            }     
			          });




					})
			})
		</script>
	</head>
	<body id="listbody" >
	<?php
	include("header.php"); 
	?>
		
		
		<!-- <div id="listleft" class='col-1  col-md-2'> 
				<ul><a id="choose" href="BuyList.php">選擇品牌</a>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Apple">Apple</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=VIVO">VIVO</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=OPPO">OPPO</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Sony">Sony</a></li>
					<li class="brand"><a  class="brandlink" href="BuyList.php?Brand=Samsung">Samsung</a></li>
					<li class="brand"><a class="brandlink"  href="BuyList.php?Brand=realme">realme</a></li>
				</ul>
		</div>  -->

		<div id="listmiddle" > 
			<div class="chdiv">
			<select id='choosebrand'>
				<option value="true">選擇品牌</option>
				<option value="true">全部</option>
				<option value="Apple">Apple</option>
				<option value="VIVO">VIVO</option>
				<option value="OPPO">OPPO</option>
				<option value="Sony">Sony</option>
				<option value="Samsung">Samsung</option>
				<option value="realme">realme</option>
			</select>
			</div>
			<div id="listitem">
			 <?php
			 

			
			
			

			
				$sql="SELECT * FROM phonebrand LIMIT 20";
			



			
			$result=mysqli_query($link,$sql);
			
			if(mysqli_num_rows($result)>0)
			{
				
				while($row = mysqli_fetch_array($result))
       			{

       			if ($round%4==0)
				 {
					echo "<div class='row'>";
					
				}
				echo "<div class='col-12 col-sm-6 col-lg-3'><a href='PhoneInf.php?phone=".$row['Phone']."'><img src='img/".$row['Phone'].".jpg' class='phimg' ><br>".$row['Phone']."</a></div>";
				$round++;
				if ($round%4==0||$round==mysqli_num_rows($result))
				 {
					echo "</div>";
					
				}

				}
				
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




<?php
}?>






				