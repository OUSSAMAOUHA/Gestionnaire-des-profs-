-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 avr. 2022 à 01:03
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(77, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 14, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 14, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 3),
(80, 14, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 14, 'CIN', 'text', 'CIN', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 14, 'DRPP', 'text', 'DRPP', 0, 1, 1, 1, 1, 1, '{}', 6),
(83, 14, 'daterecrutement', 'date', 'Daterecrutement', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 14, 'telephone', 'number', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 8),
(85, 14, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 9),
(86, 14, 'datedenaissance', 'date', 'Datedenaissance', 0, 1, 1, 1, 1, 1, '{}', 10),
(87, 14, 'profappaensa', 'checkbox', 'Profappaensa', 0, 1, 1, 1, 1, 1, '{\"on\":\"Prof interne\",\"off\":\"Prof externe\",\"checked\":true}', 11),
(88, 14, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{}', 12),
(89, 14, 'dosscientifique', 'file', 'Dosscientifique', 0, 1, 1, 1, 1, 1, '{}', 13),
(90, 14, 'dossadministratif', 'file', 'Dossadministratif', 0, 1, 1, 1, 1, 1, '{}', 14),
(91, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(92, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(94, 14, 'dosspedagogique', 'file', 'Dosspedagogique', 0, 1, 1, 1, 1, 1, '{}', 17),
(95, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 15, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(97, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(98, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(99, 14, 'professeur_belongsto_specification_relationship', 'relationship', 'specifications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specification\",\"table\":\"specifications\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(100, 14, 'structurederecherche', 'text', 'Structurederecherche', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 18),
(101, 14, 'directeurdestructderecherche', 'text', 'Directeurdestructderecherche', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true,\"showLatLngInput\":false}', 19),
(104, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(106, 1, 'prenom', 'text', 'Prenom', 0, 1, 1, 1, 1, 1, '{}', 12),
(107, 1, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 13),
(108, 1, 'cin', 'text', 'Cin', 0, 1, 1, 1, 1, 1, '{}', 14),
(109, 1, 'numDRPP', 'text', 'NumDRPP', 0, 1, 1, 1, 1, 1, '{}', 15),
(110, 1, 'dateRecrutement', 'date', 'DateRecrutement', 0, 1, 1, 1, 1, 1, '{}', 16),
(111, 1, 'telephone', 'number', 'Telephone', 0, 1, 1, 1, 1, 1, '{}', 17),
(112, 1, 'dateNaissance', 'date', 'DateNaissance', 0, 1, 1, 1, 1, 1, '{}', 18),
(113, 1, 'etat', 'checkbox', 'Etat', 0, 1, 1, 1, 1, 1, '{}', 19),
(114, 1, 'specialite', 'text', 'Specialite', 0, 1, 1, 1, 1, 1, '{\"on\":\"Prof interne\",\"off\":\"Prof externe\",\"checked\":true}', 20),
(115, 1, 'structureRecherche', 'text', 'StructureRecherche', 0, 1, 1, 1, 1, 1, '{}', 21),
(116, 1, 'DirecteurStructureRecherche', 'text', 'DirecteurStructureRecherche', 0, 1, 1, 1, 1, 1, '{}', 22),
(117, 1, 'DS', 'file', 'DS', 0, 1, 1, 1, 1, 1, '{}', 23),
(118, 1, 'DP', 'file', 'DP', 0, 1, 1, 1, 1, 1, '{}', 24),
(119, 1, 'DA', 'file', 'DA', 0, 1, 1, 1, 1, 1, '{}', 25),
(125, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(126, 17, 'nom', 'text', 'Nom', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(128, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(129, 1, 'user_belongsto_specialite_relationship', 'relationship', 'specialites', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialite\",\"table\":\"specialites\",\"type\":\"belongsTo\",\"column\":\"specialite\",\"key\":\"nom\",\"label\":\"nom\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 26);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-31 15:27:36', '2022-04-17 15:26:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-31 15:27:36', '2022-03-31 15:27:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-31 15:27:36', '2022-03-31 15:27:36'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(8, 'specification', 'specification', 'Specification', 'Specifications', NULL, 'App\\Specification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(14, 'professeurs', 'professeurs', 'Professeur', 'Professeurs', NULL, 'App\\Professeur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-02 20:14:00', '2022-04-07 11:36:28'),
(15, 'specifications', 'specifications', 'Specification', 'Specifications', NULL, 'App\\Specification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(17, 'specialites', 'specialites', 'Specialite', 'Specialites', NULL, 'App\\Specialite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-04-17 15:22:15', '2022-04-17 15:22:15');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` int(20) NOT NULL,
  `idprof` int(20) NOT NULL,
  `etat1` varchar(40) NOT NULL,
  `etat2` varchar(40) NOT NULL,
  `etat3` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `idprof`, `etat1`, `etat2`, `etat3`) VALUES
(85, 29, '.En_attente.', '.En_attente.', '.En_attente .'),
(86, 30, '.En_attente.', '.En_attente.', '.En_attente .'),
(87, 31, '.En_attente.', '.En_attente.', '.En_attente .'),
(88, 32, '.En_attente.', '.En_attente.', '.En_attente .'),
(89, 33, '.En_attente.', '.En_attente.', '.En_attente .'),
(90, 34, '.En_attente.', '.En_attente.', '.En_attente .'),
(91, 35, '.Validé.', '.Validé.', '.Validé .');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-31 15:27:36', '2022-03-31 15:27:36'),
(2, 'professeur', '2022-04-02 16:01:17', '2022-04-17 15:13:21');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-03-31 15:27:36', '2022-04-17 15:58:24', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2022-03-31 15:27:36', '2022-04-17 15:58:24', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2022-03-31 15:27:36', '2022-04-17 15:58:17', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-03-31 15:27:36', '2022-04-02 16:51:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2022-03-31 15:27:36', '2022-04-17 15:42:57', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-03-31 15:27:37', '2022-04-17 15:42:57', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-03-31 15:27:37', '2022-04-17 15:42:57', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2022-03-31 15:27:37', '2022-04-17 15:42:58', 'voyager.settings.index', NULL),
(12, 1, 'validation', '', '_self', 'voyager-news', '#000000', 5, 5, '2022-03-31 15:27:37', '2022-04-17 15:42:58', 'voyager.posts.index', 'null'),
(13, 1, 'Dossiers & Statistiques', '/admin/pages', '_self', 'voyager-bar-chart', '#000000', NULL, 1, '2022-03-31 15:27:38', '2022-04-17 15:34:55', NULL, ''),
(16, 2, 'Dossiers', 'admin', '_blank', 'voyager-bar-chart', '#231b98', NULL, 1, '2022-04-02 16:04:43', '2022-04-17 15:54:10', NULL, ''),
(19, 1, 'Professeurs', '', '_self', 'voyager-people', '#000000', 5, 7, '2022-04-02 20:14:00', '2022-04-17 15:42:58', 'voyager.professeurs.index', 'null'),
(22, 1, 'Specialites', '', '_self', 'voyager-medal-rank-star', '#000000', NULL, 2, '2022-04-17 15:22:16', '2022-04-17 15:58:52', 'voyager.specialites.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2016_01_01_000000_create_pages_table', 2),
(30, '2016_01_01_000000_create_posts_table', 2),
(31, '2016_02_15_204651_create_categories_table', 2),
(32, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(33, '2022_04_10_222342_add_paid_to_users_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(2, 'browse_bread', NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(3, 'browse_database', NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(4, 'browse_media', NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(5, 'browse_compass', NULL, '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(6, 'browse_menus', 'menus', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(7, 'read_menus', 'menus', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(8, 'edit_menus', 'menus', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(9, 'add_menus', 'menus', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(10, 'delete_menus', 'menus', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(11, 'browse_roles', 'roles', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(12, 'read_roles', 'roles', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(13, 'edit_roles', 'roles', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(14, 'add_roles', 'roles', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(15, 'delete_roles', 'roles', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(16, 'browse_users', 'users', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(17, 'read_users', 'users', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(18, 'edit_users', 'users', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(19, 'add_users', 'users', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(20, 'delete_users', 'users', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(21, 'browse_settings', 'settings', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(22, 'read_settings', 'settings', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(23, 'edit_settings', 'settings', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(24, 'add_settings', 'settings', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(25, 'delete_settings', 'settings', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(26, 'browse_categories', 'categories', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(27, 'read_categories', 'categories', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(28, 'edit_categories', 'categories', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(29, 'add_categories', 'categories', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(30, 'delete_categories', 'categories', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(31, 'browse_posts', 'posts', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(32, 'read_posts', 'posts', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(33, 'edit_posts', 'posts', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(34, 'add_posts', 'posts', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(35, 'delete_posts', 'posts', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(36, 'browse_pages', 'pages', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(37, 'read_pages', 'pages', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(38, 'edit_pages', 'pages', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(39, 'add_pages', 'pages', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(40, 'delete_pages', 'pages', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(46, 'browse_specification', 'specification', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(47, 'read_specification', 'specification', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(48, 'edit_specification', 'specification', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(49, 'add_specification', 'specification', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(50, 'delete_specification', 'specification', '2022-03-31 19:43:52', '2022-03-31 19:43:52'),
(56, 'browse_professeurs', 'professeurs', '2022-04-02 20:14:00', '2022-04-02 20:14:00'),
(57, 'read_professeurs', 'professeurs', '2022-04-02 20:14:00', '2022-04-02 20:14:00'),
(58, 'edit_professeurs', 'professeurs', '2022-04-02 20:14:00', '2022-04-02 20:14:00'),
(59, 'add_professeurs', 'professeurs', '2022-04-02 20:14:00', '2022-04-02 20:14:00'),
(60, 'delete_professeurs', 'professeurs', '2022-04-02 20:14:00', '2022-04-02 20:14:00'),
(61, 'browse_specifications', 'specifications', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(62, 'read_specifications', 'specifications', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(63, 'edit_specifications', 'specifications', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(64, 'add_specifications', 'specifications', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(65, 'delete_specifications', 'specifications', '2022-04-06 20:46:31', '2022-04-06 20:46:31'),
(71, 'browse_specialites', 'specialites', '2022-04-17 15:22:16', '2022-04-17 15:22:16'),
(72, 'read_specialites', 'specialites', '2022-04-17 15:22:16', '2022-04-17 15:22:16'),
(73, 'edit_specialites', 'specialites', '2022-04-17 15:22:16', '2022-04-17 15:22:16'),
(74, 'add_specialites', 'specialites', '2022-04-17 15:22:16', '2022-04-17 15:22:16'),
(75, 'delete_specialites', 'specialites', '2022-04-17 15:22:16', '2022-04-17 15:22:16');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(3, 4),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `professeurs`
--

CREATE TABLE `professeurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numDRPP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateRecrutement` date DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `DP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structureRecherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directeurStructuredRecherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professeurs`
--

INSERT INTO `professeurs` (`id`, `nom`, `prenom`, `photo`, `CIN`, `numDRPP`, `dateRecrutement`, `telephone`, `email`, `dateNaissance`, `etat`, `specialite`, `DS`, `DA`, `created_at`, `updated_at`, `DP`, `structureRecherche`, `directeurStructuredRecherche`) VALUES
(1, 'MAKAOUI', 'REDA', 'professeurs\\April2022\\ubI31Cuub9FCmOBUDznx.jpeg', 'bk704099', 'gg00', '2022-04-06', 642254485, 'redamakaoui2001@gmail.com', '2001-10-14', '1', NULL, '[{\"download_link\":\"professeurs\\\\April2022\\\\qOTONekwDXsECKVMPRvu.pdf\",\"original_name\":\"Cours Chapitre  2 The\\u0301orie des langages et compilation ENSA.pdf\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\9QYTf0byVLrjqTqJqPiG.pdf\",\"original_name\":\"Management ENSA (2) (1).pdf\"}]', '2022-04-06 20:41:13', '2022-04-06 20:41:13', '[]', NULL, NULL),
(2, 'yoiunes', 'makaoui', NULL, 'bk704000', 'jj00', '2022-04-16', 642544851, 'younesmakaoui2001@gmail.com', '2005-09-10', '1', NULL, '[{\"download_link\":\"professeurs\\\\April2022\\\\tF4e8Y9FSQI2BPWwIlUn.h\",\"original_name\":\"etudiant.h\"}]', '[{\"download_link\":\"professeurs\\\\April2022\\\\MM36LsmLEnu4tQnLzGgg.h\",\"original_name\":\"employe.h\"}]', '2022-04-07 11:06:05', '2022-04-07 11:06:05', '[{\"download_link\":\"professeurs\\\\April2022\\\\HhcpV1fBWw18xbNRu7uA.pdf\",\"original_name\":\"C04-Heritage_et_Polymorphisme.pdf\"}]', NULL, NULL),
(3, 'MAKAOUI', 'REDA', NULL, NULL, NULL, NULL, 642254485, 'redamakaoui2001@gmail.com', NULL, '1', NULL, '[]', '[]', '2022-04-12 22:15:44', '2022-04-12 22:15:44', '[{\"download_link\":\"professeurs\\\\April2022\\\\CzC0Ekwzznzw6W9VWV9b.pdf\",\"original_name\":\"Projet web ENSA.pdf\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(2, 'user', 'Normal User', '2022-03-31 15:27:37', '2022-03-31 15:27:37'),
(3, 'professeur', 'professeur', '2022-03-31 20:06:21', '2022-03-31 20:06:21'),
(4, 'super admin', 'super admin', '2022-04-07 10:52:51', '2022-04-17 15:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2022\\yNB7mbeQY0ttn1DuIOKq.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\April2022\\BSnm8C2YU8hFr4eHceAm.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'GESTIONNAIRE DES PROFESSEURS', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'pour tous les professeurs universitaires', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2022\\WGtmK85ThlvDPT6Tn9Gu.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2022\\35AhnpKTuRSWrvuzOdek.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `specialites`
--

CREATE TABLE `specialites` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialites`
--

INSERT INTO `specialites` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'DevW', '2022-04-17 15:22:31', '2022-04-17 15:22:31'),
(2, 'DevM', '2022-04-17 15:59:04', '2022-04-17 15:59:04'),
(3, 'BIG DATA', '2022-04-17 15:59:14', '2022-04-17 15:59:14'),
(4, 'Network', '2022-04-17 15:59:22', '2022-04-17 15:59:22');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-31 15:27:38', '2022-03-31 15:27:38'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-31 15:27:38', '2022-03-31 15:27:38');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numDRPP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateRecrutement` date DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structureRecherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DirecteurStructureRecherche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `prenom`, `photo`, `cin`, `numDRPP`, `dateRecrutement`, `telephone`, `dateNaissance`, `etat`, `specialite`, `structureRecherche`, `DirecteurStructureRecherche`, `DS`, `DP`, `DA`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$cZyfXYl5Wvh.OyVmg7feEOvPyVns9nlphUZwCD7Ecd8sdOKX6IbSm', 'ygF4dzFdraY5GyBf3m0ZkhsNLIC9tDSgKn6AP7OmmaGV3GB1LMqEABTj7lxc', '{\"locale\":\"fr\"}', '2022-03-31 15:27:37', '2022-03-31 20:03:31', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 3, 'LACHGAR', 'lachgar@gmail.com', 'users\\April2022\\Sp072kLZ2xE1QSOc7C3k.jpg', NULL, '$2y$10$4dbr0ffvoUp3SHMa5/iBPOK3fYzuM/n8.8ah5ZeLVG/40ElHav4gu', NULL, '{\"locale\":\"fr\"}', '2022-04-17 15:37:57', '2022-04-17 15:39:24', NULL, NULL, '6876786', '5465', '2022-11-12', 4626745, '1986-02-18', '0', 'DevW', 'DEVWEB', 'LACHGAR', '[{\"download_link\":\"users\\\\April2022\\\\NjV5bOdc1T6o2mja5xjb.pdf\",\"original_name\":\"TP1.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\BnzoMtf1zilg3EONWJK8.pdf\",\"original_name\":\"TP2.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\RZF0RDhP1Q8RZqtrgBYJ.pdf\",\"original_name\":\"TP3.pdf\"}]'),
(30, 3, 'HANINE', 'hanine@ensaj.com', 'users\\April2022\\H3OoRLjGQ39Scod2Fqoy.png', NULL, '$2y$10$Dd0k/E2eJVaTBUSozXERk.OhSvgC3eNnGkH1ZLGBzgXbMIVGfMVmO', NULL, '{\"locale\":\"fr\"}', '2022-04-17 15:56:28', '2022-04-17 16:00:01', NULL, NULL, '165432', '2149626', '2008-02-18', 6489236, '1997-02-25', '0', 'BIG', 'DataS', 'HANINE', '[{\"download_link\":\"users\\\\April2022\\\\HN4xWIG4RWhEeXHpU4rO.pdf\",\"original_name\":\"TP1.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\cGx8s4xDf0YBz2oFiTMn.pdf\",\"original_name\":\"TP2.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\dQiJKVA8HrFVWuXykb4U.pdf\",\"original_name\":\"TP3.pdf\"}]'),
(31, 3, 'elhadi', 'elhadi@gmail.com', 'users/default.png', NULL, '$2y$10$geoI9wqy/Qp..vknoURZ.e0ebm7pzug92W3glhrA8aw/ofgs1xqJ6', NULL, NULL, '2022-04-17 22:49:39', '2022-04-17 22:49:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 3, 'elhadi', 'elhadi2@gmail.com', 'users/default.png', NULL, '$2y$10$7c84LLsWC4h39Q8l805lCuUqelQ6dbHVmbvSOmkXGdqwvqrP454cy', NULL, NULL, '2022-04-17 22:50:43', '2022-04-17 22:50:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 3, 'elhadi', 'elhadi2222@gmail.com', 'users/default.png', NULL, '$2y$10$G3Vn.UVXfJKwIK/XvYkk3eWcYZ.GlBwlVT3fXIe9WjcVGCVDZFAoS', NULL, NULL, '2022-04-17 22:52:21', '2022-04-17 22:52:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 3, 'elhadi', 'elhadirefki@gmail.com', 'users/default.png', NULL, '$2y$10$5lfgfR/QAzfEEl2GsGuwSOslPrh8RFsq0226Ww530OsWSAcuNmWeK', NULL, NULL, '2022-04-17 22:54:23', '2022-04-17 22:54:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 3, 'elhadi', 'elhadirefki1@gmail.com', 'users/default.png', NULL, '$2y$10$tLM5BkL5GAru05xPalPFFu8kJKmG8aaTVNdEpWGbSfDtIsLsjT09u', NULL, '{\"locale\":\"fr\"}', '2022-04-17 22:57:16', '2022-04-17 22:59:28', NULL, NULL, '8575', '8588', '2020-12-12', 563145697, '2001-02-12', '0', 'DevW', 'NET', 'NET', '[{\"download_link\":\"users\\\\April2022\\\\VoxEvX0roj37JphK7IYg.pdf\",\"original_name\":\"TP1.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\eMUp3OIRR1LNBr8GyDIg.pdf\",\"original_name\":\"TP2.pdf\"}]', '[{\"download_link\":\"users\\\\April2022\\\\HbPhDGORGunuII1wNxfa.pdf\",\"original_name\":\"TP3.pdf\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `specialites`
--
ALTER TABLE `specialites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `etat`
--
ALTER TABLE `etat`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `specialites`
--
ALTER TABLE `specialites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
