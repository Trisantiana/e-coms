<?php
ini_set("display_errors", "1");
error_reporting(E_ALL);

	include_once "../lib/class-Db.php";
	include_once "../lib/class-Ff.php";

	$aksi = $ff->get("aksi");
	if ($aksi=="add") {
		$post=$odb->sant(INPUT_POST);
		extract($post);
		$odb->insert("tb_admin", "null, '$user', '$pass', '$email' ");
		$ff->alert("Data Berhasil Disimpan");
		$ff->redirect("admin.php?hal=dadmin");
	}

	if ($aksi=="edit") {
		$id = $ff->get("id_admin");
		$post = $odb->sant(INPUT_POST);
		extract($post);
		$odb->update("tb_admin", "user='$user', pass='$pass', email='$email' where id_admin='$id' ");
		$ff->alert("Data Berhasil Diubah");
		$ff->redirect("admin.php?hal=dadmin");
	}

	if ($aksi=="hapus") {
		$id = $ff->get("id_admin");
		$odb->delete("tb_admin where id_admin='$id'");
		$ff->alert("Data Terhapus");
		$ff->redirect("admin.php?hal=dadmin");
	}

