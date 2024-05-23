<?php
$serverName = "localhost";
$port = '3307';
$userName = "root";
$pwd = "";
$nameDB = "dbfastfood";

$conn = mysqli_connect($serverName, $userName, $pwd, $nameDB, $port);

if ($conn == false) {
    echo "kết nối thất bại";
}
?>