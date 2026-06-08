<?php
session_start();
include "db.php";

$isAdmin = isset($_SESSION['role']) && $_SESSION['role'] === 'admin';


if (isset($_GET['logout'])) {
    session_destroy();
    header("Location: login.php");
    exit;
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $tytul = $_POST['tytul'];
    $opis = $_POST['opis'];

    $stmt = $conn->prepare("INSERT INTO zgloszenia (tytul, opis) VALUES (?, ?)");
    $stmt->bind_param("ss", $tytul, $opis);
    $stmt->execute();

    header("Location: zglos.php");
    exit;
}


if ($isAdmin && isset($_GET['status'], $_GET['id'])) {

    $stmt = $conn->prepare("UPDATE zgloszenia SET status=? WHERE id=?");
    $stmt->bind_param("si", $_GET['status'], $_GET['id']);
    $stmt->execute();

    header("Location: zglos.php");
    exit;
}


if ($isAdmin && isset($_GET['delete'])) {

    $stmt = $conn->prepare("DELETE FROM zgloszenia WHERE id=?");
    $stmt->bind_param("i", $_GET['delete']);
    $stmt->execute();

    header("Location: zglos.php");
    exit;
}


$result = $conn->query("SELECT * FROM zgloszenia ORDER BY id DESC");
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Panel zgłoszeń</title>
    <link rel="stylesheet" href="form.css">
</head>

<body class="zglos">


<div style="text-align:center; margin-top:15px;">
    <?php if($isAdmin): ?>
        <a href="?logout=1" style="
            display:inline-block;
            padding:10px 15px;
            background:#ef4444;
            color:white;
            border-radius:8px;
            text-decoration:none;
        ">
            🚪 Wyloguj
        </a>
    <?php else: ?>
        <a href="login.php" style="
            display:inline-block;
            padding:10px 15px;
            background:#2563eb;
            color:white;
            border-radius:8px;
            text-decoration:none;
        ">
            🔐 Zaloguj jako admin
        </a>
    <?php endif; ?>
</div>


<div class="zglos-container">

    <h2>🎬 Zgłoś film</h2>

    <form method="POST">

        <input type="text" name="tytul" placeholder="Tytuł filmu" required>

        <textarea name="opis" placeholder="Opis filmu" required></textarea>

        <button type="submit">Wyślij zgłoszenie</button>

    </form>

</div>


<h2 style="text-align:center; margin-top:40px;">📥 Zgłoszenia</h2>

<main style="max-width:800px; margin:auto;">

<?php while($z = $result->fetch_assoc()): ?>

    <div style="background:#111827; padding:15px; margin:10px; border-radius:10px;">

        <h3 style="color:white;">
            <?= htmlspecialchars($z['tytul']) ?>
        </h3>

        <p style="color:white;">
            <?= htmlspecialchars($z['opis']) ?>
        </p>

        <p>
            <b style="color:white;">Status:</b>
            <span style="color:
                <?= $z['status'] == 'zaakceptowany' ? 'lightgreen' :
                    ($z['status'] == 'odrzucony' ? 'tomato' : 'yellow') ?>">
                <?= $z['status'] ?>
            </span>
        </p>

       
        <?php if($isAdmin): ?>
        <div style="display:flex; gap:10px; font-size:14px;">

            <a href="?status=zaakceptowany&id=<?= $z['id'] ?>" style="color:lightgreen;">✔ Akceptuj</a>

            <a href="?status=odrzucony&id=<?= $z['id'] ?>" style="color:orange;">✖ Odrzuć</a>

            <a href="?delete=<?= $z['id'] ?>"
               onclick="return confirm('Usunąć zgłoszenie?')"
               style="color:red;">🗑 Usuń</a>

        </div>
        <?php endif; ?>

    </div>

<?php endwhile; ?>

</main>

</body>
</html>