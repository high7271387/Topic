 <?php   
    header("Content-Type:text/html; charset=utf-8");
    $connect = mysqli_connect("localhost","","","store");
    mysqli_query($connect ,"SET NAMES UTF8");
    if (mysqli_connect_errno($connect)) 
    { 
        echo "連接資料庫失敗: " . mysqli_connect_error(); 
    } 
?>
