$(function(){
	$('#modal-ads').modal('show');
});
function selesai_ujian(ujian){
   $.ajax({
      url: "ajax_ujian.php?action=selesai_ujian",
      type: "POST",
      data: "ujian="+ujian,
      success: function(data){
         if(data=="ok"){
            $('#modal-selesai').modal('hide');
            $('#modal-selesai').on('hidden.bs.modal', function(){
            window.location = '?content=home';
            });	
         }else{
            alert(data);
         }
      },
      error: function(){
         alert('Tidak dapat memproses nilai!');
      }
   });
   return false;
}