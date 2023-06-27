<?php
session_start();
// mengecek admin login atau tidak
if (isset($_SESSION['username'])) {
?>
    <script>
        alert('Anda sedang aktif, tidak dapat mengakses halaman ini!');
        window.location.href = 'dashboard';
    </script>
<?php
    return false;
}

$base_url = 'https://farishost.cloud/sibsdp/';
include 'app/koneksi.php';

$sql_profil = "SELECT * FROM tabel_control WHERE id=1";
$result_profil = $mysqli->query($sql_profil);
$row_profil = $result_profil->fetch(PDO::FETCH_OBJ);

include 'views/layout/user/header.php';
include 'views/layout/user/navbar.php';
?>

<?php
if (isset($_GET['views_user']) && $_GET['views_user'] == "beranda") {
    include 'views/pages/user/beranda.php';
} else if (isset($_GET['views_user']) && $_GET['views_user'] == "list_data") {
    include 'views/pages/user/list_data.php';
} else {
    include 'views/pages/user/beranda.php';
}
?>

<?php include 'views/layout/user/footer.php'; ?>