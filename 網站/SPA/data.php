<?php
    require_once('dbconnect.php');
    require_once('strFilter.php');
    date_default_timezone_set('Asia/Taipei');    
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    if($data != ''){
        if(!is_array($data)){
            if($data -> dataKey == 1){
                $username =  $data -> username;
                $query = "SELECT `username` FROM `user` WHERE `username` = '$username'"; 
                
                $result = mysqli_query($connect,$query);
                if($result){
                    if(mysqli_num_rows($result) > 0) {
                        $msg = array('msg'=>'此帳號已經被註冊，請使用別的帳號', 'status' => false);
                        echo json_encode($msg);
                    }
                    else{
                        $password = $data -> password;
                        $name = $data ->name;
                        $phone = $data ->phone;
                        $idNumber = $data ->idNumber;
                        $email = $data ->email;
                        $address1 = $data ->address1;
                        $address2 = $data ->address2;
                        $address = $address1.$address2;
                        $address = strFilter($address);
                        $date = date ("Y-m-d  H:i:s"); 
                        $query = "INSERT INTO `user` (username, password, name , idNumber , phone, email, address, date) VALUES ('$username', '$password', '$name' , '$idNumber' , '$phone', '$email', '$address', '$date') ";
                        $result = mysqli_query($connect,$query);
                        if(mysqli_affected_rows($connect) > 0){
                            $msg = array('msg'=>'註冊成功！現在將為您跳轉至登入頁面。', 'status' => true);
                            echo json_encode($msg);
                        }
                        elseif(mysqli_affected_rows($connect) == 0)
                        {
                            $msg = array('msg'=>'無資料新增', 'status' => false);
                            echo json_encode($msg);
                        }
                        else
                        {
                            $msg = array('msg'=>'發生錯誤，請再試一次', 'status' => false);
                            echo json_encode($msg);
                        }
                    }
                }
                else{
                    $msg = array('msg'=>'請正確輸入資料', 'status' => false);

                    echo json_encode($msg);
                }
            }
            if($data->dataKey ==4){
                $sql = "SELECT * FROM `user` WHERE `username` = '$data->name'";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $resdata[] = $row;
                    }
                    echo json_encode($resdata);
                }
                else{
                    echo json_encode('沒有查到資料');
                }
            }
            if($data->dataKey ==5){
                $username =  $data -> userdata -> username;
                $name = $data -> userdata ->name;
                $phone = $data -> userdata ->phone;
                $idNumber = $data -> userdata ->idNumber;
                $email = $data -> userdata ->email;
                $address = $data -> userdata ->address;
                $address = strFilter($address);
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
            }
            if($data->dataKey ==6){
                $username =  $data -> username;
                $oldpassword = $data -> oldpassword;
                $sql1 = "SELECT * FROM user WHERE username = '$username' AND password = '$oldpassword'";
                $result = mysqli_query($connect, $sql1);
                if (mysqli_num_rows($result) > 0) {
                    $newpassword = $data -> password;
                    $sql2 = "UPDATE user SET  password= '$newpassword' WHERE username = '$username'";
                    $result2 = mysqli_query($connect, $sql2);
                    if (mysqli_affected_rows($connect) > 0) {
                        echo '密碼更新成功';
                    } else {
                        echo '更新失敗，請再試一次。';
                    }
                } else {
                    echo '查不到對應的密碼資料，請確認您所輸入的密碼是否正確。';
                }
            }
            if($data->dataKey ==7){
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
            if($data->dataKey ==8){
                $number = $data -> dataNumber;
                $index = $data ->dataindex;
                $newsrows = $data -> needNewsRows;
                $sql = "SELECT id,title,content,Thumbnail FROM news ORDER BY ABS( DATEDIFF( date, NOW() ) )LIMIT $index , $number";
                
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $resdata[] = $row;
                    }
                }   
                if($newsrows == true){
                    $sql2 = "SELECT COUNT(*) FROM news";
                    $result2 = mysqli_query($connect,$sql2);
                    $row2 = mysqli_fetch_assoc($result2);
                    $resdata[] = $row2['COUNT(*)'];
                }
            }
            if($data->dataKey ==9){
                $id = $data -> id;
                $sql = "SELECT * FROM news WHERE id = '$id'";
                $result = mysqli_query($connect,$sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $resdata[] = $row;
                    }
                }   
                echo json_encode($resdata);
            }
            if($data->dataKey == 10){
                $sql = "select a.typename,a.id,a.class,b.color1 from (SELECT * FROM motorcycledata WHERE open = 1 GROUP by mid ) a LEFT JOIN `motorcycleimg` b on a.id=b.mid GROUP by b.mid";
                mysqli_query($connect ,"SET NAMES UTF8");
                $result = mysqli_query($connect , $sql);
                if(mysqli_num_rows($result)>0){
                    while($row = mysqli_fetch_assoc($result)){
                        $resdata[] = $row;
                    }
                    echo json_encode($resdata);
                }
                else{
                    echo json_encode('沒有查到資料');
                }
            }
            if($data->dataKey == 11){
                $id = $data -> id;
                if(isset($id)){
                    $sql = "SELECT mid FROM motorcycledata WHERE id = '$id'";
                    $result = mysqli_query($connect,$sql);
                    if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_assoc($result)){
                            $moid = $row['mid'];
                        }
                        $sql2 = "select a.name,a.typename,a.price, a.LWH, a.Wheelbase, a.Displacement, a.Engine, a.Tire_front, a.Tirerear, a.Curbweight, a.Frontbrake, a.brakediameter, 
                        a.Rearbrake, a.Frontmaterial, a.Rearwheelmaterial, a.Headlight, a.Positioning_light, a.brake_lights, a.Frontturn, 
                        a.Rear_direction, a.Dashboard, a.Main_switch, a.Anti_theft_device, a.Cushion, a.other, a.mid,
                        b.classname, b.color1, b.DescriptionColor1, b.color2, b.DescriptionColor2, b.color3, b.DescriptionColor3, b.color4, b.DescriptionColor4, b.color5, b.DescriptionColor5, b.banner
                        from (SELECT * FROM motorcycledata WHERE mid = '$moid') a LEFT JOIN `motorcycleimg` b on a.id=b.mid ";
                        $result2 = mysqli_query($connect,$sql2);
                        if(mysqli_num_rows($result2)>0){
                            while($row2 = mysqli_fetch_assoc($result2)){
                                $motorcycle[] = $row2;
                            }
                        echo json_encode($motorcycle);
                        }
                    }
                    else{
                        $motorcycle = null;
                        echo json_encode($motorcycle);
                    }
                }
            }
            if($data->dataKey == 12){
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

                $data = json_decode(file_get_contents("php://input"));
                if(isset($data -> username)){
                    $username = $data -> username;
                }
                else{
                    echo '請輸入帳號';
                    exit();
                }
                
                if(isset($data -> password)){
                    $password = $data -> password;
                }
                else{
                    echo '請輸入密碼';
                    exit();
                }
                
                $userip = $_SERVER['REMOTE_ADDR'];
                $query = "SELECT * FROM `login` WHERE `ip` = '$userip'";
                $result = mysqli_query($connect ,$query);
                date_default_timezone_set('Asia/Taipei');
                $nowdate = date("Y-m-d H:i:s");
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
                            mysqli_close($connect);
                            echo '您已經登入失敗達三次，請10分鐘後再試。';
                            exit();
                        }
                    }
                }
                $newpassword = mysqli_real_escape_string($connect,$password);
                $query = "SELECT * from `user` WHERE `username` = '$username' AND `password` = '$newpassword' " ;
                $result = mysqli_query($connect ,$query);
                if($result){
                    if(mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_array($result);
                        $randtest = randtext(30);
                        $_SESSION["$randtest"]= $username;
                        $sql = "DELETE FROM `login` WHERE `ip` = '$userip'";
                        mysqli_query($connect ,$sql);
                        echo json_encode( array('randid'=>$randtest, 'username'=>$username, 'name'=>$row['name']));
                    }
                    else{
                        $sql = "INSERT INTO `login` (ip , date) VALUES ('$userip','$nowdate')" ;
                        mysqli_query($connect ,$sql);
                        echo '輸入錯誤，請再次確認。';
                    }
                }           
            }
            if($data->dataKey == 13){
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
            }
        }
        else{
            if($data[1] ==2){
                foreach($data[0] as $item){
                        $sql = "SELECT a.mid,a.name,a.price,b.color1, b.DescriptionColor1, b.color2, b.DescriptionColor2, b.color3, b.DescriptionColor3, b.color4, b.DescriptionColor4, b.color5, 
                        b.DescriptionColor5 FROM (SELECT * FROM motorcycledata WHERE `name` = '$item')a LEFT JOIN motorcycleimg b on a.id = b.mid GROUP by b.mid";
                        $result = mysqli_query($connect,$sql);
                        if(mysqli_num_rows($result)>0){
                            while($row = mysqli_fetch_assoc($result)){
                                $resdata[] = $row;
                            }
                        }
                    
                }
                echo json_encode($resdata);   
            }
            if($data[1] == 3){
                date_default_timezone_set('Asia/Taipei');    
                $date = date ("Y-m-d  H:i:s"); 
                $orderSn = date('Ymd') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
                foreach($data[0] as $item){
                    $str = $item -> remark;
                    $sql = "INSERT INTO `orderdata` (`tracking_number`,`username`, `p_name`, `p_number`,`p_color`,`p_price`, `p_remark`, `date`) VALUES ('$orderSn','$item->username','$item->product','$item->number','$item->color','$item->price','$str','$date') ";
                    $result = mysqli_query($connect , $sql);
                    if(mysqli_affected_rows($connect) <= 0){
                        echo 0;
                        exit();
                    }
                }
                echo "送出成功，您的訂單編號是：$orderSn 。";
            }
        }
        mysqli_close($connect);
    }
?>