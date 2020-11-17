<?php
session_start();
ob_start();

include "library/config.php";
include "library/function_date.php";

//Mengecek status login
if( empty($_SESSION['nis']) or empty($_SESSION['password']) ){
   header('location: login.php');
}
?> 

<html>
<head>
<link href='../images/favicon.ico' rel='shortcut icon'>
   <title>Ujian Berbasis Komputer</title>

   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width,initial-scale=1" />

   <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css"/>
   <link type="text/css" rel="stylesheet" href="assets/dataTables/css/dataTables.bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="css/style.css"/>
	
   <script type="text/javascript" src="assets/jquery/jquery-2.0.2.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="js/main.js"></script>
 
<body>
<nav class="navbar ">  
   <div class="container-fluid">
      <div class="row">
			<div class="col-md-9 judul">
				<img src="images/judul.png">
			</div>
			<div class="col-md-3 meta">
				<img src="images/avatar.gif" width="60">
				<h5>Selamat Datang</h5>
				<b><?= $_SESSION['namalengkap'] ?></b><br>
				<a href="?content=keluar"><b> Logout </b><i class="glyphicon glyphicon-play"></i></a>
			</div>
	   </div>
   </div>
</nav>	

<section id="content"> 	
   <div  class="fluid-container">
      <div class="row">
         <div class="col-md-12">
<?php
$content = isset($_GET['content']) ? $_GET['content'] : 'home';
$kosong = true;

$page = array('home', 'ujian', 'detail', 'confirm', 'ujian', 'selesai', 'keluar');
foreach($page as $pg){
	if($content == $pg and $kosong){
		include $pg.'.php';
		$kosong = false;
	}
}

if($kosong){
	echo '<div class="col-md-12"><br><br><div class="alert alert-warning"><b>Sorry</b>, Halaman tidak ditemukan!</div></div>';
}	
?>		 
		 </div>
      </div>
   </div>
</section>

<footer > 
   <div class="container">
      <p class="text-center">Copyright &copy; rizaru.2.2@gmail.com</p>
   </div>
</footer>
</body>
</html>
