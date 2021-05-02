<?php
    require_once('dbconnect.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    if($data != ''){
        $username = $data->username;
        $email = $data->email;
        $idNumber = $data ->idNumber;
        $sql = "SELECT password FROM `user` WHERE `username` = '$username' AND `email` = '$email' AND `idNumber` = '$idNumber'";
        $result = mysqli_query($connect,$sql);
        if(mysqli_num_rows($result)>0){
            while($row = mysqli_fetch_assoc($result)){
                $resdata = $row['password'];
            }
            echo json_encode($resdata);
        }
        else{
            echo json_encode(null);
        }
        mysqli_close($connect);
    }
    else{
        header("Location: findPassword.html");
    }
?>