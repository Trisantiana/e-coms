<?php
ini_set("display_errors", "1");
error_reporting(E_ALL);

	include_once "../lib/class-Db.php";
	include_once "../lib/class-Ff.php";
	$aksi = $ff->get("aksi");
	if ($aksi=="add") {
		$post = $odb->sant(INPUT_POST);
		extract($post);
		$odb->insert("tb_pelanggan", "null,'$user', '$pass', '$email', '$alamat', '$k_pos', '$telp', '$status' ");
		$ff->alert("Data Berhasil Disimpan");
		$ff->redirect("admin.php?hal=dpembeli");
	}
	if ($aksi=="edit") {
		$id = $ff->get("id_cust");
		$post = $odb->sant(INPUT_POST);
		extract($post);
		$odb->update("tb_pelanggan", "user='$user', pass='$pass', email='$email',alamat='$alamat', k_pos='$k_pos', telp='$telp', status='$status' ");
		$ff->alert("Data Berhasil Diubah");
		$ff->redirect("admin.php?hal=dpembeli");
	}
	if ($aksi=="hapus") {
		$id = $ff->get("id_cust");
		$odb->delete("tb_pelanggan where id_cust='$id' ");
		$ff->alert("Data berhasil dihapus");
		$ff->redirect("admin.php?hal=dpembeli");
	}