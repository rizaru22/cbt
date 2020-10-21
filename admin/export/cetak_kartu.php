<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="../images/favicon2.ico" rel="icon" type="image/x-icon">
<title>Aplikasi CBT UASBN SMK</title>
    <style>
@page {
  size: A4;
  border: 10mm 10mm 10mm 10mm;
  margin: 0;
}
@media print {
  html, body {
    width: 210mm;
    height: 297mm;
  }

  }
 .box{
         border: 1px solid #000;
      }
      .header td{
         border-bottom: 1px solid #000;
      }
      .box td{
         padding: 5px 10px;
      }
</style>
</head>
<body>
<?php
   
include "../../library/config.php";
   
$query = mysqli_query($mysqli, "select * from siswa where id_kelas='$_GET[kelas]' ORDER BY nama");
$no = 1;
echo "<table width='100%' cellspacing='20'><tr>";
while($r = mysqli_fetch_array($query)){
   $password = substr(md5($r['nis']), 0, 5);
   $kls = mysqli_fetch_array(mysqli_query($mysqli, "select * from kelas where id_kelas='$r[id_kelas]'"));
      
   echo"<td class='box' width='335'>

<table width='100%' style='width: 330px' cellspacing='0'>
<tr class='header'>
   <td colspan=2 width='100%' align='center' valign='middle' style='padding: 5px 30px;'>
   <b>KARTU PESERTA UJIAN<br>UASBK SMK TAHUN AJARAN 2019/2020</b>
   </td>
</tr>
            
<tr><td>Nama</td><td>: $r[nama]</td></tr>
<tr><td>Kelas</td><td>: $kls[kelas]</td></tr>
<tr><td>Username</td><td>: <b>$r[nis]</b></td></tr>
<tr><td>Password</td><td>: <b>$password</b></td></tr>

</table>

</td>";

  if($no%2==0) echo "</tr><tr>";
  $no++;

}
echo "</tr></table>";
?>
<script type="text/javascript" src="../../assets/jquery/jquery-2.0.2.min.js"></script>
<script>
$(document).ready(function () {
window.print();
});
    </script>
</body>
</html>
