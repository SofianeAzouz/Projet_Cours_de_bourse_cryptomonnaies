<?php
function isLoggedIn() {
	return isset($_SESSION['id']);
}

function getCryptos($conn) {
    $query = "SELECT * FROM crypto_prices";
    $result = mysqli_query($conn, $query);
    $cryptos = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $cryptos[] = $row;
    }
    return $cryptos;
}

function getIndices($conn) {
    $query = "SELECT * FROM indices";
    $result = mysqli_query($conn, $query);
    $indices = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $indices[] = $row;
    }
    return $indices;
}
?>

