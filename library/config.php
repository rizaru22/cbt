<?php
// Membuat variabel, ubah sesuai dengan nama host dan database pada hosting 
$host	= "localhost";
$user	= "u7944797_admin";
$pass	= "admin12345678";
$db		= "u7944797_cbt";

//Menggunakan objek mysqli untuk membuat koneksi dan menyimpanya dalam variabel $mysqli	
$mysqli = new mysqli($host, $user, $pass, $db);

//<<<<<<< HEAD
//if ($mysqli->connect_error) {
//  die("Connection failed: " . $mysqli->connect_error);
//}
//echo "Connected successfully";
//=======
if ($mysqli -> connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
    exit();
  }

//>>>>>>> 9d67e3d6c3099f63492b240a0acdedfbde3db085
//Membuat variabel yang menyimpan url website dan folder website
$url_website = "http://localhost/";
$folder_website = "";

//Menentukan timezone 
date_default_timezone_set('Asia/Jakarta'); 
?>
