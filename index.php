<?php
include('db_connection.php');
include('functions.php');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bourse.com</title>
    <link rel="stylesheet" href="style.css">
    <style> 
     body {
	    text-align:center;
	}
        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }
        .cryptos, .index {
            width: 300px;
            text-align: center;
            margin: 10px;
            padding: 20px;
            border: 1px solid #ddd;
	    border-radius: 5px;
            box-shadow: 2px 2px 10px rgba(0.1, 0.1, 1, 0.1);
            background-color: #f9f9f9;
     </style>
</head>

<body>
    <header>
        <h1>Bourse.com</h1>
        <nav>
            <ul>
                <li><a href="index.php">Accueil</a></li>
                <li><a href="cryptos.php">Cryptomonnaies</a></li>
                <li><a href="indices.php">Indices Financiers</a></li>
                <li><a href="actualites.php">Actualités</a></li>
                <li><a href="seuil_alerte.php">Notification</a></li>
		<?php
                if (isLoggedIn()) {
                    echo '<li><a href="logout.php">Se déconnecter</a></li>';
                } else {
                    echo '<li><a href="login.php">Se connecter</a></li>';
                    echo '<li><a href="register.php">S\'inscrire</a></li>';
                }
                ?>
            </ul>
        </nav>
    </header>

    <main>
        <section id="cryptos">
            <h2>Cryptomonnaies</h2>
            <?php
            $cryptos = getCryptos($conn);
            foreach ($cryptos as $crypto) {
                echo "<div class='crypto'>";
                echo "<h3>" . $crypto['name'] . "</h3>";
                echo "<p>Prix: " . $crypto['price'] . " EUR" . " Changement en 24h: " . $crypto['change_24h'] . "%</p>" ;
                echo "</div>";
            }
            ?>
        </section>
    </main>
</body>
</html>

