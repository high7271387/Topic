<?php
    require_once('dbconnect.php');
    // require_once('strFilter.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    if($data==''){
        header('Location: login.html');
        exit('錯誤');
    }
    else{
        date_default_timezone_set('Asia/Taipei');    
        $date = date ("Y-m-d  H:i:s"); 
        $orderSn = date('Ymd') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
        foreach($data as $item){
            $str = $item -> remark;
            // $str = strFilter($str);
            $sql = "INSERT INTO `orderdata` (`tracking_number`,`username`, `p_name`, `p_number`,`p_color`,`p_price`, `p_remark`, `date`) VALUES ('$orderSn','$item->username','$item->product','$item->number','$item->color','$item->price','$str','$date') ";
            $result = mysqli_query($connect , $sql);
            if(mysqli_affected_rows($connect) <= 0){
                echo 0;
                exit();
            }

        }
        echo "送出成功，您的訂單編號是：$orderSn 。";
    }





?>