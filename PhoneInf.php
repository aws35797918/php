
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

		$sql="SELECT * FROM phoneinformation WHERE Phone='".$_GET['phone']."'";

		$result=mysqli_query($link,$sql);




		if(mysqli_num_rows($result)>0)
		{
			
			while($row = mysqli_fetch_array($result))
			{
			echo "<div id='inftop'><div id='infimg'><img src='img/".$row[0].".jpg'></div>";//照片
			echo"<div id='inftable'><table id='inf'> <caption>手機規格</caption>";//規格表
			
			echo "<tr><td>手機名稱</td>".td($row[0])."</tr>";
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