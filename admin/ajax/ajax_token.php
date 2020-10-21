<?php
//session_start();
include "../../library/config.php";
date_default_timezone_set("Asia/Jakarta");

if($_GET['action'] == "ambilToken"){
$query = mysqli_query($mysqli, "SELECT * FROM token ");
   $data = mysqli_fetch_array($query);	
   echo json_encode($data);
}
?>