<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<style>
	@page {
  size: A4;
  border: 0;
  margin: 0mm 0mm 0mm 10mm;
  
}
@media print {
  html, body {
    width: 210mm;
    height: 297mm;
  }
  }
  body{
  -webkit-print-color-adjust:exact;
}
    .garis {
    border-bottom: 1px solid black;
    }
    table .garis2 {
    border-collapse: collapse;
    width: 100%;
}

 table .garis2 {
    border: 1px solid black;
}
table .garis2 tr {
    border: 1px solid black;
}
table .garis2 th {
    border: 1px solid black;
     height: 25px;
}
table .garis2 td {
    border: 1px solid black;
   
}
table .tabel3 {
	width: 100%;
	text-align: left;
}
table .tabel4{
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	border-right: 1px solid black;
	border-left: 1px solid black;
}

.kecil{
	font-size: 13px;
}

    </style>
</head>
<body>
	<?php
	include "../../library/config.php";
	include "../../library/function_date.php";
$query = mysqli_query($mysqli, "select * from sekolah LIMIT 1");
while($r = mysqli_fetch_array($query)){
	$namasekolah=$r['nama_sekolah'];
	$kode=$r['kode_sekolah'];
	$nama_kepalasekolah=$r['kepala_sekolah'];
	$nip_kepalasekolah=$r['NIP_kepsek'];
	$proktor=$r['proktor'];
	$nip_proktor=$r["NIP_Proktor"];
	$kabupaten=$r['kabupaten'];
    $kode_kabupaten=$r['kode_kabupaten'];
}
$query2=mysqli_query($mysqli,"select judul,tanggal,(SELECT dayofweek(tanggal)) as hari from ujian WHERE id_ujian='$_GET[ujian]' LIMIT 1");
while($r2 = mysqli_fetch_array($query2)){
	$tanggal=tgl_indonesia($r2['tanggal']);
	$hari=hari_indonesia($r2['hari']);
	$mapel=$r2['judul'];
}

$query4=mysqli_query($mysqli,"select kelas from kelas WHERE id_kelas='$_GET[kelas]' LIMIT 1");
while($r4 = mysqli_fetch_array($query4)){
	$kelas=$r4['kelas'];
}
echo '<table>
	<thead>
		<tr>
			<th><img src="../../images/kopABSEN.PNG" class="img-responsive"></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><!--Table Data Sekolah-->
				<table width="680" cellspacing="0">
					<tbody>
						<tr>
							<td width="100">Kota/Kabupaten</td>
							<td>:</td>
							<td width="290" class="garis">'.$kabupaten.'</td>
							<td>&nbsp;</td>
							<td width="100">Kode</td>
							<td>:</td>
							<td width="190" class="garis">'.$kode_kabupaten.'</td>
						</tr>
						<tr>
							<td width="200">Sekolah</td>
							<td>:</td>
							<td width="290" class="garis">'.$namasekolah.'</td>
							<td>&nbsp;</td>
							<td width="100">Kode</td>
							<td>:</td>
							<td width="190" class="garis">'.$kode.'</td>
						</tr>
						<tr>
							<td>Hari</td>
							<td>:</td>
							<td width="290" class="garis">'.$hari.'</td>
							<td>&nbsp;</td>
							<td width="100">Sesi</td>
							<td>:</td>
							<td width="190" class="garis">&nbsp;</td>
						</tr>
						<tr>
							<td>Tanggal</td>
							<td>:</td>
							<td width="290" class="garis">'.$tanggal.'</td>
							<td>&nbsp;</td>
							<td width="100">Pukul</td>
							<td>:</td>
							<td width="190" class="garis">&nbsp;</td>
						</tr>
						<tr>
							<td>Mata Pelajaran</td>
							<td>:</td>
							<td width="290" class="garis">'.$mapel.'</td>
							<td>&nbsp;</td>
							<td width="100">Kelas</td>
							<td>:</td>
							<td width="190" class="garis">'.$kelas.'</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td><table border="0" class="garis2" >
				<thead>
					<tr >
						<th>No</th>
						<th>Username</th>
						<th>Nama Peserta</th>
						<th>Tanda Tangan</th>
					</tr>
				</thead>
				<tbody>';?>
					<?php 
					$no=1;
$query3 = mysqli_query($mysqli, "SELECT * FROM siswa WHERE id_kelas='$_GET[kelas]' ORDER BY nama");
   while($r3 = mysqli_fetch_array($query3)){
      $n = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM nilai WHERE nis='$r3[nis]' AND id_ujian='$_GET[ujian]'"));
					echo '<tr>
						<td align="center">'.$no.'</td>
						<td>&nbsp;'. $r3['nis'].'</td>
						<td>&nbsp;'. $r3['nama'].'</td>';
						if($no%2==0){
						echo '<td align="center">'.$no.'</td>';
						}else{
						echo '<td align="left">'.$no.'</td>';
						}
					echo '</tr>'; $no++;
				}?>
				<?php echo '</tbody>
			</table></td>
		</tr>
		<tr>
			<td ><table class="tabel3">
				<tbody>
					<tr>
						<td width="370" rowspan="5" valign="top"><p class="kecil">
						<b>Keterangan:</b><br>
						
						1.Dibuat rangkap 2 (dua),masing-masing untuk Sekolah dan Provinsi <br>
						2.Pengawas ruang menyilang nama peserta yang tidak hadir.
						</p>
						<table class="tabel4">
						<tr>
						<td>Jumlah Peserta yang seharusnya hadir</td>
						<td>:</td>
						<td class="garis" width="50">&nbsp;</td>
						<td>orang</td>
						</tr>
						<tr>
						<td>Jumlah Peserta yang tidak hadir</td>
						<td>:</td>
						<td class="garis">&nbsp;</td>
						<td>orang</td>
						</tr>
						<tr>
						<td>Jumlah Peserta hadir</td>
						<td>:</td>
						<td class="garis">&nbsp;</td>
						<td>orang</td>
						</tr>
						</table>
						</td>
						
					</tr>
					<tr >
						<td>&nbsp;</td>
						<td><b>Pengawas 1</b></td>
						<td>&nbsp;</td>
						<td><b>Pengawas 2</b></td>
					</tr>
					<tr  height="100">
					<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr >
					<td>&nbsp;</td>
						<td class="garis">&nbsp</td>
						<td>&nbsp;</td>
						<td class="garis">&nbsp;</td>
					</tr>
					<tr >
					<td>&nbsp;</td>
						<td>NIP. </td>
						<td>&nbsp;</td>
						<td>NIP. </td>
					</tr>
				</tbody>
			</table></td>
		</tr>
	</tbody>
</table>';?>
<script type="text/javascript" src="../../assets/jquery/jquery-2.0.2.min.js"></script>
<script>
$(document).ready(function () {
window.print();
});
    </script>	
</body>
</html>