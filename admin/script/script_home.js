var save_method, table;
function form_data_sekolah(){

	 $.ajax({
      url : "ajax/ajax_home.php?action=form_data",
      type : "GET",
      dataType : "JSON",
      success : function(data){
          	$('#modal_data_sekolah').modal('show');
   			$('#modal_data_sekolah form')[0].reset();
   			$('.modal-title').text('Data Sekolah');
			 $('#id').val(data.npsn);
         $('#sekolah').val(data.nama_sekolah);
          $('#kode_sekolah').val(data.kode_sekolah);
          $('#kode_kabupaten').val(data.kode_kabupaten);
          $('#kabupaten').val(data.kabupaten);
         $('#npsn').val(data.npsn);
          $('#kepsek').val(data.kepala_sekolah);
         $('#nip_kepsek').val(data.NIP_kepsek);
          $('#proktor').val(data.proktor);
         $('#nip_proktor').val(data.NIP_Proktor);
         $('#judulUjian').val(data.judulUjian);
         $('#tahunAjaran').val(data.tahunAjaran);
      },
      error : function(){
         alert("Tidak dapat menampilkan data!");
      }
   });

} 

function save_data(){
    url = "ajax/ajax_home.php?action=update";
   
   $.ajax({
      url : url,
      type : "POST",
      data : $('#modal_data_sekolah form').serialize(),
      success : function(data){
         if(data=="ok"){
            $('#modal_data_sekolah').modal('hide');
            window.location.reload();
         }else{
            alert(data);
            //$('#nis').focus();
         }
        
      },
      error : function(){
      alert("Tidak dapat menyimpan data!");
		}			
   });
   return false;
}