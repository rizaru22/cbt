var save_method, table;

//Menampilkan data dengan plugin dataTable
$(function(){
   table = $('.table').DataTable({
     "processing" : true,
     "ajax" : {
     "url" : "ajax/ajax_ujian_operator.php?action=table_data",
        "type" : "POST"
     }
   });
});
	
//Ketika nama kelas diklik
function edit_data(kelas, ujian){
   $.ajax({
      url : "ajax/ajax_ujian_operator.php?action=update&kelas=" + kelas + "&ujian=" + ujian,
   type : "GET",
   success : function(data){
      table.ajax.reload();
   },
      error : function(){
        alert('Tidak dapat mengubah data');
      }
   });		
}

function token() {
  var token;
	var waktu;
	//ambil data token dan waktu release terbaru
	$.ajax({
      url : "ajax/ajax_token.php?action=ambilToken",
      type : "GET",
      dataType : "JSON",
      success : function(data){
      	token=data.token;
      	waktu=data.waktu;
        document.getElementById("tampiltoken").innerHTML = "<h2> Token : "+token+"</h2><br> Waktu Release : "+waktu +"<br>Token berubah setiap 15 menit";
      },
      error : function(){
      alert("Tidak dapat mengambil data!");
		}
  });
    
}
