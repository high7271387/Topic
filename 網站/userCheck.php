<?php
    require_once('dbconnect.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    $sql = "SELECT * FROM `user` WHERE `username` = '$data'";
    $result = mysqli_query($connect,$sql);
    if(mysqli_num_rows($result)>0){
        echo json_encode(true);
    }
    else{
        echo json_encode(false);
    }
    mysqli_close($connect);

?>