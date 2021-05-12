<?php
// SELECT tracking_number, GROUP_CONCAT(p_color),GROUP_CONCAT(p_name),GROUP_CONCAT(p_price)  FROM orderdata GROUP BY tracking_number
    require_once('dbconnect.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    if($data != ''){
        $number = $data->number;
        $username = $data->username;
        if($number!=''){
            $sql = "SELECT tracking_number, GROUP_CONCAT(p_color)p_color,GROUP_CONCAT(p_name)p_name,GROUP_CONCAT(p_price) p_price,date,status FROM orderdata WHERE tracking_number = '$number' AND username = '$username' GROUP BY tracking_number";
            $result = mysqli_query($connect,$sql);
            if(mysqli_num_rows($result)>0){
                while($row = mysqli_fetch_assoc($result)){
                    $orderdata[] = $row;
                }
                echo json_encode($orderdata);
            }
            else{
                echo 0;
            }
        }
        else{
            $date1 = $data->date1;
            $date2 = $data->date2;
            $username = $data->username;
            if($date1 != '' && $date2 != ''){
                $sql = "SELECT tracking_number, GROUP_CONCAT(p_color)p_color,GROUP_CONCAT(p_name)p_name,GROUP_CONCAT(p_price) p_price,date,status FROM orderdata WHERE date>='$date1' 
                AND (DATE_ADD(date,INTERVAL -1 DAY)) <= '$date2' AND username = '$username' GROUP BY tracking_number";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $orderdata[] = $row;
                    }
                    echo json_encode($orderdata);
                }
                else{
                    echo 0;
                }
            }
            elseif($date1!=''){
                $sql = "SELECT tracking_number, GROUP_CONCAT(p_color)p_color,GROUP_CONCAT(p_name)p_name,GROUP_CONCAT(p_price) p_price,date,status FROM orderdata WHERE date>='$date1' AND username = '$username'
                GROUP BY tracking_number";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $orderdata[] = $row;
                    }
                    echo json_encode($orderdata);
                }
                else{
                    echo 0;
                }
            }
            elseif($date2!=''){
                $sql = "SELECT tracking_number, GROUP_CONCAT(p_color)p_color,GROUP_CONCAT(p_name)p_name,GROUP_CONCAT(p_price) p_price,date,status 
                FROM orderdata  WHERE (DATE_ADD(date,INTERVAL -1 DAY)) <= '$date2' AND username = '$username' GROUP BY tracking_number";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $orderdata[] = $row;
                    }
                    echo json_encode($orderdata);
                }
                else{
                    echo 0;
                }
            }
            else{
                $sql = "SELECT tracking_number, GROUP_CONCAT(p_color)p_color,GROUP_CONCAT(p_name)p_name,GROUP_CONCAT(p_price) p_price,date,status  FROM orderdata WHERE username = '$username' GROUP BY tracking_number";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $orderdata[] = $row;
                    }
                    echo json_encode($orderdata);
                }
                else{
                    echo 0;
                }
            }
        }


    }   


?>