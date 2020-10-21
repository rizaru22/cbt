<?php
  session_start();
  include "library/config.php";
  mysqli_query($mysqli, "UPDATE siswa SET status='off' WHERE nis='$_SESSION[nis]'");
  
  session_destroy();
  header('location: login.php');
?>
