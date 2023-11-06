<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata";
        $stmt = $pdo->query($sql);
        $wisata = $stmt->fetchAll();
        echo json_encode($wisata);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id_destinasi) && isset($data->nama_destinasi) && isset($data->alamat_wisata)&& isset($data->jenis_destinasi)) {
            $sql = "INSERT INTO wisata (id_destinasi, nama_destinasi, alamat_wisata, jenis_destinasi) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id_destinasi, $data->nama_destinasi, $data->alamat_wisata, $data->jenis_destinasi]);
            echo json_encode(['message' => 'Wisata berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id_destinasi) && isset($data->nama_destinasi) && isset($data->alamat_wisata) && isset($data->jenis_destinasi)) {
            $sql = "UPDATE wisata SET nama_destinasi=?, alamat_wisata=?, jenis_destinasi=? WHERE id_destinasi=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama_destinasi, $data->alamat_wisata, $data->jenis_destinasi, $data->id_destinasi]);
            echo json_encode(['message' => 'Karyawan berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id_destinasi)) {
            $sql = "DELETE FROM wisata WHERE id_destinasi=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'Wisata berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID_Destinasi tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>
