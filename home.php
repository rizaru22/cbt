<?php
if( empty($_SESSION['nis']) or empty($_SESSION['password']) ){
   header('location: login.php');
}

//Cek jumlah ujian pada tanggal sekarang
$tgl = date('Y-m-d');
$qujian = mysqli_query($mysqli, "SELECT * FROM ujian t1, kelas_ujian t2 WHERE t1.tanggal='$tgl' AND t1.id_ujian=t2.id_ujian AND t2.id_kelas='$_SESSION[kelas]' AND t2.aktif='Y'");
$tujian = mysqli_num_rows($qujian);
$rujian = mysqli_fetch_array($qujian);

//Jika tidak ada ujian aktif tampilkan pesan
if($tujian < 1){
   echo '<div class="alert alert-info">Belum ada ujian yang aktif saat ini. Silahkan hubungi operator!</div>';
}

//Jika ada satu ujian aktif arahkan ke halaman berikutnya
else if($tujian == 1){
	header('location: ?content=detail&id='.$rujian['id_ujian']);
}

//Jika ada dua atau lebih ujian aktif tampilkan pada tabel
else{

echo '<div class="padding-20">';
echo '<div class="panel panel-default height-450">';
echo '<div class="panel-heading"><h3><b>Daftar Ujian</h3></b></div>';
   echo '<div class="panel-body">
   <table class="table table-striped"><thead>
   <tr>
      <th>No</th>
      <th>Nama Mapel</th>
      <th>Kelas</th>
      <th>Jml. Soal</th>
      <th>Waktu</th>
      <th>Aksi</th>
   </tr></thead><tbody>';
	
	$qujian = mysqli_query($mysqli, "SELECT * FROM ujian t1, kelas_ujian t2 WHERE t1.tanggal='$tgl' AND t1.id_ujian=t2.id_ujian AND t2.id_kelas='$_SESSION[kelas]' AND t2.aktif='Y'");
   $no = 1;
   while($r = mysqli_fetch_array($qujian)){
      
      $kelas_ujian = array();
      $qkelas_ujian = mysqli_query($mysqli, "SELECT * FROM kelas t1, kelas_ujian t2 WHERE  t1.id_kelas=t2.id_kelas AND t2.id_ujian='$r[id_ujian]'");
      while($rku = mysqli_fetch_array($qkelas_ujian)){
         $kelas_ujian[] = $rku['kelas'];
      }
		
      echo'<tr>
         <td>'.$no.'</td>
         <td>'.$r['nama_mapel'].'</td>
         <td>'.implode($kelas_ujian, ", ").'</td>
         <td>'.$r['jml_soal'].'</td>
        <td>'.$r['waktu'].' menit</td>
        <td>';

//Jika nilai sudah ada tampilkan tombol Sudah Mengerjakan, jika belum ada tampilkan tombol Kerjakan
        $qnilai = mysqli_query($mysqli, "SELECT * FROM nilai WHERE id_ujian='$r[id_ujian]' AND nis='$_SESSION[nis]'");
        $tnilai = mysqli_num_rows($qnilai);
        $rnilai = mysqli_fetch_array($qnilai);

        if($tnilai>0 and $rnilai['nilai'] != "") echo '<a class="btn btn-danger">Sudah Mengerjakan</a>';
        else echo '<a href="?content=detail&id='.$r['id_ujian'].'" class="btn btn-success"><i class="glyphicon glyphicon-edit"></i> Kerjakan</a>';
        echo '</td>
     </tr>';
	 $no++;
  }

   echo '</tbody></table>';
   
 echo '</div></div></div>';
}
?>