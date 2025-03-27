<?php
// cryptos.php
// Liste statique des 10 premières cryptomonnaies
$cryptos = [
    "Bitcoin",
    "Ethereum",
    "Tether",
    "Binance Coin",
    "USD Coin",
    "XRP",
    "Cardano",
    "Solana",
    "Polkadot",
    "Dogecoin"
];
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Top 10 Cryptomonnaies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #333;
            padding: 20px;
        }
        .crypto-buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
        }
        .crypto-buttons button {
            margin: 10px;
            padding: 15px 25px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .crypto-buttons button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>Top 10 Cryptomonnaies</h1>
    <div class="crypto-buttons">
        <?php foreach ($cryptos as $crypto): ?>
            <button><?php echo htmlspecialchars($crypto); ?></button>
        <?php endforeach; ?>
    </div>
</body>
</html>
