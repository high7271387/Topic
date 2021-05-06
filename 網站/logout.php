<?php
    session_start(); 
    // unset($_SESSION['username']);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            <div class="about"> <a href="about.html"></a></div>
            <div class="member"><a href="userdata.html"></a></div>
        </div>
    </nav>

    <main>
        <div class="content">
            <?php
                    setcookie('username','',time()-3600);
                    echo '您已經登出，稍後將為您跳轉至首頁';
                    header("Refresh: 2; url=index.html");

            ?>
        </div>
        
    </main>

    <footer>
        Copyright © 2021 109年電子商務網站建置(臺中)第2期第八組. All rights reserved.
    </footer>

    <script src='js/nav.js'></script>

</body>
</html>