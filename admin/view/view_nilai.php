<script type="text/javascript" src="script/script_nilai.js"> </script>

<?php
session_start();
if(empty($_SESSION['username']) or empty($_SESSION['password']) or $_SESSION['leveluser']!="guru"){
   header('location: ../login.php');
}

include "../../library/function_view.php";
include "../../library/function_form.php";

create_title("check", "Hasil Ujian");
//create_button("primary", "export", "Export", "btn-add", "export_nilai()");
create_button("info", "check", "Cetak Daftar Hadir", "btn-add", "cetak_absen()");
create_button("primary", "print", "Cetak Nilai", "btn-add", "cetak_nilai()");

echo '<input type="hidden" id="id_ujian" value="'.$_GET['ujian'].'">
<input type="hidden" id="id_kelas" value="'.$_GET['kelas'].'">';
	  
create_table(array("NIS", "Nama Siswa", "Jml. Benar", "Nilai","Sisa Waktu"));
?>
