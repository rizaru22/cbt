var menit, detik;
var ujian, sisa_waktu;
var audio, audioActive;
var font_size;
var nomor_id, pilihan;

//Mengatur agar waktu ujian berjalan mundur
$(function(){	
   setInterval(function(){
	  menit = parseInt($('.menit').text());	
      detik = parseInt($('.detik').text());
	  
      detik--;
	  
      if(detik<0 && menit>0){
         menit--;
         detik = 59;
      }

      if(menit<=0) menit = 0;
      if(menit<10) menit = "0"+menit;
      if(detik<10) detik = "0"+detik;
		
      $('.menit').text(menit);
	  $('.detik').text(detik);
	  
      $('#sisa_waktu').val(menit+':'+detik);
		
      if(menit == "00" && detik == "00"){
         selesai();
         $('#modal-selesai .modal-title').text("Waktu Habis!");
         //$('#modal-selesai .modal-body').text("Waktu Habis. Klik Selesai untuk memproses nilai!");
         $('#modal-selesai .btn-warning').hide();
         $('#modal-selesai .btn-tidak').hide();
         
         
      }
	  
	  $('.audio-control').each(function(){
		var id = $(this).attr('data');
		audioActive = $('#audio-'+id)[0];
		var bar = $(this).find('.bar');
		$(this).find('.slider').css('left', audioActive.currentTime/audioActive.duration*(bar.width()-10));
	  });
   }, 1000);
   
	 $('.play').each(function(){			
		$(this).click(function(){
			var dataId = $(this).attr('data');
			audio = $('#audio-'+dataId)[0];
			if(audio.paused){
				audio.play();
				$(this).html('<i class="glyphicon glyphicon-pause"></i>');
			}else{
				audio.pause();
				$(this).html('<i class="glyphicon glyphicon-play"></i>');
			}
		});
	  });
	 
	  $('.ukuran-font a').each(function(){
		$(this).click(function(){
			font_size = $(this).attr('data-size');
			
			$('.konten-ujian').css('font-size', font_size+'px');
			$('.konten-ujian td').css('font-size', font_size+'px');
		});
	  });
	  
	  $('.tombol-nomor').each(function(){
			nomor_id = $(this).attr('data-id');
			pilihan = $('.jawab-'+nomor_id+':checked').attr('data-huruf');
			$(this).next().text(pilihan);
	  });
	  
});

//Ketika tombol nomor soal atau tombol navigasi diklik
function tampil_soal(no){
   $('.blok-soal').removeClass('active');	
   $('.soal-'+no).addClass('active');
   
   $('.tombol-nomor').removeClass("blue");
   $('.tombol-'+no).addClass("blue");
   
   $('.no-soal').text(no);
	$('.audio-control').each(function(){
		var id = $(this).attr('data');
		audio = $('#audio-'+id)[0];
		audio.pause();
		$('.play').html('<i class="glyphicon glyphicon-play"></i>');
	});
	
}

//Ketika ragu-ragu dicentang
function ragu_ragu(no){
   if($('.tombol-'+no).hasClass('yellow')){
      $('.tombol-'+no).removeClass('yellow');
   }else{
      $('.tombol-'+no).addClass('yellow');
   }
}

//Ketika ujian selesai
function selesai(){
   $('#modal-selesai').modal({
      'show' : true,
      'backdrop' : 'static'
   });
}

//Ketika memilih jawaban
function kirim_jawaban(index, jawab){
   ujian = $('#ujian').val();
   sisa_waktu = $('#sisa_waktu').val();
   $.ajax({
      url: "ajax_ujian.php?action=kirim_jawaban",
      type: "POST",
      data: "ujian=" + ujian + "&index=" + index + "&sisa_waktu=" + sisa_waktu + "&jawab=" + jawab,
      success: function(data){
         if(data=="ok"){
            no = index+1;
            $('.tombol-'+no).addClass("green");
            $('.tombol-'+no).addClass("green");
			hurufpilih = $('.jawab-'+no+':checked').attr('data-huruf');
			$('.tombol-'+no).next().text(hurufpilih);
         }else{
            alert(data);
         }
      },
      error: function(){
         alert('Tidak dapat mengirim jawaban!');
      }
   });
}

function masuk(){
	$('.nomor-ujian').animate({'right': '-315px'});
	$('.tombol2').show().animate({'right': '0'});
	$('.tombol1').hide().animate({'right': '0'});
	$('.geser').addClass('col-md-offset-3');
}
function keluar(){
	$('.nomor-ujian').animate({'right': '15px'});
	$('.tombol2').hide().animate({'right': '315px'});
	$('.tombol1').show().animate({'right': '315px'});
	$('.geser').removeClass('col-md-offset-3');
}