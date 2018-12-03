<!DOCTYPE html>
<html>
<head>
  <title>Irma | Erwin</title> 
    <link href="css/sweetalert.css" type="text/css" rel="stylesheet">
</head>
<body>
<?php
if (isset($_POST['save_data'])) {
  $nama         = $_POST["nama"];
  $jumlah_orang = $_POST['jumlah_orang'];
  $alamat       = $_POST['alamat'];
  $doa          = $_POST['doa'];

include 'connectionDB.php'; 
$query_simpan = 'INSERT INTO data_tamu (nama,
                                        jumlah_orang,
                                        alamat,
                                        doa)
                        	                VALUES ("'.$nama.'",
                        	                       "'.$jumlah_orang.'",
                                                 "'.$alamat.'",
                        	                       "'.$doa.'")';

$hasil = mysqli_query($koneksi, $query_simpan);
if($hasil){
		echo'
          <script type="text/javascript">
            setTimeout(function () {    
            swal({
              title: "Terimakasih Atas Partisinya!",
              text: "'.$nama.'",
              type: "success",
              timer: 2000,
              showConfirmButton: true
            }, function(){
                  window.location.href = "index.php";
            });
            },10); 
            window.setTimeout(function(){ 
            } ,2000); 
            </script>';
	}else{
		echo "<h2><div style='color:red;text-align:center;'>--- Ada Yang Salah Cek Querynya--- </div></h2>";
	}
 
}else{
	echo "<h2><div style='color:red;text-align:center;'>--- 404 Forbiden, SILAHKAN KEMBALI--- </div></h2>";
 }
?>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/sweetalert.min.js"></script>  
</body>
</html>