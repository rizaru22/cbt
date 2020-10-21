<?php

include "../library/config.php";
 $query = mysqli_query($mysqli, "SELECT nama_sekolah,kabupaten FROM sekolah LIMIT 1");
  while($r = mysqli_fetch_array($query)){
  	$sekolah=$r['nama_sekolah'];
   $kabupaten=$r['kabupaten'];
  
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min 4.css">
    <link rel="stylesheet" href="../css/login.css">
    <script type="text/javascript" src="../assets/jquery/jquery-2.0.2.min.js"></script>
     <title>Aplikasi CBT</title>
</head>
<body>
<script type="text/javascript">
$(function(){
   $('.alert').hide();
   $('.login-form').submit(function(){
      $('.alert').hide();
      if($('input[name=username]').val() == ""){
         $('.alert').fadeIn().html('Kotak input <b>Username</b> masih kosong!');
      }else if($('input[name=password]').val() == ""){
         $('.alert').fadeIn().html('Kotak input <b>Password</b> masih kosong!');
      }else{
         $.ajax({
            type : "POST",
            url : "login_cek.php",
            data : $(this).serialize(),
            success : function(data){
               if(data == "ok") window.location = "index.php";	
               else $('.alert').fadeIn().html(data);	
            }
         });
      }
      return false;
   });
});
</script>
    <div class="row no-gutters">
        <div class="col-md-6 no-gutters">
            <div class="leftside ">
                    <label class="btn btn-info rounded-0 atas ">Aplikasi CBT v2.2</label>
            </div>
        </div>
        <div class="col-md-6 no-gutters">
                <div class="rightside d-flex justify-content-center align-items-top">
                    <div class="row no-gutters">
                    <div class="col-xs-6">
                        <div class="jumbotron jumbotron-fluid ">
                                <div class="container-fluid align-items-top ">
                                  <h1  ><?php echo strtoupper($sekolah)." KABUPATEN ".strtoupper($kabupaten) ?></h1>
                                  <p>Selamat datang di aplikasi CBT V 2.2</p>
                                </div>
                        </div>
                    </div>
                   
                     <div class="col login">
                     <div class="alert alert-danger" role="alert"> </div>
                            <form class="login-form">
                               
                                    <div class="form-group">
                                      <label for="username">Username :</label>
                                      <input type="text" class="form-control rounded-0" name="username" id="username"  placeholder="Enter Username">                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="password">Password :</label>
                                      <input type="password" class="form-control bgg rounded-0" name="password" id="password" placeholder="Password">
                                    </div>
                                    
                                    <button type="submit" class="btn btn-info rounded-0">Submit</button>
                                  </form>
                     </div>  
                    </div>     
                </div>
        </div>
    </div>
</body>
</html>