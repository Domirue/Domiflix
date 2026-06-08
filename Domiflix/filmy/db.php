<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "filmy";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("B³¹d po³¹czenia: " . $conn->connect_error);
}
?>