
<nav class="main-nav">
      <!--Menu Sidebar-->
            <ul id="nav" class="main-nav-ul">
<?php
function menu_admin($link, $icon, $title){
   $item = '<li><a href="'.$link.'" class="menu"><i class="glyphicon glyphicon-'.$icon.'"></i> '.$title.'</a></li>';
   return $item;
}

if($_SESSION['leveluser'] == "admin"){	
   echo menu_admin("home.php", "home", "Beranda");
   echo menu_admin("view/view_user.php", "user", "User");
   echo menu_admin("view/view_kelas.php", "signal", "Kelas");
   echo menu_admin("view/view_siswa.php", "list-alt", "Siswa");
   echo menu_admin("view/view_ujian.php", "edit", "Ujian");
   echo menu_admin("view/view_klsujian.php", "sort-by-attributes", "Kelas Ujian");
}
else{
//elseif($_SESSION['leveluser'] == "operator"){
   echo menu_admin("home.php", "home", "Beranda");
   echo menu_admin("view/view_ujian_operator.php", "check", "Ujian");
   echo menu_admin("view/view_siswa_operator.php", "list-alt", "Siswa");
//}
//else{
  // echo menu_admin("home.php", "home", "Beranda");
   echo menu_admin("view/view_ujian_teacher.php", "edit", "Soal dan Nilai");
}

   echo menu_admin("view/view_profil.php", "user", ucwords($_SESSION['namalengkap']));
   echo menu_admin("logout.php", "off", "Keluar");
?>

</ul>   
</nav>
