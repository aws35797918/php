<!DOCTYPE html>
<html>
	<head>
		<title>新義全球通-商品管理</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<link rel="stylesheet" type="text/css" href="css.css" /> 
		<link rel="icon" href="img/LOGO.ico" type="image/x-icon" >
		<link rel="shortcut icon" href="img/LOGO.ico" type="image/x-icon" >
		<script type="text/javascript">
			function goadd()
			{
				
				window.location.href='UploadProduct.php';
			}
		</script>
	</head>
	<body>
		<?php
		include("header.php");
		?>
		

		
		<?php


		include("dblink.php");

		


		

		if(isset($_POST['choose']))
		{
			$st="";
			foreach( $_POST['choose'] as $i)
			{
			 $st.="Number = $i OR ";
				
			}

			$desql="DELETE FROM phonebrand WHERE $st 0";
			echo $desql;
			 $result=mysqli_query($link,$desql);	
				if($result){echo "<Script language='javascript'>alert('刪除成功');</Script>";}
		}


		$sql="SELECT * FROM phonebrand";
		$result=mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0)
		{
			echo"<div class='deftb'><form action='ManagementProduct.php' method='post'>";

			echo "<table>";
	            echo "<tr>";
	            	echo "<th>選擇</th>";            	
	                echo "<th>手機</th>";
	                echo "<th>品牌</th>";
	                echo "<th>編輯</th>";
	                echo "<th>刪除</th>";	                

	            echo "</tr>";
	           while($row = mysqli_fetch_array($result))
	           {
	           	echo"<tr>";
	           	echo"<td><input type='checkbox' name='choose[]' value='".$row['Number']."'></td>";
	           	
	           	echo"<td>".$row['Phone']."</td>";
	           	echo"<td>".$row['Brand']."</td>";
	           	
	           	$row['Phone']=str_replace('+','%2B',$row['Phone']);
	           	
	           	echo"<td><a href='EditPhoneInf.php?phone=".$row['Phone']."'>編輯</a></td>";
	           	echo"<td><a href='#'>刪除</a></td>";
	           	echo"<tr>";
	           }
	        echo"</table>";

	        echo "<input type='submit' value='刪除'></form><button onclick='goadd()'>新增</button></div>";

		}




		mysqli_close($link);
		?>
		
		<?php

		include("footer.php");

		?>


        

	</body>


</html>