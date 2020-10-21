<?php
session_start();
include "../../library/config.php";
include "../../library/function_view.php";

if($_GET['action'] == "form_data"){
   $query = mysqli_query($mysqli, "SELECT * FROM sekolah ");
   $data = mysqli_fetch_array($query);	
   echo json_encode($data);
}
elseif($_GET['action'] == "update"){
$query="UPDATE sekolah SET 
nama_sekolah= '$_POST[sekolah]',
npsn='$_POST[npsn]',
kode_sekolah='$_POST[kode_sekolah]',
kabupaten='$_POST[kabupaten]',
kode_kabupaten='$_POST[kode_kabupaten]',
kepala_sekolah='$_POST[kepsek]',
NIP_kepsek='$_POST[nip_kepsek]',
proktor='$_POST[proktor]',
NIP_Proktor='$_POST[nip_proktor]'
WHERE npsn='$_POST[id]'";
 mysqli_query($mysqli, $query);
 echo "ok";
}