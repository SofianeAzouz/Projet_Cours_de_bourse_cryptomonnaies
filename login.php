<?php
include('db_connection.php');
include('functions.php');
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM users WHERE username = '$username'";
    $result = mysqli_query($conn, $query);
    $user = mysqli_fetch_assoc($result);

    if ($user && password_verify($password, $user['password'])) {
	    $_SESSION['id'] = $user['id'];
	    $_SESSION['isLoggedIn'] = true;
        header('Location: index.php');
    } else {
        $error = "Nom d'utilisateur ou mot de passe incorrect.";
    }
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Se connecter</title>
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
    <h1>Se connecter</h1>
    <form method="POST">
        <input type="text" name="username" placeholder="Nom d'utilisateur" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
	<button type="submit">Se connecter</button>
    </form>

    <?php if (isset($error)) { echo "<p>$error</p>"; } ?>
</body>
</html>
