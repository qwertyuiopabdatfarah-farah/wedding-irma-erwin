-create database if not exists nama_databasenya;
-show databases;
-use nama_databasenya;
-create table if not exists users(id int(21) unsigned auto_increment primary key, nim id(21) unique not null, name varchar(100) not null);
-describe users;
-alter table users modify name varchar(100) not null;
-alter table users change name name_full varchar(11) null;
-alter table users rename to user_baru;
-alter table users add jenis_kelamin enum('L', 'P') default 'P';
-alter table users add alamat varchar(20) not null;
-alter table users drop alamat;
-insert into users (nama_kolom1, nama_kolom2, nama_kolom3) values ('isi_kolom1', 'isi_kolom2', isi_kolom3);
-truncate users;
-insert ignore into users //bila menginput lebih dari satu values, tapi data sudah ada didal maka yg lain tetap masuk;
-SELECT nama_kolom1, nama_kolom2,FROM nama_tabel;
-SELECT nama_kolom1, nama_kolom2,FROM nama_tabel limit 1;
-SELECT nama_kolom1, nama_kolom2,FROM nama_tabel WHERE kondisi;
-SELECT * FROM nama_table WHERE nama_kolom1 LIKE 'S%';
-SELECT * FROM nama_table WHERE nama_kolom1 LIKE '%i' OR nama_kolom2 LIKE 'm%';
-SELECT * FROM nama_tabel WHERE nama_kolom1 REGEXP '^[ms].*[aiueo]$';
-SELECT CONCAT(kode_matkul, nama_matkul) FROM mata_kuliah;
-SELECT LOWER(nama_dosen) FROM daftar_dosen;
-SELECT UPPER(nama_dosen) FROM daftar_dosen;
-SELECT UPPER(nama_dosen) AS 'Nama Dosen' FROM daftar_dosen;
-SELECT nama_matkul,jumlah_SKS,nama_dosen FROM mata_kuliah INNER JOIN daftar_dosen ON mata_kuliah.NIP_dosen=daftar_dosen.NIP_dosen;
-SELECT nama_matkul,jumlah_SKS,nama_dosen FROM mata_kuliah AS ma INNER JOIN daftar_dosen AS da ON ma.NIP_dosen=da.NIP_dosen;
-DELETE from daftar_dosen ORDER BY nama_dosen DESC LIMIT 3;
-DELETE from daftar_dosen WHERE nama_dosen = 'Sabrina Sari';
-DELETE FROM daftar_dosen;
-UPDATE daftar_dosen SET no_hp ='085298710065', alamat = 'Jl. Raya' WHERE nama_dosen='Sabrina Sari';
-UPDATE daftar_dosen SET no_hp ='085298710065', alamat = 'Jl. Raya' WHERE id=1;
-UPDATE daftar_dosen SET alamat ='Surabaya' WHERE nama_dosen='Rubin Hadi' OR NIP_dosen='1080432007' OR no_hp='0812345234';
-UPDATE daftar_dosen SET no_hp='085278790005'; //seluruh table
UPDATE daftar_dosen SET nama_dosen = UPPER (nama_dosen) //Mengubah Huruf Kolom Tabel Secara Permanen
-SELECT DISTINCT nama_kolom FROM nama_tabel;
variabel
-SELECT @kota := alamat FROM daftar_dosen WHERE nama_dosen = 'Maya Ari Putri';
-SELECT * FROM daftar_dosen WHERE alamat = @kota;
-CREATE TABLE daftar_dosen_baru LIKE daftar_dosen; //mengcopy table
-INSERT INTO daftar_dosen_baru SELECT * FROM daftar_dosen; //mengcopy isi table
-INSERT INTO daftar_dosen_baru SELECT * FROM daftar_dosen WHERE alamat = 'Palembang';
-DATE_FORMAT(nama_kolom, ‘string format’) = SELECT DATE_FORMAT(dt, '%d/%m/%Y') FROM belajar_date;
//import data ke table
-create database if not exists nama_databasenya;
-use nama_databasenya;
-source D:/nama_folder/nama_databasenya.sql




No. 1. 
SELECT data_pekerja.nama, 
		        data_pekerja.kelamin,
		        data_pekerja.agama, 
		        data_pekerja.nik, 
		        data_pekerja.tempat_lahir,
		        data_pekerja.tgl_lahir, 
		        contract.no_kontrak, 
		        contract.nilai, 
		        contract.tgl_awal, 
		        contract.tgl_akhir, 
		        posisi.nama_posisi, 
		        personnel.tgl_masuk 
		        FROM personnel
		        INNER JOIN data_pekerja
		        ON personnel.id_pekerja = data_pekerja.id  
		        INNER JOIN contract 
		        ON personnel.id_pks = contract.id
		        INNER JOIN posisi
		        ON personnel.posisi = posisi.id

No. 2  
ALTER TABLE data_pekerja CHANGE nama nama_lengkap varchar(50);
ALTER TABLE contract CHANGE no_kontrak nomor_kontrak varchar(50);
ALTER TABLE contract CHANGE nilai nilai_kontrak varchar(50);
ALTER TABLE contract CHANGE tgl_awal awal_kontrak date;
ALTER TABLE contract CHANGE tgl_akhir akhir_kontrak date;
ALTER TABLE posisi CHANGE nama_posisi posisi_kerja varchar(50);
ALTER TABLE personnel CHANGE tgl_masuk mulai_bekerja date;


No. 3 
SELECT * FROM `personnel` WHERE `mulai_bekerja` BETWEEN '2013-03-01' AND '2014-08-07' 

No. 4
SELECT * FROM `personnel` ORDER BY mulai_bekerja ASC;
SELECT * FROM `personnel` ORDER BY mulai_bekerja DESC;


No. 5 
ALTER TABLE `data_pekerja` MODIFY COLUMN nik varchar(50) AFTER id;
ALTER TABLE `data_pekerja` MODIFY COLUMN tgl_lahir date AFTER agama;
ALTER TABLE `data_pekerja` MODIFY COLUMN tempat_lahir varchar(50) AFTER nik;

No. 6 
CREATE VIEW view_master_pekerja AS SELECT data_pekerja.nama_lengkap , contract.nomor_kontrak, contract.nilai_kontrak, contract.awal_kontrak, contract.akhir_kontrak, posisi.posisi_kerja, personnel.mulai_bekerja FROM personnel INNER JOIN data_pekerja ON personnel.id_pekerja = data_pekerja.id INNER JOIN contract ON personnel.id_pks = contract.id INNER JOIN posisi ON personnel.posisi = posisi.id

No. 7 
SELECT `nomor_kontrak`, `nama_lengkap`, `awal_kontrak`, `akhir_kontrak`, `posisi_kerja`, `mulai_bekerja` FROM `view_master_pekerja`;

No. 8 
update data_pekerja INNER JOIN contract on data_pekerja.id = contract.id set data_pekerja.nama = 'Erwin', contract.nilai = 3 WHERE contract.no_kontrak = 'eHOP140227';
UPDATE data_pekerja INNER JOIN contract on data_pekerja.id = contract.id set data_pekerja.kelamin = 'w' WHERE contract.no_kontrak = 'PKS.093/LG.05/AR.003/X/2013';
update data_pekerja INNER JOIN contract on data_pekerja.id = contract.id set data_pekerja.nama = 'Erwin' WHERE contract.no_kontrak = 'eHOP140227';
No. 9 
INSERT INTO `data_pekerja`(`id`, `nama_lengkap`, `kelamin`, `agama`, `nik`, `tempat_lahir`, `tgl_lahir`) VALUES ('01', 'Erwin Wiguna', 'p',  'Islam', '13630552', 'Bandung', '1995-06-19');

No. 
10 DELETE FROM `data_pekerja` WHERE `id`=1