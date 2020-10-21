<?php
include "../../library/config.php";
date_default_timezone_set("Asia/Jakarta");

function acakToken(){
	$tokenOK="";
	$arrayHuruf= array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");
	$token=array_rand($arrayHuruf,5);
	
	for($i=0;$i<=4;$i++){
		 $tokenOK.=$arrayHuruf[$token[$i]];
		
	}

	$hashing=hash("sha256",$tokenOK);
	echo $hashing;
	return $tokenOK;
}

	$startTime = date("H:i");
	$waktu=$startTime;
	//$waktu = date('H:i',strtotime('+30 minutes',strtotime($startTime)));
	$token=acakToken();
	mysqli_query($mysqli, "UPDATE token SET
      waktu = '$waktu',
      token = '$token'");
   echo "ok";


?>