<?php  
$db_host    = 'remotemysql.com'; 
$db_usn     = 'lNdn9FbTcU'; 
$db_pwd     = 'cRurD1CG4B'; 
$db_name    = 'lNdn9FbTcU'; 

$koneksi    = mysqli_connect($db_host,$db_usn,$db_pwd,$db_name);
if (!$koneksi){
    echo 'Tidak dapat terhubung ke database';
}