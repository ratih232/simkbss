<?php

$mysqli = new mysqli("localhost", "root", "", "admin");

if (!$mysqli) {
    echo "Koneksi bermasalah !";
}
