<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css.css" /> 
	<script type="text/javascript">
		function addadd()
		{
			document.getElementById( 'additem').style.display="none";
			document.getElementById( 'addform').style.display="block";
		}
	</script>
	<link rel="icon" href="img/LOGO.ico" type="image/x-icon" >
	<link rel="shortcut icon" href="img/LOGO.ico" type="image/x-icon" >
	<title>新義全球通-設定常用地址</title>
</head>
<body>
	<?php include("header.php");?>
	<?php
	$ac=$_COOKIE['user'];
	include("dblink.php");

	if(isset($_GET['name'])&&!empty($_GET['name'])&&!empty($_GET['add'])&&!empty($_GET['tel']))
	{
		$name=$_GET['name'];
		$tel=$_GET['tel'];
		$add=$_GET['add'];
		$sql="INSERT INTO addressee(Account,Name,Telephone,Address)VALUES('$ac','$name','$tel','$add')";
		$result=mysqli_query($link,$sql);

	}

	if(isset($_GET['delete']))
	{
		$delete=$_GET['delete'];
		$sql="DELETE FROM addressee WHERE AddId='$delete'";
		$result=mysqli_query($link,$sql);
		if($result)
		{
			echo "<script>alert('成功刪除資料')</script>";
		}
	}


	$sql="SELECT * FROM addressee WHERE Account='$ac'";
    $result=mysqli_query($link,$sql);

    echo"<div class='deftb'><table><tr><th>項目</th><th>訂購資料</th><th>刪除</th></tr>";
    if(mysqli_num_rows($result)>0)
    {	
    	$count=1;
    	while($row = mysqli_fetch_array($result))
        {
        	echo"<tr>";
        	echo "<td> $count </td>";        
        	echo "<td> $row[2]<br> $row[3]<br> $row[4]</td>";
        	
        	echo"<td><a href='SetAddressee.php?delete=$row[0]'>刪除</a></td>";
        	echo"</tr>";
        	$count++;
        	
        }

    }
    echo"<tr><td colspan='3'><div onclick='addadd();' id='additem'>+</div>
    <form id='addform'>
    <label for='name'>收件人</label><input name='name' id='addform1' type='text'  ><br>
    <label for='tel'>電話</label><input name='tel' id='addform2' type='text' ><br>
    <label for='add'>地址</label><input name='add' id='addform3' type='text'  ><br>
    <input type='submit'></form></td></tr></table></div>";

	?>
	<td colspan=""> 
	<?php include("footer.php");?>
	
</body>
</html>