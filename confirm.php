<?php
if(empty($_SESSION['nis']) or empty($_SESSION['password'])){
   header('location: login.php');
}
$ujian = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM ujian WHERE id_ujian='$_GET[id]'"));
?>

<div class="col-sm-4 col-lg-8">

<div class="list-group">
    <div class="list-group-item list-heading">
        <h3 class="list-group-item-heading"><b>Konfirmasi Data Tes</b></h3>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Kode Tes</label>
        <p class="list-group-item-text"><?= "0000".$ujian['id_ujian'] ?></p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Status Tes</label>
        <p class="list-group-item-text">Aktif</p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Mata Uji Tes</label>
        <p class="list-group-item-text"><?= $ujian['nama_mapel'] ?></p>
    </div>
	<div class="list-group-item">
        <label class="list-group-item-heading">Tanggal Tes </label>
        <p class="list-group-item-text"><?= tgl_indonesia($ujian['tanggal']) ?></p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Waktu Tes </label>
        <p class="list-group-item-text"></p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Alokasi Waktu Tes </label>
        <p class="list-group-item-text"><?= $ujian['waktu']." menit" ?></p>
    </div>
</div>

</div>            
<div class="col-sm-6 col-lg-4 pull-right">

	<div class="alert alert-warning" role="alert">
		<i class="glyphicon glyphicon-warning-sign"></i> 
		Tombol MULAI hanya akan aktif apabila waktu sekarang sudah melewati waktu mulai tes. Tekan tombol F5 untuk merefresh halaman
    </div>
	<div>
        <a href="?content=ujian&ujian=<?= $ujian['id_ujian'] ?>"><button type="submit" class="btn btn-danger btn-block btn-lg">MULAI</button></a>
    </div>

</div>	
