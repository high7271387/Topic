<?php 
    require_once('dbconnect.php');
    if(!isset($_COOKIE['username'])){
        header("Location: login.html");
    }
    if(isset($_REQUEST['oldPassword'])){
        $block1 = 'none';
        $block2 = 'block';
    }
    else{
        $block1 = 'block';
        $block2 = 'none';
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/fontset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/nav.css">
    <title>Document</title>
    <style>
        body {
            margin: 0px;
        }

        #span {
            height: 100px;
            background-color: #000;
        }

        #content {
            height:100vh;
            width: 100%;
            background-color: #000;
        }

        #change {
            position: relative;
            top: 30px;
            left: 18.5%;
            height: 39.5%;
            width: 60.5%;
            background-color: #000;
        }
        #change h1{
            grid-row: 2/3;
            grid-column: 2/3;
            font-size: 1.9rem;
            font-weight: bold;
            color:white;
            padding-left: 5px;
            position: relative;
        }
        #change h1::after{
            content: '';
            position: absolute;
            border-bottom: 3px red solid;
            width:100%;
            left:0px;
            bottom: -10px;
        }

        #changeContent {
            position: relative;
            top: 5vW;
            height: 320px;
        }

        .text {
            float: left;
            text-align: center;
            width:20%;
            height: 50px;
            color: white;
            font-size: 28px;
            margin-top: -2px;
        }

        .inputtext {
            outline: none;
            height: 35px;
            width: 75%;
            border-radius: 17px;
            margin-bottom: 50px;
            font-size: 25px;
            background: #000;
            color: #fff;
        }

        .formitem {
            text-align: center;
            display:flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .formitem button,
        .formitem input {
            background: none;
            color: white;
            font-size: 1.2rem;
            font-weight: bold;
            border-radius: 29px;
        }
        .formitem input[type='submit']{
            padding: 10px 15px;
            cursor: pointer;
        }
        .formitem input[type='submit']:hover{
            background-color:whitesmoke;
            color: black;
        }

        .formitem button:nth-child(2) {
            margin-left: 50px;
        }
        .result p{
            font-size:24px;
        }
        .result a{
            color:white;  
            text-decoration:none; 
            border:1px solid white; 
            border-radius:5px; 
            padding:5px 10px;
        }
        .result a:hover{
            color:black;  
            background:#F5F5F5	;
        }


        @media screen and (max-width:1200px) {
            .text {
                width:100px;
                font-size: 18px;
                margin-top: 4px;
            }
        }
        @media screen and (max-width:731px) {
            .text {
                width: 100%;
                text-align: center;
                height: 35px;
            }
            .inputtext {
                width: 100%;
            }

        }

        @media screen and (max-width:576px) {
            #span {
                height: 40px;
                background-color: #000;
            }

            .formitem button,
            .formitem input {
                margin: 10px 0;
            }

            .formitem button:nth-child(2) {
                margin-left: 0;
            }
        }
    </style>
</head>

<body>

    <nav>
        <div class="logo"><a href="#"> </a></div>
        <div class='buttonarea'>
            <button type='button'><i class="fas fa-align-justify fa-2x"></i></button>
        </div>
        <div class="navlist" id='aaa'>
            <div class="product">
            </div>
            <div class="news"></div>
            <div class="about"></div>
            <div class="address"></div>
        </div>
    </nav>
    <div id="span"></div>
    <div id="content">
        <div id="change">
            <form action="changePassword.php" method="POST">
                <h1>密碼修改</h1>
                <div id="changeContent"  style="display:<?php echo $block1;?>">
                    <div class='formitem'>
                        <label for="oldPassword" class='text'>原密碼</label>
                        <input type="password" class="inputtext" id='oldPassword' name='oldPassword'>
                    </div>
                    <div class='formitem'>
                        <label for="password" class='text'>新密碼</label>
                        <input type="password" class="inputtext" id='password' name='password'>
                    </div>
                    <div class='formitem'>
                        <label for="password2" class='text'>新密碼確認</label>
                        <input type="password" class="inputtext" id='password2' name='password2'>
                    </div>
                    <div class='formitem' >
                        <input type="submit" value="確認修改"></input>
                    </div>
                </div>
            </form>
            <div class="result" style="display:<?php echo $block2;?>; color:white; text-align:center;">
                <?php 
                    
                    $username = $_COOKIE['username'];
                    $oldpassword = $_REQUEST['oldPassword'];
                    $sql1 = "SELECT * FROM user WHERE username = '$username' AND password = '$oldpassword'";
                    $result = mysqli_query($connect , $sql1);
                    if(mysqli_num_rows($result)>0){
                        $newpassword = $_REQUEST['password'];
                        $sql2 = "UPDATE user SET  password= '$newpassword' WHERE username = '$username'";
                        $result2 = mysqli_query($connect , $sql2);
                        if(mysqli_affected_rows($connect)>0){
                            echo '<p>密碼更新成功</p>';
                        }
                        else{
                            echo '<p>更新失敗，請再試一次。</p>';
                        }

                    }
                    else{
                        echo '<p>查不到對應的密碼資料，請確認您所輸入的密碼是否正確。</p>';
                    }
                    
                ?>
                <br>
                 <a href="userdata.html" >回會員中心</a>
            </div>
        </div>
    </div>

</body>
<script src='JS/nav.js'></script>

<script>
    const passwordRules = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{5,}$/;

    document.querySelector('input[type="submit"]').addEventListener('click',e=>{
            if(!passwordRules.test(document.querySelector('#oldPassword').value)){
                document.querySelector('#oldPassword').focus();
                alert('舊密碼格式有誤，請輸入正確的格式');
                e.preventDefault();
                return;
            }
            if(!passwordRules.test(document.querySelector('#password').value)){
                document.querySelector('#password').focus();
                alert('新密碼格式有誤，請輸入正確的格式');
                e.preventDefault();
                return;
            }
            else if(document.querySelector('#password').value !== document.querySelector('#password2').value){
                document.querySelector('#password2').focus();
                alert('新密碼與確認密碼不一致，請再次確認');
                e.preventDefault();
                return;
        }
    });
</script>


</html>