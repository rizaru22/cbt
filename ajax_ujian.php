<?php
session_start();
include "library/config.php";

if(empty($_SESSION['username']) or empty($_SESSION['password']) ){
   header('location: login.php');
}

//Memproses data ajax ketika memilih salah satu jawaban
if($_GET['action']=="kirim_jawaban"){
   $rnilai = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM nilai WHERE id_ujian='$_POST[ujian]' AND nis='$_SESSION[nis]'"));
	
   $jawaban = explode(",", $rnilai['jawaban']);
   $index = $_POST['index'];	
   $jawaban[$index] = $_POST['jawab'];
	
   $jawabanfix = implode(",", $jawaban);
   mysqli_query($mysqli, "UPDATE nilai SET jawaban='$jawabanfix', sisa_waktu='$_POST[sisa_waktu]' WHERE id_ujian='$_POST[ujian]' AND nis='$_SESSION[nis]'");
	
   echo "ok";

}
