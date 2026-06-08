<?php
include "db.php";
session_start();

$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $login = $_POST['login'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT * FROM users WHERE login=?");
    $stmt->bind_param("s", $login);
    $stmt->execute();

    $result = $stmt->get_result();
    $user = $result->fetch_assoc();


    if ($user && $password === $user['password']) {

        $_SESSION['user_id'] = $user['id'];
        $_SESSION['role'] = $user['role'];

        header("Location: zglos.php");
        exit;

    } else {
        $error = "? B³êdny login lub has³o";
    }
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Logowanie</title>
    <link rel="stylesheet" href="form.css">
</head>

<body class="zglos">

<div class="zglos-container">

    <h2>Logowanie admina</h2>

    <?php if($error): ?>
        <p style="color:red; margin-bottom:10px;">
            <?= $error ?>
        </p>
    <?php endif; ?>

    <form method="POST">

        <input type="text" name="login" placeholder="Login" required>

        <input type="password" name="password" placeholder="Has³o" required>

        <button type="submit">Zaloguj</button>

    </form>

</div>

</body>
</html>