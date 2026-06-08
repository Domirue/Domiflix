-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 26, 2026 at 08:57 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `rok` int(11) DEFAULT NULL,
  `gatunek` varchar(100) DEFAULT NULL,
  `obraz` varchar(255) DEFAULT NULL,
  `galeria1` varchar(255) DEFAULT NULL,
  `galeria2` varchar(255) DEFAULT NULL,
  `galeria3` varchar(255) DEFAULT NULL,
  `ciekawostki` text DEFAULT NULL,
  `link_filmweb` varchar(255) DEFAULT NULL,
  `link_imdb` varchar(255) DEFAULT NULL,
  `link_rotten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id`, `tytul`, `opis`, `rok`, `gatunek`, `obraz`, `galeria1`, `galeria2`, `galeria3`, `ciekawostki`, `link_filmweb`, `link_imdb`, `link_rotten`) VALUES
(1, 'Interstellar', 'W wyniku błędów, jakie ludzkość popełniła w XX wieku, Ziemia znalazła się na skraju całkowitej katastrofy. Państwa przestały istnieć w dotychczasowej formie, a rządy utraciły kontrolę nad światem. Gospodarka działa jedynie w minimalnym stopniu i nie jest w stanie zapewnić ludziom podstawowych potrzeb, takich jak żywność.\r\n\r\nW tym dramatycznym momencie naukowcy wywodzący się z pozostałości po organizacji NASA odkrywają możliwość podróżowania w czasoprzestrzeni. Podejmują się jej zbadania, widząc w tym ostatnią szansę na ocalenie ludzkości i uratowanie umierającej planety.', 2014, 'Sci-Fi', 'plakat.jpg', 'interstellar1.jpg', 'razem.jpg', 'woda.jpg', '\r\n<ul>\r\n<li>Christopher Nolan i jego zespół zasadzili 500 akrów kukurydzy na potrzeby filmu (dowiedział się, że to wykonalne dzięki doświadczeniu z produkcji Człowieka ze stali). Kukurydzę potem sprzedano — i faktycznie przyniosła zysk.</li>\r\n\r\n<li>Słowo „interstellar” pada w tym filmie tylko raz. Dokładnie w połowie.</li>\r\n\r\n<li>Matt Damon nie był uwzględniany w promocji tego filmu. Nie wymieniano jego nazwiska i nie pojawił się na żadnej premierze. Poza artykułem w „Variety”, ogłaszającym jego udział w „niesprecyzowanej roli”, jego casting był utrzymywany w tajemnicy aż do premiery filmu.</li>\r\n\r\n<li>Czarna dziura była tak naukowo dokładna, że wyrenderowanie każdej klatki zajmowało około 100 godzin.</li>\r\n\r\n<li>Anne Hathaway doznała hipotermii podczas zdjęć na Islandii, ponieważ jej skafander astronautki był częściowo otwarty podczas kręcenia scen w lodowatej wodzie.</li>\r\n</ul>\r\n', 'https://www.filmweb.pl/film/Interstellar-2014-375629', 'https://www.imdb.com/title/tt0816692/', 'https://www.rottentomatoes.com/m/interstellar_2014'),
(2, 'Gladiator', 'Maximus, ceniony generał armii rzymskiej, zdobywa zaufanie cesarza Marka Aureliusza, który planuje przekazać mu władzę nad imperium. Decyzja ta wywołuje gniew Kommodusa — syna cesarza — który przejmuje tron i wydaje rozkaz zabicia Maximusa oraz jego rodziny. Generałowi udaje się jednak uciec, lecz trafia do niewoli i zostaje gladiatorem. Dzięki swoim umiejętnościom szybko zdobywa sławę na arenie i uznanie tłumów. Powracając do Rzymu jako niezwyciężony wojownik, Maximus planuje zemstę na człowieku, który odebrał mu wszystko.', 2000, 'Dramat', 'gladiator-plakat.jpg', 'gladiator1.jpg', 'gladiator2.jpg', 'gladiator3.jpg', '<ul>\r\n<li>Ridley Scott początkowo nie chciał reżyserować filmu. Dopiero ilustracja przedstawiająca walkę gladiatorów przekonała go do stworzenia „Gladiatora”.</li>\r\n<li>Oliver Reed zmarł podczas produkcji, a jego brakujące sceny ukończono przy użyciu efektów CGI.</li>\r\n<li>Część Koloseum została zbudowana na planie zdjęciowym, a resztę dodano komputerowo.</li>\r\n<li>Russell Crowe doznał kilku kontuzji podczas kręcenia scen walk.</li>\r\n<li>Cytat „Are you not entertained?” stał się jednym z najbardziej kultowych tekstów w historii kina.</li>\r\n</ul>', 'https://www.filmweb.pl/Gladiator', 'https://www.imdb.com/title/tt0172495/', 'https://www.rottentomatoes.com/m/gladiator'),
(3, 'Kształt Twojego Głosu', 'Historia przedstawia głuchą dziewczynę, Shōko Nishimiya, która rozpoczyna naukę w nowej szkole podstawowej. Z powodu swojej niepełnosprawności staje się ofiarą przemocy ze strony rówieśników, a szczególnie Shōya Ishida. Z czasem sytuacja się odwraca i to Ishida zostaje odrzucony przez klasę za swoje wcześniejsze zachowanie wobec dziewczyny. Po latach, już po ukończeniu szkoły, chłopak zaczyna inaczej patrzeć na swoją przeszłość. Uczy się języka migowego i próbuje ponownie nawiązać kontakt z Nishimiyą, chcąc naprawić wyrządzone jej krzywdy i odkupić swoje winy.', 2016, 'Anime', 'asv-plakat.jpg', 'asv1.jpg', 'asv2.jpg', 'asv3.jpg', '<ul>\r\n<li>Aktorka podkładająca głos Shōko w angielskim dubbingu, Lexi Cowden, jest osobą niesłyszącą w życiu prywatnym.</li>\r\n<li>Na początku filmu Shōko ma długie włosy, a następnego dnia pojawia się już w krótkiej fryzurze typu bob.</li>\r\n<li>Film jest adaptacją mangi Yoshitoki Ōimy publikowanej w latach 2013–2014 (7 tomów).</li>\r\n<li>W japońskim oryginale Shōko komunikuje się głównie za pomocą języka migowego, co zwiększa realizm historii.</li>\r\n</ul>', 'https://www.filmweb.pl/film/Koe+no+Katachi-2016-769531', 'https://www.imdb.com/title/tt5323662/', 'https://www.rottentomatoes.com/m/a_silent_voice');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `id` int(11) NOT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'oczekuje'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zgloszenia`
--

INSERT INTO `zgloszenia` (`id`, `tytul`, `opis`, `status`) VALUES
(2, 'test', 'testowanko', 'oczekuje'),
(3, 'test 2', 'testuje coś jeszcze raz', 'odrzucony'),
(5, 'Nieszczególne miejsce', 'To poruszający dramat o samotnym ojcu, który dowiaduje się, że zostało mu niewiele życia. Z całych sił próbuje znaleźć idealną rodzinę dla swojego kilkuletniego syna, zanim odejdzie.', 'zaakceptowany'),
(6, 'Projekt Hail Mary', 'Astronauta próbuje uratować Ziemię, będąc sam w przestrzeni kosmicznej.', 'zaakceptowany');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
