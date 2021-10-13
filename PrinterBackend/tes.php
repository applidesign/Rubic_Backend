<?php


    $servername = "localhost";
    $username = "id17748191_ieiappliprinterink";
    $password = "1262Wing.wira";
    $dbName = "id17748191_printerink";
    $tbl_name = "user_database";
    $conn = new mysqli($servername, $username, $password, "id17748191_printerink");
    
    if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
    echo("success");
    $conn->close();
?>