<?php
if(empty($_SESSION['nis']) or empty($_SESSION['password']) ){
   header('location: login.php');
} 

$row=mysqli_fetch_assoc(mysqli_query($mysqli, "SELECT token FROM token "));
$tokendb=$row['token'];
if(isset($_POST['submit'])){
	if($_POST['token']==$tokendb){
		header('location: ?content=confirm&id='.$_GET['id']);
	}else{
		echo '<div class="alert alert-danger">Maaf, token tidak valid!</div>';
	}
}

$kelas = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM kelas WHERE id_kelas='$_SESSION[kelas]'"));
$ujian = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM ujian WHERE id_ujian='$_GET[id]'"));
?>
<div class="col-md-8 col-md-offset-2">
<div class="padding-20">
<form action="" method="post"> 
<div class="list-group">
    <div class="list-group-item list-heading">
        <h3 class="list-group-item-heading"><b>Konfirmasi Data Peserta</b></h3>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Kode NIK</label>
        <p class="list-group-item-text"><?= $_SESSION['nis'] ?></p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Nama Peserta</label>
        <p class="list-group-item-text"><?= $_SESSION['namalengkap']; ?></p>
    </div>
    <div class="list-group-item">
        <label class="list-group-item-heading">Jenis Kelamin</label>
        <p class="list-group-item-text"></p>
    </div>

    <div class="list-group-item">
        <label class="list-group-item-heading">Mata Pelajaran </label>
        <p class="list-group-item-text"><?= $ujian['judul']; ?></p>
    </div>
                
	<div class="list-group-item">
        <label class="list-group-item-heading">Token <? // echo "$jumsis = $ada"; ?></label>
        <div class="list-group-item-text input-group">
			<input autocomplete="off" name="token" class="input-token form-control field-xs" data-val="true" data-val-required="Kode token wajib diisi" id="KodeToken" maxlength="20" name="KodeToken" placeholder="masukan token" type="text" value="">
        </div>
    </div>
    <div class="list-group-item">
        <div class="row">
            <div class="col-xs-9 col-md-3 "><br>
			
<?php	
//Jika nilai sudah ada tampilkan tombol Sudah Mengerjakan, jika belum ada tampilkan tombol Masuk Ujian
$qnilai = mysqli_query($mysqli, "SELECT * FROM nilai WHERE id_ujian='$_GET[id]' AND nis='$_SESSION[nis]'");
$tnilai = mysqli_num_rows($qnilai);
$rnilai = mysqli_fetch_array($qnilai);

if($tnilai>0 and $rnilai['nilai'] != "")  echo '<a class="btn btn-danger btn-block disabled"> Sudah mengerjakan </a>';
else echo '<button type="submit" name="submit" class="btn btn-success btn-block">SUBMIT</button>';
?>
			</div>
		</div>
    </div>
</div>
</form>
</div>
</div>

