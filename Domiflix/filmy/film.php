<?php
include "db.php";

$id = $_GET['id'];

$sql = "SELECT * FROM filmy WHERE id=$id";
$result = $conn->query($sql);

$film = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $film['tytul'] ?></title>
    <link rel="stylesheet" href="grid.css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
</head>

<body>

<header>
    <h1><?= $film['tytul'] ?></h1>
</header>

<nav>
    <a href="#fabuła">Fabuła</a>
    <a href="#galeria">Galeria</a>
    <a href="#ciekawostki">Ciekawostki</a>
    <a href="index.php">Powrót</a>
    <button id="guzik">Zmień kolor</button>
</nav>

<aside>
    <img src="obrazy/<?= $film['obraz'] ?>" alt="<?= $film['tytul'] ?>">
</aside>

<main>

<section id="fabuła" class="sekcja1">
    <h2>Fabuła</h2>
    <p>
        <?= $film['opis'] ?>
    </p>
</section>

<section id="galeria" class="sekcja3">
    <h2>Galeria</h2>
    <div class="galeria">
        <img src="obrazy/<?= $film['galeria1'] ?>" alt="">
        <img src="obrazy/<?= $film['galeria2'] ?>" alt="">
        <img src="obrazy/<?= $film['galeria3'] ?>" alt="">
    </div>
</section>

<section id="ciekawostki" class="sekcja4">
    <h2>Ciekawostki</h2>
    <p>
        <?= $film['ciekawostki'] ?>
    </p>
</section>

<section class="sekcja5">
    <h2>Oceny filmu</h2>
    <div class="linki">

        <?php if(!empty($film['link_filmweb'])): ?>
            <a href="<?= $film['link_filmweb'] ?>" target="_blank">Filmweb</a>
        <?php endif; ?>

        <?php if(!empty($film['link_imdb'])): ?>
            <a href="<?= $film['link_imdb'] ?>" target="_blank">IMDb</a>
        <?php endif; ?>

        <?php if(!empty($film['link_rotten'])): ?>
            <a href="<?= $film['link_rotten'] ?>" target="_blank">Rotten Tomatoes</a>
        <?php endif; ?>

    </div>
</section>

</main>

<footer>
    <h6>DR | 2026</h6>
</footer>

<script>
const button = document.getElementById("guzik");
button.addEventListener("click", function() {
    document.body.classList.toggle("jasny");
});
</script>

</body>
</html>