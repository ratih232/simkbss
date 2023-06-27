<?php

// $mysqli = new mysqli("localhost", "root", "", "admin");
$host = '103.175.217.139';
$dbname = 'sibsdp';
$user = 'sibsdp';
$password = 'sibsdp5432';
$mysqli = new PDO("pgsql:host=$host;dbname=$dbname", $user, $password);
$mysqli->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if (!$mysqli) {
    echo "Koneksi bermasalah !";
}
