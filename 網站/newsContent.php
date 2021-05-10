<?php
    require_once('dbconnect.php');
    $id = $_REQUEST['id'];
    $sql = "SELECT * FROM news WHERE id = '$id'";
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        while($row = mysqli_fetch_assoc($result)){
            $data[] = $row;
        }
    }   
    $title = $data[0]['title'];
    $content =  $data[0]['content'];
    $date = $data[0]['date'];
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
            position: relative;
            border: 3px solid rgb(235, 235, 235);
            border-radius: 10px ;
            grid-row: 3/4;
            grid-column: 2/3;
            padding:2vh 5vw 4vh 5vw;
            color:white;
            min-height: 300px;
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

        main .content .date{
            position: absolute;
            bottom:20px;
            right:2vw;
            color:white; 
            margin-top:40px;
        }
        main .content .newsContent{
            margin-bottom:50px;
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
        <h1> <?php  echo $title ?></h1>
        <div class="content">
           <p class='newsContent'><?php echo  $content ?> </p> 
            <p class='date'>最後更新日期：<?php echo  $date ?> </p>
        </div>
        
    </main>

    <footer>
        Copyright © 2021 109年電子商務網站建置(臺中)第2期第八組. All rights reserved.
    </footer>

    <script src='js/nav.js'></script>
    <script>
        document.title = "<?php echo $title;?>";
    </script>

</body>
</html>