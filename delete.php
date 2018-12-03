<!DOCTYPE html>
<html>
<head>
  <title>Irma | Erwin</title> 
    <link href="css/sweetalert.css" type="text/css" rel="stylesheet">
</head>
<body>
<?php
include 'connectionDB.php'; 
$id          = $_GET['id'];
$sql 	       = 'DELETE FROM data_tamu WHERE id="'.$id.'"';
$berhasil	   = mysqli_query($koneksi,$sql);
if(!$berhasil){
	echo "<h2><div style='color:red;text-align:center;'>--- Ada Yang Salah Cek Querynya--- </div></h2>";
}else{
echo '<script type="text/javascript">
            setTimeout(function () {    
            swal({
              title: "Berhasil !",
              text: "Data Berhasil Dihapus",
              type: "success",
              timer: 2000,
              showConfirmButton: true
            }, function(){
                  window.location.href = "data-tamu-undangan-abcdefghijklmnopqrsuvwkyz123.php";
            });
            },10); 
            window.setTimeout(function(){ 
            } ,2000); 
            </script>';
}
?>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/sweetalert.min.js"></script>  
</body>
</html>