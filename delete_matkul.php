<?php
include_once 'koneksi.php';
$delete_matkul = isset($_GET['matakuliah'])?$_GET['matakuliah']:'';

$query = "DELETE FROM tblmatkul WHERE kd_mtk='$delete_matkul'";
$result = mysqli_query($conn,$query);
if ($result) {
    $pesan = "Delete data berhasil";
} else {
    $pesan = "Delete user gagal. periksa kembali data yang diinputkan.";
}
echo "<script>
alert('$pesan');
document.location='index.php?page=matakuliah';
</script>";

?>