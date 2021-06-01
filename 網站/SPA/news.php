<?php
    require_once('dbconnect.php');
    $data = json_decode(file_get_contents("php://input"));
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
    
    echo json_encode($resdata);

?>