<?php
    require_once('dbconnect.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));

    if($data==''){
        header('Location: login.html');
        exit('錯誤');
    }
    else{
        foreach($data as $item){
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


?>