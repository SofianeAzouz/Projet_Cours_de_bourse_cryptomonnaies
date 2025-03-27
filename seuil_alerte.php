<?php
include 'db_connection.php';
include 'functions.php';

$message = "";

// Table associée à chaque crypto
$cryptoTables = [
    "ada" => "ada_prices",
    "bnb" => "bnb_prices",
    "btc" => "btc_prices",
    "doge" => "doge_prices",
    "eth" => "eth_prices",
    "sol" => "sol_prices",
    "steth" => "steth_prices",
    "trx" => "trx_prices",
    "usdc" => "usdc_prices",
    "usdt" => "usdt_prices",
    "xrp" => "xrp_prices"
];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $crypto = $_POST["crypto"];
    $seuilBas = floatval($_POST["seuil_bas"]);
    $seuilHaut = floatval($_POST["seuil_haut"]);

    if (array_key_exists($crypto, $cryptoTables)) {
        $table = $cryptoTables[$crypto];

        // Récupération du dernier prix depuis la table correspondante
        $stmt = $conn->prepare("SELECT price FROM $table ORDER BY date DESC LIMIT 1");
        $stmt->execute();
        $result = $stmt->fetch();

        if ($result) {
            $prixActuel = $result['price'];

            // Vérification des seuils
            if ($prixActuel <= $seuilBas) {
                $message .= "🔻 Alerte : le prix de $crypto est <= à {$seuilBas} EUR<br>";
            } elseif ($prixActuel >= $seuilHaut) {
                $message .= "🔺 Alerte : le prix de $crypto est >= à {$seuilHaut} EUR<br>";
            } else {
                $message .= "✅ Le prix est dans la zone normale.<br>";
            }

            // Insertion dans la table seuils
            $insert = $conn->prepare("INSERT INTO seuils (crypto, seuil_bas, seuil_haut, prix_actuel) 
                                      VALUES (:crypto, :seuil_bas, :seuil_haut, :prix_actuel)");
            $insert->execute([
                ':crypto' => $crypto,
                ':seuil_bas' => $seuilBas,
                ':seuil_haut' => $seuilHaut,
                ':prix_actuel' => $prixActuel
            ]);

            $message .= "💾 Données enregistrées dans la base.";
        } else {
            $message = "❌ Aucun prix trouvé pour $crypto.";
        }
    } else {
        $message = "❌ Cryptomonnaie inconnue.";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Seuils d’Alerte Crypto</title>
</head>
<body>
    <h2>Détection de seuils – Toutes cryptos</h2>
    <form method="post">
        <label>Choisissez une cryptomonnaie :</label>
        <select name="crypto" required>
            <?php foreach ($cryptoTables as $code => $table): ?>
                <option value="<?= $code ?>"><?= strtoupper($code) ?></option>
            <?php endforeach; ?>
        </select><br><br>

        <label>Seuil bas (EUR) :</label>
        <input type="number" name="seuil_bas" step="0.01" required><br><br>

        <label>Seuil haut (EUR) :</label>
        <input type="number" name="seuil_haut" step="0.01" required><br><br>

        <button type="submit">Vérifier</button>
    </form>

    <div style="margin-top:20px;">
        <?= $message ?>
    </div>
</body>
</html>


