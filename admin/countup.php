<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css"/>
<script type="text/javascript" src="../assets/jquery/jquery-2.0.2.min.js"></script>
</head>
<body>
<section> 	
   <div  class="container">
      <div class="row">
         <div class="col-xs-12">
         	<div class="alert alert-info " id="demo">Token :
         	</div>

<button id="btnrelease" onclick="token()" class="btn btn-warning pull-right"><i class="glyphicon glyphicon-refresh"></i> Release Token</button>
</div>
      </div>
   </div>
</section>

<script>

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
        document.getElementById("demo").innerHTML = "Token : "+token+" Waktu Release : "+waktu;
      },
      error : function(){
      alert("Tidak dapat mengambil data!");
		}
  });
    
}
</script>

</body>
</html>
