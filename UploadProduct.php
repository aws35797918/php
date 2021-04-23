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
	<div id="flextop">
		<?php
		include("adminleft.php");
		?>

	<div id="listmiddle"> 
		
		
		<form  enctype="multipart/form-data" action="UpdateProduct.php" method="post">
		<table>
			<tr>
				<td>手機名稱</td>
				<td><input type="text" name="Phone"></td>
			</tr>
			<tr>
				<td>品牌名稱</td>
				<td><select  name="Brand">

		                     <option value="Apple"> Apple </option>

		                     <option value="Samsung"> Samsung </option>

		                     <option value="OPPO"> OPPO </option>

		                     <option value="VIVO"> VIVO </option>

		                     <option value="realme"> realme </option>

		                     <option value="HTC"> HTC </option>

		                     <option value="Sony"> Sony </option>

		                     <option value="Other"> 其他  </option>
		        </select></td>
		    </tr>
		    <tr>
		    	<td colspan="2"><input type="file" name="Photo"></td>
		    </tr>
		    <tr>
		    	<td colspan="2"><input type="submit" value="上傳"></td>
		    </tr>
		   </table>
        

        
        </table>
        </form>




        <?php
        	include("dblink.php");

			if(isset($_FILES['Photo']['name']))//確認有沒有接收到POST
			{
				if($_FILES['Photo']['name']!=""&&$_POST['Phone']!="")
				{//確認有無完整填寫表單
					$Phone =$_POST['Phone'];
					$Brand =$_POST['Brand'];


					$sesql="SELECT *FROM phonebrand WHERE Phone='$Phone'";
					$result=mysqli_query($link,$sesql);
					if(mysqli_num_rows($result)>0)//判斷有無重複資料
					{
						echo "<Script language='javascript'>alert('有重複資料!')</Script>";
					}
					else
					{
						$tmp=$_FILES['Photo']['tmp_name'];
						move_uploaded_file($tmp,"./img/".$Phone.".jpg");
						
						echo"...";
						$upsql="INSERT INTO  phonebrand(Phone,Brand)VALUE('$Phone','$Brand')";
						$result=mysqli_query($link,$upsql);	
						if($result){echo "<Script language='javascript'>alert('上傳成功');</Script>";}
						
						else{echo "<Script language='javascript'>alert('請完整填寫表單');</Script>";}
					}
			    }
			}
			mysqli_close($link);
        ?>
		
	</div>
	</div>
	<?php include("footer.php");?>
	
</body>
</html>


