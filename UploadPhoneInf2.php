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
			include("dblink.php");
			
			
			if(isset($_POST['Color'])&&isset($_POST['Memory']))
			{
				$sql="";
				$cn=$_POST['ColorNum'];
				$ph=$_POST['PhoneName'];
				$mn=$_POST['MemoryNum'];
				$ccount=0;
				$mcount=0;
				for($i=0;$i<$_POST['ColorNum'];$i++)
				{

					$color=$_POST['Color'][$i];
					$sql="INSERT INTO phonecolor(Phone,ColorNum,Color) VALUES('$ph','$cn','$color');  ";
					$result=mysqli_query($link,$sql);
					if($result){$ccount++;}
				}


				for($j=0;$j<$mn;$j++)
				{

					$memory=$_POST['Memory'][$j];
					$price=$_POST['Price'][$j];
					$sql="INSERT INTO phonememory(Phone,MemoryNum,Memory,Price) VALUES('$ph','$mn','$memory','$price');  ";
					$result=mysqli_query($link,$sql);
					if($result){$mcount++;}
				}
				


				
				echo"<script>alert('成功新增".$ccount."筆顏色資料 成功新增".$mcount."筆記憶體資料')</script>

				";









			}
			


			?>






		<div class="deftb">
		<form  action="UploadPhoneInf2.php" method="post">
			<table>
			<tr>
			<th>手機上傳步驟:3</th>
			</tr>
			<tr><td>
			<select  name="PhoneName">
				
				<?php
				
				
				$sql="SELECT Phone FROM phonebrand ta WHERE NOT EXISTS ( SELECT Phone FROM phonecolor tb WHERE ta.Phone = tb.Phone)";
				$result=mysqli_query($link,$sql);
				if(mysqli_num_rows($result)>0)
					while($row = mysqli_fetch_array($result))
					{
						echo "<option>".$row['Phone']."</option>"  ;
					}
				
				?>

			</select>
			</td></tr>
			<tr><td>
			顏色種類
			<select  id="colornum" name="ColorNum" onchange="colorbox()">
				<?php 
				for($i=1;$i<=20;$i++)
				{
					echo "<option>$i</option>"  ;

				}
				?>
			</select>
			</td></tr>
			<tr><td>
			<div id="colorbox">
				<br><input type='text' name='Color[]'>
			</div>
			</td></tr>
			<tr><td>
			記憶體容量種類
			<select  id="memorynum"  name="MemoryNum" onchange="memorybox()">
				<?php 
				for($i=1;$i<=5;$i++)
				{
					echo "<option>$i</option>"  ;

				}
				?>
			</select>
			</td></tr>
			<tr><td>
			<div id="memorybox">
				<br>容量<input type='text' class='mp' name='Memory[]'>價格<input type='text' class='mp' name='Price[]'>
			</div>
			</td></tr>

			<tr><td>
			<input type ="submit" value="上傳">
			</td></tr>
			</table>
			</form>
		</div>

			<script>
				function colorbox()
				{
					document.getElementById("colorbox").innerHTML=""
					var cn=document.getElementById("colornum").value;
					for(var i=1;i<=cn;i++)
					{
					document.getElementById("colorbox").innerHTML+="<br><input type='text' name='Color[]'>";
					}
				}

				function memorybox()
				{
					document.getElementById("memorybox").innerHTML=""
					var cn=document.getElementById("memorynum").value;
					for(var i=1;i<=cn;i++)
					{
					document.getElementById("memorybox").innerHTML+="<br>容量<input type='text' class='mp' name='Memory[]'>價格<input type='text' class='mp' name='Price[]'>";
					}
				}
			</script>
		
		

		
	
	<?php include("footer.php");?>
	
</body>
</html>

		


		
		
