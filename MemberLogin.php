<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css.css" /> 
    <title>Document</title>
</head>
<body>
    <?php include("header.php");
        if(isset($_POST['account']))
        {
            
            include("dblink.php");
            $ac=$_POST['account'];
            $pw=$_POST['password'];
            $sql="SELECT Password FROM member WHERE Account='$ac'";
            $result=mysqli_query($link,$sql);
            if(mysqli_num_rows($result)>0)
            {
                
                while($row = mysqli_fetch_array($result))
                {
                    if($row[0]==base64_encode($pw))
                    {
                        setcookie("user",$ac,time()+3600);
                        header("Location:BuyList.php");

                    }
                    else
                    {
                        echo"<script>alert('密碼錯誤')</script>";

                    }
                }
                
            }
            else{echo"<script>alert('查無此帳號')</script>";}
        }

    ?>
    
        


        <div id="logindiv">


            <form action="MemberLogin.php" method="post">
                <h1>會員登入</h1>
                <label for="account">▲</label><input class="login" type="text" placeholder="帳號" name="account"><br>
                <label for="password">▲</label><input class="login" type="password"placeholder="密碼"  name="password"><br>
                <input type="submit" value="登入">
                <p>還不是會員?<a href ="MemberAdd.php">加入會員</a></p>
            </form>
            

        </div>

    
    <?php include("footer.php");?>
    
</body>
</html>