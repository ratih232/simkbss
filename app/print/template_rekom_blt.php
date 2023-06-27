<?php
require_once '../koneksi.php';
$url = "http://$_SERVER[HTTP_HOST]/simkbs/";
$sql_profil = "SELECT * FROM tabel_control WHERE id=1";
$result_profil = $mysqli->query($sql_profil);
$row_profil = $result_profil->fetch(PDO::FETCH_OBJ);
?>
<?php
function tgl_indo($tanggal)
{
    $bulan = array(
        1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);

    // variabel pecahkan 0 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 2 = tahun

    return $pecahkan[2] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[0];
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Klasifikasi Berdasarkan Pendidikan Terakhir</title>
    <style>
        .display-data {
            font-size: 12px;
            border: 1px solid black;
            width: 100%;
            border-collapse: collapse;
        }

        .display-data th {
            padding: 8px;
        }

        .display-data th,
        .display-data td {
            border: 1px solid black;
            text-align: center;
            width: auto;
        }

        .display-header {
            margin-bottom: 1rem;
        }

        .display-header td {
            text-align: center;
        }

        h4 {
            text-align: center;
        }
    </style>
</head>

<body>
    <table width="100%" class="display-header">
        <tr>
            <td>
                <img src="<?= $url; ?>dist/img/<?= $row_profil->logo_desa; ?>" alt="logo-kab" width="50">
            </td>
        </tr>
        <tr>
            <td>
                <h3>Kantor <?= $row_profil->nama_desa; ?></h3>
            </td>
        </tr>
        <tr>
            <td>
                <small><?= $row_profil->alamat; ?></small>
            </td>
        </tr>
    </table>

    <h4>Daftar Rekomendasi Penerima Bantuan BLT-Dana Desa</h4>
    <table width="100%" class="display-data">
        <thead>
            <tr>
                <th>No</th>
                <th>No KK</th>
                <th>NIK</th>
                <th>Kepala Keluarga</th>
                <th>Tanggal Lahir</th>
                <th>Jenis Kelamin</th>
                <th>Penghasilan</th>
                <th>Dusun</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $nomor = 1;
            // $query = $mysqli->query("SELECT * FROM tabel_kependudukan JOIN tabel_konsumsi ON tabel_kependudukan.NIK = tabel_konsumsi.NIK JOIN tabel_pekerjaan ON tabel_pekerjaan.NIK = tabel_kependudukan.NIK JOIN tabel_pendidikan ON tabel_pendidikan.NIK = tabel_kependudukan.NIK JOIN tabel_rumah ON tabel_rumah.NIK = tabel_kependudukan.NIK JOIN tabel_tabungan ON tabel_tabungan.NIK = tabel_kependudukan.NIK WHERE tabel_kependudukan.HBKEL = '1' AND bantuan='0' AND LUAS_LANTAI = '1' AND (JENIS_LANTAI ='Bambu' OR JENIS_LANTAI ='Kayu/Papan') AND (JENIS_DINDING ='Bambu' OR JENIS_DINDING ='Rumbia' OR JENIS_DINDING ='Tembok Tanpa Di Plester') AND FASILITAS_BAB = '0' AND SUMBER_PENERANGAN ='0' AND (SUMBER_AIR_MINUM = 'Sungai' OR SUMBER_AIR_MINUM = 'Mata Air Tidak Terlindung' OR SUMBER_AIR_MINUM = 'Air Hujan') AND (BAHAN_BAKAR_MEMASAK = 'Kayu Bakar' OR BAHAN_BAKAR_MEMASAK = 'Minyak Tanah') AND FREKUENSI_PER_MINGGU <= 1 AND PAKAIAN_PER_TAHUN <= 1 AND MAKAN_PER_HARI <= 2 AND BIAYA_PENGOBATAN = '0' AND PENGHASILAN_PER_BULAN < 600000 AND (PENDIDIKAN_TERAKHIR ='Tidak Tamat SD' OR PENDIDIKAN_TERAKHIR ='Tidak Sekolah' OR PENDIDIKAN_TERAKHIR ='SD dan Sederajat') AND (KEPEMILIKAN_TABUNGAN = '0' OR (KEPEMILIKAN_TABUNGAN = '1' AND (JENIS_TABUNGAN = '1' OR JENIS_TABUNGAN = '2' OR JENIS_TABUNGAN = '3' OR JENIS_TABUNGAN = '4' OR JENIS_TABUNGAN = '5') AND HARGA < 500000))");
            $query = $mysqli->query("SELECT * FROM tabel_kependudukan JOIN tabel_konsumsi ON tabel_kependudukan.NIK = tabel_konsumsi.NIK JOIN tabel_pekerjaan ON tabel_pekerjaan.NIK = tabel_kependudukan.NIK JOIN tabel_pendidikan ON tabel_pendidikan.NIK = tabel_kependudukan.NIK JOIN tabel_rumah ON tabel_rumah.NIK = tabel_kependudukan.NIK JOIN tabel_tabungan ON tabel_tabungan.NIK = tabel_kependudukan.NIK WHERE tabel_kependudukan.HBKEL = '1' AND bantuan='0' AND LUAS_LANTAI = '1' AND (JENIS_LANTAI ='Bambu' OR JENIS_LANTAI ='Kayu/Papan') AND (JENIS_DINDING ='Bambu' OR JENIS_DINDING ='Rumbia' OR JENIS_DINDING ='Tembok Tanpa Di Plester') AND FASILITAS_BAB = '0' AND SUMBER_PENERANGAN ='0' AND (SUMBER_AIR_MINUM = 'Sungai' OR SUMBER_AIR_MINUM = 'Mata Air Tidak Terlindung' OR SUMBER_AIR_MINUM = 'Air Hujan') AND (BAHAN_BAKAR_MEMASAK = 'Kayu Bakar' OR BAHAN_BAKAR_MEMASAK = 'Minyak Tanah') AND FREKUENSI_PER_MINGGU <= 1 AND PAKAIAN_PER_TAHUN <= 1 AND MAKAN_PER_HARI <= 2 AND BIAYA_PENGOBATAN = '0' AND PENGHASILAN_PER_BULAN < 600000 AND (PENDIDIKAN_TERAKHIR ='Tidak Tamat SD' OR PENDIDIKAN_TERAKHIR ='Tidak Sekolah' OR PENDIDIKAN_TERAKHIR ='SD dan Sederajat') AND (KEPEMILIKAN_TABUNGAN = '0' OR (KEPEMILIKAN_TABUNGAN = '1' AND (JENIS_TABUNGAN = '1' OR JENIS_TABUNGAN = '2' OR JENIS_TABUNGAN = '3' OR JENIS_TABUNGAN = '4' OR JENIS_TABUNGAN = '5') AND HARGA < 500000))");
            while ($row = $query->fetch_assoc()) {
                $sql_dusun = $mysqli->query("SELECT * FROM tabel_dusun WHERE id='$row[DSN]'");
                $row_dusun = $sql_dusun->fetch_assoc();
                $d1 = $row['bantuan'];
                $d2 = $row['LUAS_LANTAI'];
                $d3 = $row['JENIS_LANTAI'];
                $d4 = $row['JENIS_DINDING'];
                $d5 = $row['FASILITAS_BAB'];
                $d6 = $row['SUMBER_PENERANGAN'];
                $d7 = $row['SUMBER_AIR_MINUM'];
                $d8 = $row['BAHAN_BAKAR_MEMASAK'];
                $d9 = $row['FREKUENSI_PER_MINGGU'];
                $d10 = $row['PAKAIAN_PER_TAHUN'];
                $d11 = $row['MAKAN_PER_HARI'];
                $d12 = $row['BIAYA_PENGOBATAN'];
                $d13 = $row['PENGHASILAN_PER_BULAN'];
                $d14 = $row['PENDIDIKAN_TERAKHIR'];
                $d15 = $row['KEPEMILIKAN_TABUNGAN'];

                $data_array = [];

                if ($d1 == 1) {
                    array_push($data_array, true);
                }

                if ($d2 == 1) {
                    array_push($data_array, true);
                }

                if ($d3 == "Bambu" || $d3 == "Kayu/Papan") {
                    array_push($data_array, true);
                }

                if ($d4 == "Bambu" || $d4 == "Rumbia" || $d4 == "Tembok Tanpa Di Plester") {
                    array_push($data_array, true);
                }

                if ($d5 == 0) {
                    array_push($data_array, true);
                }

                if ($d6 == 0) {
                    array_push($data_array, true);
                }

                if ($d7 == "Sungai" || $d7 == "Mata Air Tidak Terlindung" || $d8 == "Air Hujan") {
                    array_push($data_array, true);
                }

                if ($d8 == "Kayu Bakar" || $d8 == "Minyak Tanah") {
                    array_push($data_array, true);
                }

                if ($d9 <= 1) {
                    array_push($data_array, true);
                }

                if ($d10 <= 1) {
                    array_push($data_array, true);
                }

                if ($d11 <= 2) {
                    array_push($data_array, true);
                }

                if ($d12 == 0) {
                    array_push($data_array, true);
                }

                if ($d13 < 600000) {
                    array_push($data_array, true);
                }

                if ($d14 == "Tidak Tamat SD" || $d14 == "Tidak Sekolah" || $d14 == "SD dan Sederajat") {
                    array_push($data_array, true);
                }

                if ($d15 == 0) {
                    array_push($data_array, true);
                }

                $count_data = count($data_array);

                if ($count_data >= 9) {
            ?>
                    <tr>
                        <td><?= $nomor++ ?></td>
                        <td><?= $row['NO_KK'] ?></td>
                        <td><?= $row['NIK'] ?></td>
                        <td><?= $row['NAMA_LGKP'] ?></td>
                        <td><?= tgl_indo($row['TGL_LHR']) ?></td>
                        <td><?= $row['JK'] == '1' ? 'Laki Laki' : 'Perempuan'; ?></td>
                        <td>Rp. <?= number_format($row['PENGHASILAN_PER_BULAN']); ?></td>
                        <td><?= $row_dusun['dusun'] ?></td>
                    </tr>
            <?php
                }
            }
            ?>
        </tbody>
    </table>
</body>

</html>