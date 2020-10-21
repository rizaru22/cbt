<?php
$rnilai = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM nilai WHERE id_ujian='$_POST[ujian]' AND nis='$_SESSION[nis]'"));
	
   $arr_soal = explode(",", $rnilai['acak_soal']);
   $jawaban = explode(",", $rnilai['jawaban']);
   $jbenar = 0;
   for($i=0; $i<count($arr_soal); $i++){
      $rsoal = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM soal WHERE id_ujian='$_POST[ujian]' AND id_soal='$arr_soal[$i]'"));
      if($rsoal['kunci'] == $jawaban[$i]) $jbenar++;
   }
	
   $nilai = $jbenar/count($arr_soal)*100;
	
   mysqli_query($mysqli, "UPDATE nilai SET jml_benar='$jbenar', nilai='$nilai' WHERE id_ujian='$_POST[ujian]' AND nis='$_SESSION[nis]'");
   
   mysqli_query($mysqli, "UPDATE siswa SET status='login' WHERE nis='$_SESSION[nis]'"); 
   
   header('location: ?content=keluar');
   
?>