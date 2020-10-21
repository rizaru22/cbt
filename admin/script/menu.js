$('#isi').load('home.php');
$('.menu').click(function(){
	var link=$(this).attr('href')
	$('#isi').hide().load(link).fadeIn('normal');
	return false;
});