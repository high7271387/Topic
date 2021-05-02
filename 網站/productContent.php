<?php
    require_once('dbconnect.php');
    header("Content-Type:text/html; charset=utf-8");
    $data = json_decode(file_get_contents("php://input"));
    if($data != ''){
        $id = $data -> id;
    }
    if(isset($id)){
        $sql = "SELECT mid FROM motorcycledata WHERE id = '$id'";

        $result = mysqli_query($connect,$sql);
        if(mysqli_num_rows($result)>0){
            while($row = mysqli_fetch_assoc($result)){
                $moid = $row['mid'];
            }
            // echo json_encode($mid);  
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

?>