<script type="text/javascript" src="script/script_ujian_operator.js"> </script>

<?php
session_start();
if(empty($_SESSION['username']) or empty($_SESSION['password'])){
 header('location: ../login.php');
}

include "../../library/config.php";
include "../../library/function_view.php";

create_title("edit", "Manajemen Ujian");
create_button("success", "refresh", "Release Token", "btn-refresh", "token()");
echo '<hr/><div class="alert alert-success" id="tampiltoken"><p>Klik Tombol Untuk melihat Token!</p></div>';

echo '<hr/><div class="alert alert-info"><p>Klik pada nama kelas untuk mengaktifkan atau menon-aktifkan ujian pada kelas tersebut!</p></div>';

create_table(array("Judul Ujian", "Kelas"));
?>