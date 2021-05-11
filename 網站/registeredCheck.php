<?php
    require_once('dbconnect.php');
    // require_once('strFilter.php');
    date_default_timezone_set('Asia/Taipei');    
    if( $_SERVER['HTTP_REFERER'] == "" )
    {   
        header("Refresh: 2; url=registered.html");
        exit;
    }
    // echo $_SERVER['HTTP_REFERER'];
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊確認</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/fontset.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="CSS/footer.css">
    <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script> 
</head>
    <style>
        body{
            background-color: black;
            
        }
        main{
            display: grid;
            grid-template-rows: 140px 60px 1fr;
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
            <div class="cart"> <a href="cart.html"></a></div>
            <div class="member"><a href="userdata.html"></a></div>
        </div>
    </nav>

    <main>
        <h1>加入會員</h1>
        <div class="content">
            <?php
                    if(isset($_REQUEST['username'])){
                        $username = $_REQUEST['username'];
                        $query = "SELECT `username` FROM `user` WHERE `username` = '$username'";   
                        $result = mysqli_query($connect,$query);
                        if($result){
                            if(mysqli_num_rows($result) > 0) {
                                echo '此帳號已經被註冊，請使用別的帳號。';
                                header("Refresh: 2; url=registered.html");
                            }
                            else{
                                $password = $_REQUEST['password'];
                                $name = $_REQUEST['name'];
                                $password = $_REQUEST['password'];
                                $idNumber = $_REQUEST['idNumber'];
                                $phone = $_REQUEST['phone'];
                                $email = $_REQUEST['email'];
                                $address = $_REQUEST['address'];
                                // $address = strFilter($address);
                                $date = date ("Y-m-d  H:i:s"); 
                                $query = "INSERT INTO `user` (username, password, name , idNumber , phone, email, address, date) VALUES ('$username', '$password', '$name' , '$idNumber' , '$phone', '$email', '$address', '$date') ";
                                $result = mysqli_query($connect,$query);
                                if(mysqli_affected_rows($connect) > 0){
                                    echo '註冊成功！現在將為您跳轉至登入頁面。';
                                    echo '<a href="login.html"><button type="button">回會員中心</button></a>';
                                    header("Refresh: 2; url=login.html");
                                }
                                elseif(mysqli_affected_rows($connect) == 0)
                                {
                                  echo "無資料新增";
                                }
                                else
                                {
                                  echo  "{$sql} 語法執行失敗，錯誤訊息：" . mysqli_error($connect);
                                  header("Refresh: 2; url=registered.html");
                                }
                            }
                        }
                    }
                    else{
                        echo '請正確輸入資料';
                        header("Refresh: 2; url=registered.html");
                    }
                    mysqli_close($connect);
        
            ?>
        </div>
        
    </main>

    <footer>
        Copyright © 2021 109年電子商務網站建置(臺中)第2期第八組. All rights reserved.
    </footer>

    <script src='js/nav.js'></script>

</body>
</html>