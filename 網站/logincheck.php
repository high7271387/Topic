<?php
    require_once('dbconnect.php');
    session_start(); 
    $userip = $_SERVER['REMOTE_ADDR'];
    $query = "SELECT * FROM `login` WHERE `ip` = '$userip'";
    $result = mysqli_query($connect ,$query);
    date_default_timezone_set('Asia/Taipei');
    $nowdate = date("Y-m-d H:i:s");


    function randtext($length) {
        $password_len = $length;    //字串長度
        $password = '';
        $word = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';   //亂數內容
        $len = strlen($word);
        for ($i = 0; $i < $password_len; $i++) {
            $password .= $word[rand() % $len];
        }
        return $password;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/fontset.css">
    <link rel="stylesheet" href="css/nav.css">
    <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script> 
</head>
    <style>
        body{
            background-color: black;
            
        }
        main{
            display: grid;
            grid-template-rows: 120px 60px 1fr;
            grid-template-columns: 20vw 60vw 20vw;
            background-color: #000;
            padding-bottom: 40px;
        }
        main h1{
            grid-row: 2/3;
            grid-column: 2/3;
            font-size: 1.9rem;
            font-weight: bold;
            color:white;
            padding-left: 5px;
            position: relative;
        }
        main h1::after{
            content: '';
            position: absolute;
            border-bottom: 3px red solid;
            width:100%;
            left:0px;
            bottom: 20px;
        }
        main .content{
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            border: 3px solid rgb(235, 235, 235);
            border-radius: 10px ;
            grid-row: 3/4;
            grid-column: 2/3;
            padding:2vh 5vw 4vh 5vw;
            color:white;
            height: 300px;
            font-size: 1.6rem;
            margin-bottom: 40px;
        }
        main .content button{
            position: absolute;
            border: 1px solid rgb(177, 177, 177);
            border-radius: 10px;
            background-color: #000;
            color:azure;
            bottom:-50px;
            right:20px;
            padding: 5px 20px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.4s;
        }
        main .content button:hover{
            background-color: rgb(189, 189, 189);
            color:black
        }
        main .content button:active{
            background-color: rgb(90, 90, 90);
            color:rgb(226, 226, 226)       
        }

        footer{
            text-align: center;
            background: #000;
            color: white;
        }
    </style>
<body>
    <nav>
    <div class="logo"><a href="index.html"> </a></div>
        <div class='buttonarea'>
            <button type='button'><i class="fas fa-align-justify fa-2x"></i></button>
        </div>
        <div class="navlist" id='listItem'>
            <div class="product"> <a href="productList.html"></a> </div>
            <div class="news"> <a href="news.html"></a> </div>
            <div class="member"><a href="userdata.html"></a></div>
            <div class="cart"> <a href="shoppingCart.html"></a></div>
        </div>
    </nav>

    <main>
        <h1>登入</h1>
        <div class="content">
            <?php
                    if(mysqli_num_rows($result)>0){
                        $number = mysqli_num_rows($result);
                        while($row = mysqli_fetch_assoc($result)){
                            if(isset($lastTime)){
                                if(strtotime($lastTime)<strtotime($row['date'])){
                                    $lastTime = $row['date'];
                                }
                            } 
                            else{
                                $lastTime = $row['date'];
                            }
                            if((strtotime($nowdate)  - strtotime($row['date']))/60 >10){
                                $sql = "DELETE FROM `login` WHERE `ip` = '$userip' AND `date` = '$row[date]'";
                                mysqli_query($connect ,$sql);
                                $number--;
                            }
                        }
                        if($number>=3){
                            if( (strtotime($nowdate)  - strtotime($lastTime))/60 <=10 ){
                                header("Refresh: 2.5; url=login.html");
                                mysqli_close($connect);
                                exit('您已經登入失敗達三次，請10分鐘後再試。');
                            }
                        }
                    }
                    if(isset($_COOKIE['username'])){
                        if(($_SESSION["$_COOKIE[randid]"] ==  $_COOKIE['username'])){
                                header("Refresh: 2; url=index.html");
                                mysqli_close($connect);
                                exit('您已經登入。');
                        }
                    }
                
                    if(isset($_REQUEST['username']) && isset($_REQUEST['password']) ){
                        $username = $_REQUEST['username'];
                        $password = $_REQUEST['password'];
                        $newpassword = mysqli_real_escape_string($connect,$password);
                        $query = "SELECT * from `user` WHERE `username` = '$username' AND `password` = '$newpassword' " ;
                        $result = mysqli_query($connect ,$query);
                        if($result){
                            if(mysqli_num_rows($result) > 0) {
                                $row = mysqli_fetch_array($result);
                                $randtest = randtext(30);
                                setcookie("randid","$randtest",time()+36000);
                                setcookie("username","$username",time()+36000);
                                $_SESSION["$randtest"]= $username;
                                $sql = "DELETE FROM `login` WHERE `ip` = '$userip'";
                                mysqli_query($connect ,$sql);
                                echo " $row[name] 您好。稍後將為您跳轉至首頁。";
                                header("Refresh: 2.5; url=index.html");
                            }
                            else{
                                $sql = "INSERT INTO `login` (ip , date) VALUES ('$userip','$nowdate')" ;
                                mysqli_query($connect ,$sql);
                                echo '輸入錯誤，請再次確認。';
                                header("Refresh: 2; url=login.html");
                            }
                        }
                    } 
                
                    else{
                        echo '請輸入帳號密碼';
                        header("Refresh: 2; url=login.html");
                    }
                    
                    mysqli_close($connect);
                    
            ?>
        </div>
        
    </main>

    <footer>
        版權宣告區
    </footer>

    <script src='js/nav.js'></script>

</body>
</html>