$(function(){
   $('#isi').load('home.php');	
   $('.navigation').each(function(){
      $(this).click(function(){
         var link = $(this).attr('href');
         $('#isi').load(link);
         return false;			
      });
   });	
  
   
});

//Ketika tombol edit diklik
function show_soal(ujian){
  
   $('#isi').load('view/view_soal.php?ujian='+ujian);	
  

}

//Ketika nama kelas diklik
function show_nilai(kelas, ujian){
   
    $('#isi').load('view/view_nilai.php?ujian=' + ujian + '&kelas=' + kelas);		
}
