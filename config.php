<?php 

// database configration
$sqlservername = "localhost";
$sqldbname  = "bafta";
$sqlusername = "root";	
$sqlpwd = "";

$conn = mysqli_connect($sqlservername,$sqlusername,$sqlpwd, $sqldbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>