<?php
    require_once ('dbconnect.php');
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
    mysqli_close($connect);



?>