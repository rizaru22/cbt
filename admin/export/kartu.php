<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	
	<link rel="stylesheet" type="text/css" href="../../assets/bootstrap/css/bootstrap.min.css"/>
	<script type="text/javascript" src="../../assets/jquery/jquery-2.0.2.min.js"></script>
	<style>
	@page {
  size: A4;
  border: 0;
  margin: 10mm 0mm 0mm 10mm;
  
}

@media print {
  html, body {
    width: 210mm;
    height: 297mm;
  }
  }
		h2{
			width:100%;
			text-align: center;
		}

		body{
    font-size:13pt;
    font-family: "Times New Roman";
    word-spacing: 4px;
    line-height: 150%;

  -webkit-print-color-adjust:exact;
}
.panel-default {
     border-color: #000000 !important;
}
.panel-heading{
  border-color: #000000 !important;
}

	</style>
</head>
<body>
<?php
include "../../library/config.php";
$query0 = mysqli_query($mysqli, "SELECT nama_sekolah FROM sekolah LIMIT 1");
  while($r = mysqli_fetch_array($query0)){
  	$sekolah=$r['nama_sekolah'];
  
  
  }
$query = mysqli_query($mysqli, "select * from siswa where id_kelas='$_GET[kelas]' ORDER BY nama");
$s = 1;
echo '<table border="0" cellspacing="100"><tr>';
//for($s=1;$s<=15;$s++){
while($r = mysqli_fetch_array($query)){
   $password = substr(md5($r['nis']), 0, 5);
   $kls = mysqli_fetch_array(mysqli_query($mysqli, "select * from kelas where id_kelas='$r[id_kelas]'"));
		echo '<td width="350">';
				echo '<div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h2 class="panel-title"><b>KARTU PESERTA UASBK<br>'.strtoupper($sekolah).'<br>TAHUN AJARAN 2019/2020</b></h2>
            </div>
            <div class="panel-body">
                <div class="row"> 
                <div class=" col-sm-5 ">                                      
                  <table width="300" cellpadding="10" cellspacing="10" border="0">
                    <tbody>
                      <tr>
                        <td>Nama</td>
                        <td>:</td>
                        <td>'.$r['nama'].'</td>
                      </tr>
                      <tr>
                        <td>Kelas</td>
                        <td>:</td>
                        <td>'.$kls['kelas'].'</td>
                      </tr>
                      <tr>
                        <td><b>Username</b></td>
                        <td>:</td>
                        <td><b>'.$r['nis'].'</b></td>
                      </tr>
                   <tr>
                        <td><b>Password</b></td>
                        <td>:</td>
                        <td><b>'.$password.'</b></td>
                      </tr>
                      <tr>
                        <td><div style="width: 2cm; height: 3cm; border: 1px solid #ccc; text-align: center;"><br>Foto 2x3</div></td>
                        <td>&nbsp;</td>
                        <td><img src="../../images/jadwal.png"></td>
                    
                      </tr>
                      </tbody>
                  </table>
           
                </div>
              </div>
            </div>
	
</div>
</div>';
echo '</td><td width="50">&nbsp;</td>';
if($s%2==0) echo "</tr><tr>";
$s++;
}
echo '</tr></table>';
?>
<script type="text/javascript" src="../../assets/jquery/jquery-2.0.2.min.js"></script>
<script>
$(document).ready(function () {
window.print();
});
    </script>
</body>
</html>