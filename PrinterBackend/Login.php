<?php

// if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
//     // user_name=$userName&password=$password"
    
    if(empty($_POST["nik"]) && empty($_POST["password"]) ){
        badRequest();
        return;
    }
    
    $user = $_POST["nik"]; 
    $userPassword = $_POST["password"];
    
    // $input = json_decode(file_get_contents("php://input"));
    // $user = $input->user_name;
    // $userPassword = $input->password;
    // $user = "IEI19110017"; 
    // $userPassword = "krakatau";
    
    // sql informations
    $servername = "localhost";
    $username = "id17748191_ieiappliprinterink";
    $password = "1262Wing.wira";
    $dbName = "id17748191_printerink";
    $tbl_name = "user_database";
    
    function badRequest(){
        $response['status'] = 400;
        $response['message'] = "bad request parameter";
        $response['content'] = null;
        echo json_encode($response);
    }
    function noAuthorizedRequest(){
        $response['status'] = 401;
        $response['message'] = "not authorized";
        $response['content'] = null;
        echo json_encode($response);
    }
    function successResponse($content){
        $response['status'] = 200;
        $response['message'] = "success";
        $response['content'] = $content;
        echo json_encode($response);
    }
        

    function showRetrievedData ($servername, $username, $password, $dbName, $tbl_name, $user, $userPassword){
    
    
     // Create connection
        $conn = new mysqli($servername, $username, $password, $dbName);

        // Check connection
        if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        }
        
        // echo($user);echo($userPassword);
        // $sql = "SELECT user_id, user_email, user_name, password, information, photo_server FROM $tbl_name WHERE user_email = '$user' AND password = '$userPassword' ";
        $sql = "SELECT * FROM $tbl_name WHERE  nik = $user AND password = $userPassword";
        $result = $conn->query($sql);
        
    
        $sqlArray = array();
        if (mysqli_num_rows($result) > 0) {
             while($row = mysqli_fetch_assoc($result))
            {
                $sqlArray[] = $row;
            }
            
        } else {
            noAuthorizedRequest();
            return;
        }
    
        // echo json_encode($sqlArray);
        successResponse($sqlArray);
        mysqli_close($conn);

        }
   
        showRetrievedData ($servername, $username, $password, $dbName, $tbl_name, $user, $userPassword);
        
?>