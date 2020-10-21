<?php
include "../../library/config.php";


   $query = mysqli_query($mysqli, "SELECT acak_soal,jawaban,id_ujian FROM nilai WHERE id_nilai='10'");
   $r=mysqli_fetch_array($query);
   $soal=$r[0];
   $jawaban=$r[1];
   $id_ujian=$r[2];
   $array_soal=array();
   $array_soal=explode(",",$soal);
   $array_jawaban=array();
   $array_jawaban=explode(",",$jawaban);
   $combine=array_combine($array_soal,$array_jawaban);
   ksort($combine);
   $data=array();
   foreach($combine as $x=>$x_value){
      $query1=mysqli_query($mysqli,"SELECT kunci FROM soal WHERE id_ujian='$id_ujian' AND id_soal=$x");
      $r1=mysqli_fetch_array($query1);
      if($r1[0]==$x_value){
         $kunci=true;
      }else{
         $kunci=false;
      }
      $row=array();
      $row[]=$x;
      $row[]=$x_value;
      $row[]=$kunci;
      $data[]=$row;

   }
   $output = array("data" => $data);
   echo json_encode($output);

?>
