-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 10 Octobre 2018 à 19:14
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1-log
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cooking_recipes`
--

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `description`, `price`) VALUES
(1, 'Tablette de chocolat', '200 Gramme de chocolat en tablette', 3);

-- --------------------------------------------------------

--
-- Structure de la table `quantity`
--

CREATE TABLE `quantity` (
  `recipe_id` int(10) UNSIGNED NOT NULL,
  `ingredient_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `quantity`
--

INSERT INTO `quantity` (`recipe_id`, `ingredient_id`, `amount`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `description`) VALUES
(1, 'Gâteau au chocolat', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Index pour la table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `quantity`
--
ALTER TABLE `quantity`
  ADD CONSTRAINT `ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
