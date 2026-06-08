<?php
include "db.php";

$sql = "SELECT * FROM filmy ORDER BY gatunek ASC, rok ASC";
$result = $conn->query($sql);

$currentGatunek = '';
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DomiFlix</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="home">


<header class="topbar">

    <div class="left">
        <a href="login.php" class="btn">🔐 Admin</a>
    </div>

    <div class="center">
        <img class="logo" src="logo.png" alt="DomiFlix">
    </div>

    <div class="right">
        <a href="zglos.php" class="btn">➕ Zgłoś film</a>
    </div>

</header>


<div class="search-box">
    <div class="search-wrapper">
        <span class="search-icon">🔍</span>
        <input type="text" id="search" placeholder="Szukaj filmu...">
    </div>
</div>


<main>

<?php while($film = $result->fetch_assoc()): ?>

    <?php if ($film['gatunek'] != $currentGatunek): ?>

        <?php
        if ($currentGatunek != '') {
            echo '</div>';
        }

        $currentGatunek = $film['gatunek'];


        $class = strtolower(trim($currentGatunek));
        $class = str_replace([' ', '  '], '-', $class);
        ?>

        <h2 class="gatunek <?= $class ?>">
            <?= $currentGatunek ?>
        </h2>

        <div class="grid-filmow">

    <?php endif; ?>

    <div class="kafelek" data-title="<?= strtolower($film['tytul']) ?>">

        <a href="film.php?id=<?= $film['id'] ?>" class="film-link">
            <h3><?= $film['tytul'] ?> (<?= $film['rok'] ?>)</h3>
        </a>

    </div>

<?php endwhile; ?>

<?php if ($currentGatunek != '') echo '</div>'; ?>

</main>


<footer>
    <p>DR | 2026</p>
</footer>


<script>
const searchInput = document.getElementById("search");
const cards = document.querySelectorAll(".kafelek");
const grids = document.querySelectorAll(".grid-filmow");

searchInput.addEventListener("input", function() {
    let value = this.value.toLowerCase();

    cards.forEach(card => {
        let title = card.dataset.title;
        card.classList.toggle("hidden", !title.includes(value));
    });

    grids.forEach(grid => {
        const visibleCards = grid.querySelectorAll(".kafelek:not(.hidden)");
        const header = grid.previousElementSibling;

        if (visibleCards.length === 0) {
            grid.style.display = "none";
            if (header && header.classList.contains("gatunek")) {
                header.style.display = "none";
            }
        } else {
            grid.style.display = "";
            if (header && header.classList.contains("gatunek")) {
                header.style.display = "";
            }
        }
    });
});
</script>

</body>
</html>