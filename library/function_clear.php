<?php
function clear_app(){
   if(file_exists("view/index.php")) unlink("view/index.php");
   if(file_exists("view/view_kelas.php")) unlink("view/view_kelas.php");
   if(file_exists("view/view_klsujian.php")) unlink("view/view_klsujian.php");
   if(file_exists("view/view_nilai.php")) unlink("view/view_nilai.php");
   if(file_exists("view/view_siswa.php")) unlink("view/view_siswa.php");
   if(file_exists("view/view_ujian.php")) unlink("view/view_ujian.php");
   if(file_exists("ajax/ajax_kelas.php")) unlink("ajax/ajax_kelas.php");
   if(file_exists("ajax/ajax_klsujian.php")) unlink("ajax/ajax_klsujian.php");
   if(file_exists("ajax/ajax_nilai.php")) unlink("ajax/ajax_nilai.php");
   if(file_exists("ajax/ajax_siswa.php")) unlink("ajax/ajax_siswa.php");
   if(file_exists("ajax/ajax_ujian.php")) unlink("ajax/ajax_ujian.php");
   if(file_exists("script/script_kelas.php")) unlink("script/script_kelas.php");
   if(file_exists("script/script_klsujian.php")) unlink("script/script_klsujian.php");
   if(file_exists("script/script_nilai.php")) unlink("script/script_nilai.php");
   if(file_exists("script/script_siswa.php")) unlink("script/script_siswa.php");
   if(file_exists("script/script_ujian.php")) unlink("script/script_ujian.php");
}
?>