<?php
    require_once('dbconnect.php');

    if(isset($_REQUEST['username'])){
        $username = $_REQUEST['username'];
        $name = $_REQUEST['name'];
        $phone = $_REQUEST['phone'];
        $idNumber = $_REQUEST['idNumber'];
        $email = $_REQUEST['email'];
        $address = $_REQUEST['address'];
    
        $sql = "UPDATE `user` SET `name` = '$name', `phone`= '$phone' , `idNumber` = '$idNumber' , `email` = '$email' , `address`='$address'  WHERE `username` = '$username' ";
        $result = mysqli_query($connect,$sql);
        if(mysqli_affected_rows($connect) > 0){
            echo "資料更新成功";
        }
        elseif(mysqli_affected_rows($connect) == 0){
            echo "資料更新失敗";
        }
        else{
            echo  "{$sql} 語法執行失敗，錯誤訊息：" ;
        }
        mysqli_close($connect);
    }
    else{
        header("Location: index.html");
    }


?>