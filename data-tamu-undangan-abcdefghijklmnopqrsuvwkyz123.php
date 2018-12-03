<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <title>Irma | Erwin</title> 
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Porto - Responsive HTML5 Template">
    <meta name="author" content="okler.net">
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link href="css/jquery.dataTables.min.css" type="text/css" rel="stylesheet">    
  </head>
  <body>
    <br/>
           <!--DataTables example-->
              <div id="table-datatables">
                <h4 class="label label-default" style="text-align: center;">Data Tamu Undangan</h4>
                <div class="row">
                  <div class="col s12">
                    <table id="data-table-simple" class="responsive-table display" cellspacing="0">
                        <thead>
                        <tr>
                        <th> No </th>
                        <th> Nama Tamu </th>
                        <th> Jumlah Orang </th>
                        <th> Alamat </th>
                        <th> Doa </th>
                        <th style="text-align: center;"> Aksi </th>
                        </tr>
                        </thead>
                       <tbody>
                        <?php
                        include 'connectionDB.php';  
                        $query = "SELECT * FROM data_tamu ORDER BY id DESC";
                        $result=mysqli_query($koneksi, $query) or die(mysqli_error());
                        $no=1; //penomoran 
                        while ($data = mysqli_fetch_array($result, MYSQLI_BOTH)){
                        ?>
                        <tr>
                        <td><?php echo $no++; ?></td>
                        <td><?php echo $data['nama']; ?></td>  
                        <td><?php echo $data['jumlah_orang']; ?> Orang</td>
                        <td><?php echo $data['alamat']; ?></td> 
                        <td><?php echo $data['doa']; ?></td>
                        <td style="width:100px;text-align: center;">
                        <?php echo "
                        <a href='delete.php?id=$data[id]'onclick=\"return confirm('Anda yakin akan menghapus data ?')\">|Hapus|</a>";
                        ?>
                        </td>  
                        </tr> 
                        <?php
                        }
                        ?>
                     </tbody>
                    </table>
                  </div>
                </div>
              </div>     
          <!-- jQuery Library -->
          <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
          <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
          <!--data-tables.js - Page Specific JS codes -->
          <script type="text/javascript" src="js/data-tables.js"></script>
</html>