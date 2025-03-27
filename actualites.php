<?php
// actualites.php

// Actualités de la bourse (exemple statique)
$bourse_news = [
    [
        "title" => "Bourse : Indice CAC 40 en hausse",
        "date" => "2025-03-11",
        "content" => "Les actions françaises affichent une tendance haussière malgré les incertitudes économiques actuelles."
    ],
    [
        "title" => "Marché US : Dow Jones atteint un nouveau record",
        "date" => "2025-03-10",
        "content" => "Le Dow Jones continue de grimper, soutenu par des résultats solides dans le secteur technologique."
    ],
    // Vous pouvez ajouter d'autres actualités ici...
];

// Actualités des cryptomonnaies (exemple statique)
$crypto_news = [
    [
        "title" => "Bitcoin franchit la barre des 50 000$",
        "date" => "2025-03-11",
        "content" => "Le Bitcoin continue de surprendre les investisseurs avec un volume de trading en forte hausse."
    ],
    [
        "title" => "Ethereum : Mise à jour majeure à venir",
        "date" => "2025-03-09",
        "content" => "La communauté Ethereum se prépare pour une mise à jour visant à améliorer la scalabilité et la sécurité."
    ],
    // Vous pouvez ajouter d'autres actualités ici...
];
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Actualités Bourse et Cryptomonnaies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .news-section {
            margin-bottom: 40px;
        }
        .news-section h2 {
            color: #333;
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
        }
        .news-item {
            background-color: #fff;
            margin: 15px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .news-item h3 {
            margin-top: 0;
        }
        .news-item .date {
            font-size: 0.9em;
            color: #666;
        }
        /* Boutons de navigation ou d'action si besoin */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>Actualités de la Bourse et des Cryptomonnaies</h1>
    
    <div class="news-section">
        <h2>Actualités de la Bourse</h2>
        <?php foreach ($bourse_news as $news): ?>
            <div class="news-item">
                <h3><?php echo htmlspecialchars($news['title']); ?></h3>
                <p class="date"><?php echo htmlspecialchars($news['date']); ?></p>
                <p><?php echo htmlspecialchars($news['content']); ?></p>
                <!-- Exemple de bouton si vous souhaitez rediriger vers plus d'infos -->
                <a class="btn" href="#">Lire la suite</a>
            </div>
        <?php endforeach; ?>
    </div>

    <div class="news-section">
        <h2>Actualités Cryptomonnaies</h2>
        <?php foreach ($crypto_news as $news): ?>
            <div class="news-item">
                <h3><?php echo htmlspecialchars($news['title']); ?></h3>
                <p class="date"><?php echo htmlspecialchars($news['date']); ?></p>
                <p><?php echo htmlspecialchars($news['content']); ?></p>
                <a class="btn" href="#">Lire la suite</a>
            </div>
        <?php endforeach; ?>
    </div>
</body>
</html>

