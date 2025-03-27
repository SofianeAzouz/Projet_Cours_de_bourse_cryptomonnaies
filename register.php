<?php
include('db_connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $email = $_POST['email'];

    $query = "INSERT INTO users (username, password, email) VALUES ('$username', '$password', '$email')";
    if (mysqli_query($conn, $query)) {
        echo "Utilisateur créé avec succès!";
        header('Location: login.php');
    } else {
        echo "Erreur : " . mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>S'inscrire</title>
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
	    background-color: #f9f9f9
   </style>
</head>
<body>
    <h1>S'inscrire</h1>
    <form method="POST">
        <input type="text" name="username" placeholder="Nom d'utilisateur" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
        <input type="email" name="email" placeholder="Email" required>
        <button type="submit">S'inscrire</button>
    </form>
</body>
</html>
