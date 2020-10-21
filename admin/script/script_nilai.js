var table;

$(function(){
   var ujian = $('#id_ujian').val();
   var kelas = $('#id_kelas').val();
   table = $('.table').DataTable({
      "processing" : true,
      "pageLength" : 50,
      "paging" : false,
      "ajax" : {
         "url" : "ajax/ajax_nilai.php?action=table_data&ujian=" + ujian + "&kelas=" + kelas,
         "type" : "POST"
      }
   });
});

function export_nilai(){
   ujian = $('#id_ujian').val();
   kelas = $('#id_kelas').val();
   window.open("export/excel_nilai.php?ujian=" + ujian + "&kelas=" + kelas, "Export Nilai");
}

function cetak_nilai(){
   ujian = $('#id_ujian').val();
   kelas = $('#id_kelas').val();
   $("#printabel").remove();
   
  $("<iframe id='printabel'>")    
        //.hide()
        .attr("style","width:0;height:0;border:0;border:none;")                     
        .attr("src", "export/cetak_nilai.php?kelas="+ kelas +"&ujian=" + ujian) 
        .appendTo("body");
}

function cetak_absen(){
   ujian = $('#id_ujian').val();
   kelas = $('#id_kelas').val();
   $("#printabel").remove();
   
  $("<iframe id='printabel'>")    
        //.hide()
        .attr("style","width:0;height:0;border:0;border:none;")                     
        .attr("src", "export/cetak_daftar_hadir.php?kelas="+ kelas +"&ujian=" + ujian) 
        .appendTo("body");
}

