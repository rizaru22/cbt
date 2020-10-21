
<script type="text/javascript" src="script/script_home.js"> </script>

<?php
session_start();

if(empty($_SESSION['username']) or empty ($_SESSION['password'])){
   header('location: login.php');
}

include "../library/config.php";
 $query = mysqli_query($mysqli, "SELECT * FROM sekolah LIMIT 1");
  while($r = mysqli_fetch_array($query)){
  	$sekolah=$r['nama_sekolah'];
  	$npsn=$r['npsn'];
    $kode_sekolah=$r['kode_sekolah'];
  	$kepsek=$r['kepala_sekolah'];
  	$nip_kepsek=$r['NIP_kepsek'];
  	$proktor=$r['proktor'];
    $nip_proktor=$r['NIP_Proktor'];
    $kabupaten=$r['kabupaten'];
    $kode_kabupaten=$r['kode_kabupaten'];
  }
?>
<!--
<div class="jumbotron">
   <div class="container text-center">
      <h2>Selamat Datang <b> <?//= $_SESSION['namalengkap']; ?> </b>!</h2>
      <p>Anda login sebagai <b> <?//= $_SESSION['leveluser']; ?> </b></p>
   </div>
</div>
-->
<div class="container col-lg-12">

  <div class="page-header">
    <h1>Aplikasi Ujian Berbasis Komputer</h1>      
  </div>

          <div class="panel panel-primary">
            <div class="panel-heading">
              <h2 class="panel-title">DATA SEKOLAH</h2>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3" align="center"> <img alt="User Pic" src="../images/logo.png" class="img-responsive"> </div>
             
                <div class=" col-md-6 col-lg-8 "> 
                  <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>Kabupaten</td>
                        <td>:</td>
                        <td><?= $kabupaten; ?></td>
                      </tr>
                      <tr>
                        <td>Kode Kabupaten</td>
                        <td>:</td>
                        <td><?= $kode_kabupaten; ?></td>
                      </tr>
                      <tr>
                        <td>Sekolah</td>
                        <td>:</td>
                        <td><?php echo $sekolah; ?></td>
                      </tr>
                      <tr>
                        <td>Kode Sekolah</td>
                        <td>:</td>
                        <td><?php echo $kode_sekolah; ?></td>
                      </tr>
                      <tr>
                        <td>NPSN</td>
                        <td>:</td>
                        <td><?php echo $npsn; ?></td>
                      </tr>
                      <tr>
                        <td>Kepala Sekolah</td>
                        <td>:</td>
                        <td><?php echo strtoupper($kepsek); ?></td>
                      </tr>
                   <tr>
                        <td>NIP Kepala Sekolah</td>
                        <td>:</td>
                        <td><?php echo $nip_kepsek; ?></td>
                      </tr>
                      <tr>
                        <td>Proktor Utama</td>
                        <td>:</td>
                        <td><?php echo strtoupper($proktor); ?></td>
                      </tr>
                   <tr>
                        <td>NIP Proktor Utama</td>
                        <td>:</td>
                        <td><?php echo $nip_proktor; ?></td>
                      </tr>
                    </tbody>
                  </table>
           
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                         <a  type="button" class="btn btn-primary rounded-0" href="mailto:rizaru.2.2@gmail.com"><i class="glyphicon glyphicon-envelope"></i></a>
                         <?php
                      if($_SESSION['leveluser']=="admin"){
  
                      echo '<span class="pull-right">
                            <button type="button" class="btn btn-warning" onclick="form_data_sekolah()"><i class="glyphicon glyphicon-edit"></i>Ubah</button>                    
                      </span>';
                  }
                      ?>
                    </div>
</div>
</div>
<?php
include "../library/function_form.php";
//Membuat form tambah dan edit user
open_form("modal_data_sekolah", "return save_data()");
   create_textbox("Sekolah", "sekolah", "text", 4, "", "required");
   create_textbox("NPSN", "npsn", "text", 4, "", "required");
   create_textbox("Kode Sekolah", "kode_sekolah", "number", 3, "", "required");
   create_textbox("Kabupaten","kabupaten","text",4,"","required");
   create_textbox("Kode Kabupaten","kode_kabupaten","number",4,"","required");
   create_textbox("Kepala Sekolah", "kepsek", "text", 4, "", "required");
   create_textbox("NIP Kepala Sekolah", "nip_kepsek", "text", 4, "", "required");
   create_textbox("Proktor", "proktor", "text", 4, "", "required");
   create_textbox("NIP Proktor", "nip_proktor", "text", 4, "", "required");
   
close_form();
?>
