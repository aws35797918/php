<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css.css" /> 
    <link rel="icon" href="img/LOGO.ico" type="image/x-icon" >
    <link rel="shortcut icon" href="img/LOGO.ico" type="image/x-icon" >
    <title>新義全球通-會員登入</title>
</head>
<body>
    <?php include("header.php");

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
                        session_start();
                        
                        $bsql="SELECT * FROM buycar WHERE Account='".$ac."'";
                        $bresult=mysqli_query($link,$bsql);
                        if(mysqli_num_rows($bresult)>0)
                        {
                            $c=0;

                            while($brow = mysqli_fetch_array($bresult))
                            {
                                $arr[$c] = new BuyCarItem;

                                $arr[$c]->SetValue($brow[1],$brow[2],$brow[3],$brow[4],$brow[5] );

                                $c++;

                            }
                            $_SESSION['gwc']=$arr;
                        }



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