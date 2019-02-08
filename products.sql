-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 08 Lut 2019, 22:28
-- Wersja serwera: 5.7.21
-- Wersja PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `products`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_02_08_192357_products', 1),
(2, '2019_02_08_204450_prices', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prices`
--

DROP TABLE IF EXISTS `prices`;
CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prices_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `prices`
--

INSERT INTO `prices` (`id`, `product_id`, `price`) VALUES
(1, 1, 7.79),
(2, 1, 23.13),
(3, 1, 73.26),
(4, 2, 63.90),
(5, 2, 94.33),
(6, 3, 87.16),
(7, 3, 0.55),
(8, 4, 98.31),
(9, 5, 97.45),
(10, 5, 73.77),
(11, 6, 86.17),
(12, 6, 57.96),
(13, 7, 45.16),
(14, 7, 44.35),
(15, 8, 85.43),
(16, 9, 33.58),
(17, 9, 96.26),
(18, 9, 82.43),
(19, 10, 82.25),
(20, 11, 26.42),
(21, 11, 75.44),
(22, 12, 11.10),
(23, 12, 23.08),
(24, 12, 22.72),
(25, 13, 5.17),
(26, 13, 19.08),
(27, 14, 45.21),
(28, 14, 74.39),
(29, 15, 43.02),
(30, 15, 96.51),
(31, 16, 17.90),
(32, 16, 50.64),
(33, 17, 1.31),
(34, 17, 33.66),
(35, 18, 61.46),
(36, 19, 68.64),
(37, 19, 95.79),
(38, 19, 21.26),
(39, 20, 73.61),
(40, 20, 76.20),
(41, 21, 68.37),
(42, 21, 67.13),
(43, 21, 69.12),
(44, 22, 55.93),
(45, 23, 15.44),
(46, 24, 68.98),
(47, 24, 37.99),
(48, 24, 22.33),
(49, 25, 36.72),
(50, 25, 67.34),
(51, 26, 55.80),
(52, 26, 11.05),
(53, 27, 31.91),
(54, 27, 72.96),
(55, 28, 96.88),
(56, 28, 21.25),
(57, 29, 98.83),
(58, 30, 34.03),
(59, 31, 73.81),
(60, 32, 97.17),
(61, 32, 66.23),
(62, 33, 27.92),
(63, 34, 84.55),
(64, 34, 31.64),
(65, 35, 4.52),
(66, 35, 9.95),
(67, 35, 14.55),
(68, 36, 26.25),
(69, 37, 52.03),
(70, 37, 8.66),
(71, 38, 29.99),
(72, 39, 91.44),
(73, 39, 2.73),
(74, 39, 9.38),
(75, 40, 28.64),
(76, 40, 6.87),
(77, 41, 7.68),
(78, 41, 26.81),
(79, 42, 50.87),
(80, 43, 27.04),
(81, 44, 88.15),
(82, 44, 33.51),
(83, 45, 38.86),
(84, 45, 20.81),
(85, 46, 77.18),
(86, 46, 78.68),
(87, 46, 90.08),
(88, 47, 78.24),
(89, 48, 79.93),
(90, 48, 87.95),
(91, 48, 82.74),
(92, 49, 38.94),
(93, 49, 75.33),
(94, 49, 2.61),
(95, 50, 75.23),
(96, 50, 2.08),
(97, 50, 31.72),
(98, 51, 26.72),
(99, 52, 65.36),
(100, 53, 44.73),
(101, 54, 35.19),
(102, 54, 36.79),
(103, 54, 83.52),
(104, 55, 91.02),
(105, 55, 63.88),
(106, 56, 74.83),
(107, 56, 92.63),
(108, 57, 50.97),
(109, 57, 91.31),
(110, 58, 1.71),
(111, 59, 59.01),
(112, 60, 11.36),
(113, 60, 43.28),
(114, 61, 73.73),
(115, 61, 33.76),
(116, 61, 15.35),
(117, 62, 15.66),
(118, 63, 9.05),
(119, 64, 35.88),
(120, 64, 59.16),
(121, 64, 32.34),
(122, 65, 69.89),
(123, 66, 55.58),
(124, 67, 62.07),
(125, 67, 41.93),
(126, 68, 85.04),
(127, 68, 86.45),
(128, 68, 86.04),
(129, 69, 47.02),
(130, 69, 7.95),
(131, 70, 16.24),
(132, 70, 68.73),
(133, 70, 93.16),
(134, 71, 32.18),
(135, 71, 87.69),
(136, 72, 62.59),
(137, 73, 99.89),
(138, 74, 57.37),
(139, 74, 77.49),
(140, 75, 44.62),
(141, 75, 11.78),
(142, 76, 43.06),
(143, 76, 66.54),
(144, 77, 27.52),
(145, 77, 59.05),
(146, 78, 41.06),
(147, 79, 30.71),
(148, 79, 35.57),
(149, 80, 37.67),
(150, 80, 38.45),
(151, 81, 60.93),
(152, 81, 78.31),
(153, 82, 95.20),
(154, 82, 30.78),
(155, 83, 16.43),
(156, 83, 1.67),
(157, 84, 16.22),
(158, 84, 91.57),
(159, 84, 86.98),
(160, 85, 52.70),
(161, 86, 79.04),
(162, 86, 40.47),
(163, 86, 39.44),
(164, 87, 63.34),
(165, 87, 82.33),
(166, 88, 57.56),
(167, 88, 7.43),
(168, 89, 36.22),
(169, 90, 74.29),
(170, 91, 13.40),
(171, 91, 68.89),
(172, 92, 65.81),
(173, 92, 55.46),
(174, 93, 7.22),
(175, 93, 56.54),
(176, 94, 98.54),
(177, 95, 32.04),
(178, 96, 32.58),
(179, 97, 41.54),
(180, 97, 95.63),
(181, 98, 34.68),
(182, 98, 16.07),
(183, 99, 15.57),
(184, 100, 47.44);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sint sapiente et enim.', 'Optio vel quod et magnam tempora quidem. Quo dicta autem perferendis illum voluptatem. Consequatur temporibus ipsum vel et quia in molestiae mollitia. Rerum necessitatibus consequatur neque temporibus facilis qui facilis.\n\nPerferendis adipisci necessitatibus quis hic. Quia nam ut veniam eaque molestiae. Eos ipsa excepturi nulla et autem.\n\nUllam est assumenda reiciendis sit autem quae assumenda. Accusantium qui ea et perferendis excepturi. Voluptatem consequatur recusandae eos placeat omnis voluptatem nesciunt. Iure aut rerum veritatis maiores nemo ut laboriosam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(2, 'Porro ut est earum quaerat consequatur.', 'Velit nisi omnis voluptas aut. Non laborum nostrum doloremque inventore eveniet earum adipisci. Illo repudiandae ipsa numquam corporis assumenda amet.\n\nError dignissimos consequatur rerum nulla. Non nihil inventore dicta necessitatibus. Veritatis eum dolor et ratione omnis minima.\n\nEnim qui autem cupiditate dicta. Qui illo molestiae ut earum. Reiciendis ut deserunt et iure tempore.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(3, 'Iusto harum voluptatem iure beatae tempora.', 'Qui dignissimos voluptatem possimus perspiciatis ea corrupti. Non qui consequuntur dignissimos culpa dolorum veritatis debitis. Dolor quia ea ipsum molestias sed itaque. Ut sint esse et iste.\n\nRecusandae dolorem est alias adipisci cum. Perspiciatis natus quae esse aspernatur minima et. Ea dolor ab repellat facere aspernatur.\n\nAt quidem facilis eligendi sequi ipsa eveniet veritatis quaerat. Quam ut quasi sit itaque accusantium est enim repellat. Dolorem voluptates sunt unde aut ullam odio ratione.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(4, 'Quos velit enim.', 'Minima pariatur eos sapiente consequuntur veniam. Culpa ut quis consequatur repudiandae exercitationem suscipit molestiae provident. Accusamus vitae dolor laborum deserunt expedita et qui. Ut qui ipsam consequatur esse facilis quia.\n\nSint pariatur quo in qui doloremque. Sit explicabo est eligendi et repellat dolor. Autem voluptate praesentium et recusandae.\n\nVoluptates vel sapiente ducimus omnis. Voluptas occaecati occaecati eum atque voluptas. Eveniet qui soluta nemo occaecati a ea at.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(5, 'Enim eos rem.', 'Delectus deserunt sint laudantium non odit non. Eaque qui et quia ipsum. Sint fugit sequi dignissimos quos ab numquam. Quia dolores praesentium enim consequuntur voluptatem aut accusantium qui.\n\nSed beatae totam pariatur. Tempora consequatur ducimus itaque nobis similique rerum ut. Facilis pariatur optio ex excepturi ad. Consequatur et amet et non error. Quidem quasi ut iusto facere est dicta autem.\n\nDucimus velit atque vitae corrupti qui officiis. Et occaecati quia minima eligendi vel. Blanditiis ipsa fugit labore placeat amet quia. Sint eius placeat modi impedit. Consequatur doloribus totam error nesciunt quibusdam voluptatibus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(6, 'Voluptatum quis sapiente ea.', 'Repellat dignissimos et fugiat quod est omnis voluptatem. Accusamus itaque ab rem ipsa repellat qui. Voluptates sit enim laborum impedit corporis aut officiis.\n\nAut sit rem qui voluptate laudantium ut sit. Reprehenderit quisquam est itaque unde earum. Rerum laborum error voluptates natus.\n\nAutem aliquam pariatur deleniti quibusdam. Et illo autem vero error. Tempora numquam provident et dolore omnis. Voluptatibus omnis nisi porro natus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(7, 'Omnis amet adipisci delectus.', 'Accusantium modi esse qui error. Ab voluptatem aliquam expedita reprehenderit. Odio est nobis minus rerum aut quos. Molestiae facilis nulla et.\n\nEt et autem velit impedit. A eveniet autem deserunt suscipit dicta. Et non debitis ut repudiandae aliquid reiciendis. Neque occaecati assumenda quia error.\n\nRepudiandae voluptatibus consequatur velit sint quis iste sit. Dolore dolorum blanditiis error perferendis sint consectetur cum et. Quia amet aut autem corporis voluptas. Voluptatem molestiae eum magnam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(8, 'Rerum eius omnis minus harum.', 'Cumque eaque sequi molestiae. In reprehenderit illum est at aut. Quaerat rem quaerat debitis dolor praesentium eveniet molestiae.\n\nImpedit perferendis ab deleniti. Dolorum et doloremque aperiam. Itaque mollitia deserunt qui. Autem voluptas non eum ab libero cum quis.\n\nQuia accusantium nobis eligendi est blanditiis ratione. Est similique consectetur recusandae sit autem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(9, 'Et consequatur voluptas ut sed iste.', 'Laborum consequatur esse ad inventore. Aliquid ad dicta est id id. Quidem enim voluptatem similique ducimus.\n\nReprehenderit ab sunt temporibus aut qui cumque voluptas quo. Repellendus harum voluptatibus pariatur alias repellat exercitationem quod dolorem. Sit beatae recusandae non.\n\nEaque suscipit aliquam et aperiam. Et et excepturi aliquid labore ratione et qui. Aliquid ut aliquid quod fuga ullam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(10, 'Recusandae porro nemo consequatur.', 'Cupiditate illo labore aperiam ex porro aspernatur autem reiciendis. Iusto odit eum molestiae. Iure odit aliquid incidunt autem.\n\nRepellendus ut qui et nisi architecto et deleniti. Rerum a a illum ratione optio. Totam mollitia officiis illo dolorem nihil. Eligendi blanditiis impedit sequi corrupti eaque quisquam sunt.\n\nQuidem officiis repellendus rerum voluptatum est aperiam sint quod. Placeat maiores aut voluptas reiciendis eos placeat. Autem molestiae provident odio temporibus qui ipsum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(11, 'Qui quia repellendus dolorem fugit.', 'Rerum tempore dolores repudiandae dignissimos aut. Qui tempore quis hic quam. Aperiam velit et ea numquam enim voluptatem rerum.\n\nUt enim eaque accusamus vel tenetur dolorem. Qui dolore nesciunt quas veritatis voluptas id necessitatibus. Consequuntur qui architecto eveniet quo ducimus consequatur. Occaecati iure praesentium vitae quidem sit quia.\n\nEst amet et eum quia ea similique officia. Nihil veritatis harum ea soluta voluptatum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(12, 'Facere voluptatem fugiat nesciunt.', 'Sunt voluptate quis enim facilis nemo ut. Aut voluptatem aut voluptate qui. Doloremque distinctio sit nostrum quis ut quia.\n\nIncidunt qui voluptatem culpa consectetur qui incidunt. Laborum nemo doloremque nihil aperiam aut exercitationem. Sint vel fugiat hic fugit voluptatem sed.\n\nQuia maxime pariatur aliquam officiis corporis a. Blanditiis nemo aspernatur omnis nam. Minima dolores voluptate nemo. Itaque unde voluptatum quibusdam eos ut. Quia laudantium voluptates autem cumque.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(13, 'Omnis doloribus officia atque.', 'Qui enim quasi explicabo nobis eligendi minima. Sed omnis veniam occaecati. Enim nam nihil molestias repudiandae sit eveniet veniam.\n\nAliquam id nesciunt possimus in dolore. Rerum possimus aliquam quasi eum autem accusantium.\n\nEnim iste quibusdam ut dicta culpa aut. Consequatur ut quibusdam aliquam molestiae dolorem et. Delectus voluptatem quia ipsa quis laudantium.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(14, 'Error tempore ut animi nobis explicabo.', 'Tempora aliquid similique illo distinctio ab placeat enim exercitationem. Facilis soluta voluptatem accusantium non laudantium. Magni sed in possimus reiciendis et temporibus.\n\nCorrupti aliquam et rem molestiae amet perferendis. Autem occaecati tenetur ea repellendus dolorem et. Nulla inventore eaque doloribus iste asperiores.\n\nSequi et fugiat magni temporibus. Vero fuga quia rerum excepturi sequi beatae enim. Eaque odio omnis non. Nulla alias quae ut delectus aliquid laborum expedita nulla. Iure illo possimus sint suscipit illo fuga et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(15, 'Perspiciatis laborum ab incidunt.', 'Et minima veritatis perferendis qui incidunt et tempora. Ut nisi quidem atque. Molestias harum quis ipsa consequatur eius alias praesentium. Et nihil nihil est autem odit.\n\nSed libero porro ut ex dignissimos. Est fugiat aliquid rerum iste porro deleniti eius. Consequuntur doloremque eos vero atque. Quae dolorem et sit vero qui quidem.\n\nNihil et maxime qui soluta cum. Dicta sint et consequatur dicta sed exercitationem est. Ut id et molestiae tempore qui corrupti minima ad.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(16, 'Qui aliquam necessitatibus voluptas est iure.', 'Adipisci consectetur facere inventore in aperiam. Tempore id voluptatem officiis omnis ratione aperiam. Et dolor occaecati sunt quasi quia qui. Aut provident at adipisci nemo et.\n\nMolestiae molestiae nemo non nihil praesentium omnis. Aspernatur voluptas inventore aut corporis et. Autem facilis quod incidunt dolores.\n\nAb ut voluptatibus illum aperiam laudantium facilis qui. Rerum cupiditate ea est nemo. Vel harum et deserunt reprehenderit reiciendis quis ex quis. Est tempora iste quas voluptatem expedita ipsa at tempora. Necessitatibus fugit earum est nam et est.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(17, 'Inventore dolores minus dolorem consequatur.', 'Enim delectus cum voluptas sed nihil quas laboriosam. Commodi aut ipsam eligendi sed.\n\nEt error est voluptatem qui fugiat provident recusandae sit. Ab expedita possimus ut.\n\nEarum dolore in iste sit quo. Est accusantium autem corrupti ex. Rerum voluptas earum suscipit laudantium quaerat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(18, 'Sequi laboriosam optio alias voluptates.', 'Modi ipsa recusandae odit sit iure qui harum. Consequatur explicabo officiis ut non accusamus sed. Veritatis cum atque quasi ad aut ea ut architecto.\n\nEst eius repellat praesentium et fugiat cum. Eum blanditiis est tempora sit dicta error. Explicabo voluptatem nulla ea nemo. Et et ut eligendi et enim voluptatem reiciendis.\n\nSoluta officiis qui quas. Doloremque laborum rerum dolores quis. Nemo harum natus in incidunt aut aperiam. Nesciunt quam occaecati id culpa harum dolore provident. Est nostrum veritatis quos est quia atque.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(19, 'Aliquam sed et omnis ratione.', 'Cupiditate beatae debitis totam rerum deserunt quod ad. Nobis totam minus mollitia veniam et natus fuga. Eius et in sunt.\n\nRerum vel saepe cumque aspernatur aut. Error qui id beatae doloribus veniam similique. Beatae laudantium architecto fugiat temporibus sit aperiam omnis.\n\nConsectetur qui officiis ipsam voluptatibus ut accusantium. Inventore soluta adipisci odio aperiam. Accusamus at sit quos quo est aut iste ex.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(20, 'Eaque tempore enim voluptas non.', 'Repudiandae quia et voluptatem similique. In voluptatem ipsa dolor quis. Maiores asperiores similique qui sed et sit ducimus.\n\nCommodi et dolor dolor. Dolor magnam repudiandae et sit.\n\nEveniet minima reprehenderit adipisci molestias rerum quos est. Laudantium perferendis commodi aliquam totam voluptatibus aut. Quisquam beatae rem temporibus sed neque ut ea. Saepe sit sit temporibus fugiat placeat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(21, 'Voluptas tenetur rerum incidunt commodi.', 'Molestiae consequuntur laboriosam quidem dolorum sint quidem. Alias eveniet sunt vel. Id praesentium maiores fuga sequi enim.\n\nReprehenderit laboriosam repudiandae et aut eligendi repudiandae. Quis dolores laudantium ut molestiae sunt eos dolorem. Velit quis libero quis eum porro laudantium voluptate. Sunt vel alias voluptatum nihil rem dignissimos.\n\nSaepe voluptates error voluptatum incidunt alias enim voluptate. Minima doloremque adipisci dolorum tempora et. Possimus id facere itaque doloribus voluptatem et et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(22, 'Quisquam aspernatur ipsa pariatur qui.', 'Fugit inventore aliquid ut quas quia. Quam dolores est harum laborum. Fugit dolores nostrum sed rerum aliquam.\n\nQuos error ut adipisci accusantium. Voluptas perspiciatis perspiciatis illum qui tempora. Repellat deleniti aut minus earum veritatis.\n\nSoluta ea omnis laboriosam qui. Tempore ad aut officiis. Maiores debitis odit molestiae. Architecto accusamus sed fuga. Itaque cum quisquam cupiditate sed quia odit et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(23, 'Sit blanditiis voluptates natus.', 'Deserunt ut modi distinctio minima unde. Saepe distinctio quis quaerat dolor perferendis aut doloremque. Fuga delectus saepe excepturi vel est placeat. Libero eos consequatur et ut.\n\nFacere dolores et iste laborum. Id et modi ratione numquam occaecati. Necessitatibus inventore ipsum excepturi velit. Iusto deleniti distinctio eos impedit odit id aut.\n\nQui ipsam illum dolor aut qui laborum quae. Quae labore soluta sunt officia. Dolorem numquam illum saepe dolor eaque consequatur deserunt.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(24, 'Ut et ad magnam beatae et.', 'Accusantium tenetur minima quam error maiores quasi. Odio quae quas iure debitis tempora excepturi quaerat quia. Quo nisi voluptatum ut autem et. Nihil voluptatibus consequatur odit.\n\nMaxime incidunt natus consequatur nesciunt nihil et. Et enim voluptates repellendus autem fuga. Sit facere autem repellendus maxime eos laudantium.\n\nQui magni doloribus blanditiis officiis occaecati libero. Magnam omnis mollitia sint eum laborum. Sunt maxime et sunt numquam quia molestiae. Asperiores quod enim repudiandae assumenda qui id veritatis autem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(25, 'Totam veniam nostrum nobis explicabo.', 'Corrupti eos veniam rerum occaecati modi doloribus sit. Ea architecto non officiis quia nulla repellendus corporis.\n\nFacilis culpa quae alias nam eveniet natus sit. Culpa hic veniam autem nam et ut natus. Recusandae laborum consequatur quisquam commodi doloremque consectetur.\n\nExercitationem ratione consequatur delectus eaque cupiditate. Dolore quia rerum aut quos numquam. Reiciendis qui a molestiae. Voluptas ducimus voluptatem eligendi atque.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(26, 'Aut reiciendis quis asperiores.', 'Asperiores enim in ea aperiam animi. Perferendis sapiente non aspernatur unde quo asperiores. Quod qui inventore sapiente voluptate earum aspernatur dignissimos.\n\nOptio mollitia enim quo et atque. Non voluptate dolore fugiat accusantium dolores non officia. Saepe quo porro reiciendis nobis consequatur eveniet nihil eaque. Blanditiis quod asperiores rerum sit facere tenetur neque.\n\nAd sapiente quo et porro. Consequatur asperiores est quasi voluptatibus dolores. Et sint nam dolor in eligendi impedit necessitatibus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(27, 'Delectus cum beatae vel.', 'Corrupti earum est dolor. Ducimus vel et voluptatum amet suscipit quia sit. Est odit at nihil quaerat molestias ut velit. Ut ut quis sit et accusamus.\n\nIusto quisquam ratione placeat rerum accusantium qui. Perferendis in aliquid earum.\n\nQuis nisi consequatur quaerat. Ullam qui impedit tenetur sit quo beatae maiores in. Voluptas ipsum quia laudantium quam enim.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(28, 'Inventore quia numquam.', 'Atque labore dolorum eveniet ullam. Dolor et consequatur debitis ut cum similique animi. Ea atque maxime nostrum ipsa est.\n\nEt eos aut laborum molestiae sint fugit. Aliquid dolor quam vel et.\n\nQuis dolore vero voluptas sit adipisci praesentium quos. Accusantium quaerat est ex incidunt ratione officia. Ratione minus error et excepturi.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(29, 'Officia rerum accusantium omnis et.', 'Quasi totam aut quia aut libero. Omnis deserunt eos alias nulla iure recusandae. Harum doloribus maiores sunt quis omnis sequi velit.\n\nA animi iste qui. Hic est voluptatibus quibusdam voluptates. Voluptatibus delectus voluptas libero iusto et maxime. Voluptates totam sit rem aliquam aperiam ratione.\n\nRerum architecto aut eum reiciendis quae velit a. Et eum enim et aut suscipit at. Unde dolorem natus illo laborum. Ut suscipit suscipit possimus asperiores.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(30, 'Necessitatibus est quibusdam libero.', 'Sed quae sapiente ut amet pariatur rerum alias. Ratione rerum dolorum aliquid veniam.\n\nVoluptas quis id aspernatur. Eos enim deleniti earum exercitationem ratione. Voluptatum et eos similique provident.\n\nVel voluptas aut eius. Voluptatem quidem nobis facere aliquam voluptas sit dolores. Dolor magnam odio praesentium.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(31, 'Dolorum quam ut ab.', 'Occaecati maxime vero odit perferendis. Quod quasi beatae animi inventore aut quidem. Dolore ea in minima rem quidem et eaque.\n\nEt laboriosam reprehenderit nam laboriosam molestias. Et distinctio omnis dolores recusandae. Corporis fugiat voluptatum cupiditate deleniti et vel sunt sed. Dicta neque iusto ea qui quo.\n\nRepellendus accusantium doloremque placeat amet dolores qui dignissimos. Ut sit molestiae doloribus voluptate impedit labore dolores id. Illum provident dicta beatae dolor assumenda. Qui ex itaque ex natus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(32, 'Ab ut quod enim.', 'Consectetur perspiciatis asperiores ducimus et optio omnis. Voluptatem qui ratione dolores animi dicta error ratione ab. Magni aut est rerum. Nulla voluptas enim et vitae maxime eos dolorem. Et et molestiae omnis.\n\nAutem quo incidunt ut vel dolorem magni. Cumque tempora vel delectus numquam assumenda nihil ratione in. Consequatur facilis est dolores illum rem eius non.\n\nVoluptatum ab non incidunt cupiditate dolore velit in accusantium. Hic fugiat voluptatem voluptatem quia voluptatem non iste.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(33, 'Aut dolorem necessitatibus minus odit.', 'Voluptas consectetur molestias voluptas quae ipsa repellat est reprehenderit. Enim autem consectetur aut tempore aut culpa. Eius voluptatem assumenda possimus eveniet omnis. Sunt sed qui error sed animi eum.\n\nAut magni vero sit sapiente enim ut. Enim nemo sapiente aut optio possimus earum voluptate beatae. Aperiam consequatur dolores laboriosam sapiente consequatur quo.\n\nAb et sed et architecto qui. Inventore nemo consequuntur porro ipsa.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(34, 'Nemo architecto voluptatem assumenda molestiae.', 'Assumenda modi rem dolores quo nemo dolorum eaque. Sapiente assumenda ut accusantium tenetur eum ipsum quo. Sunt provident tempore vel necessitatibus tempora.\n\nAut quo non beatae sed eos ut. Aut omnis consequuntur eum laudantium laudantium. Molestias eligendi id rerum aut aut eaque molestias corrupti. Porro laudantium reiciendis repellendus autem eius nam. Dicta eius recusandae modi distinctio aut fuga expedita et.\n\nMinima voluptatem numquam ut ad. Quo nemo nisi qui. Autem iste ratione ut sint.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(35, 'Aut voluptates nihil nihil et.', 'Dolore recusandae voluptates aut id et omnis quam. Iste rerum velit ea culpa porro ullam. Et magnam rem quo cumque.\n\nCorrupti laboriosam laborum nostrum praesentium illum et. Assumenda alias sint iusto quaerat ipsam deleniti aut sapiente. Ipsum ipsam autem minima quidem et sit.\n\nQuos repellat cupiditate illum. Non aspernatur deleniti voluptatem dolorem quos cum ducimus sit. Sit et illo in tempore.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(36, 'Eos id velit consequatur aperiam.', 'Tempore veritatis dolor rerum excepturi deleniti aperiam. Aut et voluptas nihil ut fugit. Autem quia et mollitia aliquid. Eaque nisi labore ab earum magni et.\n\nQuasi rerum nihil labore ipsa maxime voluptatem sit. Sapiente provident dolor qui. Vel explicabo ut et numquam hic qui soluta non. Autem dolorum odit dolores illo repellendus harum.\n\nInventore rem necessitatibus aut molestiae natus eveniet. Consequatur dolores ratione magni sit qui. Cumque dolor labore autem veritatis soluta est voluptatem. Expedita est quia voluptatem repellendus enim corrupti ipsa.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(37, 'Accusamus deleniti sapiente similique dignissimos.', 'Voluptas odit soluta corporis. Placeat quod fugiat autem totam sed molestiae voluptatem. Aut et quo officia est pariatur.\n\nUt ipsam quasi ullam aliquam autem fugit. Atque maxime voluptatum sit aut unde. Non omnis temporibus minus asperiores facere aut rerum. Consectetur ut dolorem recusandae voluptas dolor error et.\n\nSed cupiditate doloremque nostrum voluptatem non cupiditate. Nostrum rerum perspiciatis eaque totam. Ut aut voluptates aperiam et illum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(38, 'Expedita incidunt tempore ratione eum.', 'Ut quis autem ut deleniti quia sunt. Quas tempore quam dolore error. Voluptas porro dolore in tempore mollitia distinctio.\n\nEt aut quis qui reprehenderit quia iste atque. Aliquid rem omnis quo sed. Ea dicta vero reiciendis fugit provident aut a rerum. Et aperiam soluta sit aut. Ut eius possimus hic est.\n\nMaxime non corporis non consequatur at vel possimus. Error soluta quos a quisquam quos ratione. Maiores est saepe quisquam quo itaque dolore. Aliquid omnis possimus mollitia quae exercitationem in fugiat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(39, 'Numquam et expedita corporis.', 'Placeat provident deserunt et error soluta. Adipisci molestiae quo cumque facere molestiae rerum. Sunt unde laboriosam dolorem debitis sed.\n\nEx ullam quas ut ducimus ullam eaque vel. Explicabo eum rem sit quis soluta quas consequatur. Quae velit incidunt quisquam eos ut facilis occaecati ut. Quam nihil a labore libero explicabo.\n\nRepellendus quasi eum totam temporibus. Qui quasi error nobis. Officiis minima magnam qui quibusdam eum modi dolores. Ducimus harum sed reiciendis tenetur quia doloribus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(40, 'Laboriosam ratione quod id ullam deserunt.', 'Minima eos et id dolores. Id assumenda necessitatibus quasi temporibus impedit aut quo. Facere ut ipsa quia cum voluptas non sequi. Sit repudiandae dolor debitis nobis sit tenetur.\n\nNon eum fugiat sit enim quas et. Quia molestias repudiandae dolores eius sed ipsam.\n\nDoloremque totam et necessitatibus qui rem in. Culpa laborum minima voluptatem est et molestiae aut. Sed aperiam minus tempora quasi.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(41, 'Autem nobis accusamus et et.', 'Rerum ut excepturi iste accusantium et quos aliquam. Architecto consequuntur nemo deleniti pariatur recusandae nobis soluta cupiditate. Eius aut eum accusantium quia non adipisci fuga unde.\n\nRem amet omnis aliquid et. Consequatur odio nobis sapiente blanditiis ut nesciunt ut quis. Sit et nostrum et veritatis et. Corporis libero quia omnis iure voluptas placeat at.\n\nQuo dolorum ea culpa incidunt quo velit veniam ea. Minima rerum et tenetur velit. Reprehenderit atque voluptatum aut reiciendis. Vel dolorum aspernatur quis id officiis dolorum voluptas.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(42, 'Natus dolores nobis consequatur.', 'Architecto saepe occaecati dolores itaque. Sit exercitationem corrupti sed voluptas. Aut vel qui autem animi sequi officia impedit. Laborum velit quo itaque veritatis hic.\n\nExcepturi illo rem est enim. Praesentium ipsa ipsa quis nihil in aliquam commodi. Et aperiam autem rem voluptates. Dolore tenetur vel cum dolorem quidem. Dolores aut mollitia facere quo est vitae.\n\nVoluptas ut iure et atque voluptatum ex. Qui delectus laborum ducimus enim voluptas velit et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(43, 'Eos quas aut perspiciatis minima reiciendis.', 'Magni saepe vel ut nostrum. Voluptatem quos amet doloremque beatae vero modi. Laboriosam nam ut magni.\n\nOmnis velit distinctio iure vel. Voluptatem corporis eos qui temporibus cupiditate laborum. Sunt natus id ut et libero sit.\n\nAccusamus minus sapiente sunt modi omnis placeat. Nihil reiciendis nostrum quae sit sed incidunt. Illum atque vitae molestias dolores. Beatae aliquid repudiandae labore totam quaerat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(44, 'Nesciunt aperiam impedit.', 'Velit iste quis autem expedita delectus nobis est. Molestiae et provident veniam voluptas. Aliquid reiciendis temporibus rerum fugiat ut assumenda aut. Quia sint non a illum eos quia vel quibusdam. Minima quia dolores qui nulla perferendis dolores mollitia.\n\nAssumenda et vitae officia. Aut sunt qui nostrum dolorum deserunt quos eligendi. Corporis quibusdam vero excepturi labore totam non.\n\nSed laudantium perspiciatis animi placeat sed sunt voluptatem. Voluptatibus soluta architecto nam commodi et dolore aut. Vero ab voluptatem totam expedita non rerum nam. Repellendus repudiandae minima modi qui magni voluptatem rerum sit.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(45, 'Qui eligendi eos consequatur.', 'Delectus quasi placeat soluta beatae. Sit aut placeat amet a aliquid cumque libero. Ab non totam quisquam veniam.\n\nMagni et ut hic qui iste. Optio aut qui aut doloremque et eum qui. Magni quia et voluptatem ipsam asperiores aut dolorem. Ut incidunt aut iste porro dolorem veniam ad animi.\n\nExercitationem reiciendis aspernatur iusto aut. Veniam dolore repellendus distinctio aut. Numquam voluptatem quod corrupti est laboriosam est. Fugiat consequatur assumenda est cum sed perferendis nobis.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(46, 'Autem enim ullam vel voluptates sit.', 'Aliquid dolores doloremque velit voluptas possimus fugit. Accusantium tempora soluta aut eos dolore suscipit quod. In pariatur autem exercitationem non a tempora non.\n\nQuos modi et repellat et omnis ut. Est porro libero nesciunt eum. Et doloremque hic temporibus qui. Quidem nulla ut molestias dolores dolor nostrum.\n\nTotam velit enim assumenda non dolor totam. Ipsam qui quas recusandae consequatur illum blanditiis. Similique laboriosam expedita quis nam voluptate. Fugiat quo consequuntur est omnis. Repudiandae velit fugiat at qui.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(47, 'Aut est a temporibus aut.', 'Necessitatibus sunt consequatur consequatur velit repellendus occaecati aut. Sit sunt ad et. Adipisci sunt quasi et.\n\nEst vitae architecto eligendi vel officia aut incidunt. Incidunt dolor praesentium corrupti ut. Distinctio odio explicabo unde qui est ad. Soluta optio quia blanditiis consequatur repellat.\n\nConsequatur quam voluptas sed nemo autem. Dignissimos occaecati dolores dolorum minus odio. Ut quo sint ut illum enim. Magni temporibus deleniti eius iste.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(48, 'Modi culpa quis.', 'Doloremque nobis eius debitis maxime eligendi. Asperiores unde accusamus rerum et et earum. Voluptas nam necessitatibus velit nisi eum cumque expedita. Et ad et et nihil quasi.\n\nConsectetur quis et odio quis autem placeat. Dolorum id velit magnam dolorum illo ab iusto. Exercitationem officiis aliquid facilis rerum culpa nobis. Ut cupiditate necessitatibus aut tempore.\n\nEa ipsum quisquam ducimus aut et quas recusandae. Quos consequatur et voluptas esse. Aut laborum dignissimos dicta nihil. Dicta voluptas illum et asperiores rerum magnam aliquam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(49, 'Repellendus magni quis animi.', 'Voluptatibus et commodi laudantium iure atque saepe corporis dolorem. Unde veritatis nemo eaque facere qui pariatur. Est voluptates culpa quia et doloremque voluptatem porro commodi. Laudantium quisquam fugit esse quod.\n\nDoloribus delectus amet culpa velit tenetur ipsum. Dicta placeat praesentium iusto sed facilis. Facilis reiciendis et minima consequuntur nesciunt similique aliquam perspiciatis.\n\nRatione tenetur harum iure ab hic tenetur. Voluptate quia eaque quas rerum voluptatum sunt omnis. Nemo optio repellendus et cumque officia ut omnis.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(50, 'Autem omnis sunt voluptates commodi aliquam.', 'Quo optio explicabo omnis voluptatem ipsam ut illo. Rem sunt illo doloribus minus deserunt dignissimos nesciunt. Dolorem perspiciatis omnis nostrum ut.\n\nRepudiandae dolor eaque corporis animi odit beatae qui. Ea voluptate fugiat vel possimus ut voluptatem. Non quo fugiat suscipit autem.\n\nAtque ex cupiditate eum. Ut quia qui error dolore dolor. Sit qui est occaecati id soluta eum ratione. Fugiat numquam velit necessitatibus repellat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(51, 'Sit sed est unde.', 'Dolores quibusdam nihil quae quia cupiditate ipsa ducimus et. Quia ut nisi nihil quod cupiditate voluptatibus quia rerum. Quo sed autem inventore voluptatibus molestiae eum ullam.\n\nConsequuntur aspernatur expedita autem aut. Et occaecati ex ducimus et. Et cumque et mollitia perspiciatis doloremque nisi nihil.\n\nNemo mollitia ipsum blanditiis esse eum ea. Ipsam mollitia excepturi sit. Ullam est autem mollitia. Sint dolor eum quisquam blanditiis facere.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(52, 'Maiores quo accusamus consequatur.', 'Molestiae possimus nobis vel. Vel omnis eos mollitia ut. Quia reiciendis sint quia cupiditate qui et.\n\nMagni reiciendis veritatis temporibus. Sit natus culpa inventore molestiae ut. Cum asperiores assumenda assumenda rerum doloremque at quae.\n\nVoluptate vel enim molestias inventore. Officiis dolores facere est id. Aut magnam commodi minima. Impedit quod vel in. Ut eos asperiores eos et molestias aut.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(53, 'Aperiam reiciendis deserunt deserunt commodi.', 'Atque animi cum non omnis commodi ab. In dicta nihil aut omnis illum qui. Ut repellendus quisquam ipsum aliquam.\n\nAccusantium at voluptatem non quia maxime consequatur. Officia omnis provident tenetur autem. Sint excepturi ad quae aperiam eum est non perferendis. Repudiandae veritatis alias expedita quis.\n\nReiciendis et molestias doloremque est. Quae eligendi quidem facilis illum qui similique. Fuga suscipit sed eos eius cum eos. Sit dolorem qui ea omnis.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(54, 'Non placeat ad.', 'Corrupti aspernatur eum quam est magnam ut. Natus assumenda nihil est libero est praesentium itaque. Voluptatem minus et accusamus laborum eum veritatis.\n\nQui deserunt expedita exercitationem velit autem tempore tenetur. Laborum eius ut perferendis eveniet. Consequatur numquam sapiente natus consequatur tempore nemo laudantium.\n\nDistinctio repellat cum expedita. Eaque debitis voluptas voluptatem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(55, 'Fuga dolorem accusamus voluptatem.', 'Veritatis odio sed natus voluptas incidunt nemo. Mollitia ea accusamus illum enim reprehenderit odit repellendus. Vel laudantium ut cupiditate dignissimos est beatae saepe. Ad molestiae quis eos ipsum dolorem dolor.\n\nRerum est cum explicabo laborum aliquid omnis consequatur. Dolore aliquam repellendus quasi facilis. Nobis ad molestiae dolore voluptatibus. Amet impedit alias earum dolorem architecto quis.\n\nExpedita suscipit accusamus reiciendis modi aut distinctio aut et. Repudiandae dolores nihil est minima autem ut ut. Nihil temporibus non aspernatur soluta expedita.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(56, 'Asperiores dolor facilis voluptate magnam.', 'Dicta labore vitae impedit. Nesciunt qui animi deserunt dolore. Et commodi praesentium aspernatur non maxime nostrum sint.\n\nAut et ex placeat laborum dolor earum. Est qui rerum rem dolor. Magni ipsa deserunt delectus sequi maiores aliquam quas. Doloremque consequatur expedita nihil et est.\n\nNon voluptatem aut enim vero doloremque. Facilis iusto autem iste nisi beatae soluta harum. Repellendus est autem et facilis dolore ut. Eos quo quisquam repellat.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(57, 'Et optio ut aliquam qui ut.', 'Itaque et laudantium possimus debitis omnis. Sunt sunt nostrum fuga culpa est ratione quod. Est soluta perspiciatis maiores officia porro praesentium. Qui dolor porro blanditiis nesciunt aperiam et sint. Nulla excepturi quo alias non vel.\n\nIn dicta vel sapiente sunt. Dolor ea itaque ex sed ab et amet aut. Mollitia rerum similique rerum nesciunt.\n\nMolestiae sit dolorum earum voluptatum quibusdam ut. Quam nobis quasi dolore consectetur. Et magnam quos officiis sed excepturi consequatur. Sint ut aut a et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(58, 'Temporibus eius sit quas laboriosam et.', 'Nulla explicabo officia et. Possimus eum vel recusandae nihil sunt. Commodi rerum odit aut quam. Sit doloremque itaque amet rem et.\n\nMaxime nobis molestiae aut ipsa. Nulla delectus et inventore earum ut culpa dolores est. Ut dolorem cupiditate doloremque veritatis quis.\n\nMolestias enim dolorem dolore quis corrupti dolore. Sunt ut sit mollitia et. Est aliquid numquam ab sit consequatur aut. Magni incidunt iste dolor mollitia.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(59, 'Dolore a excepturi incidunt et.', 'Incidunt nobis et accusantium ut cum. Libero aut in voluptatem a blanditiis delectus.\n\nAccusantium delectus qui debitis nobis alias quisquam. Occaecati illum nam et. Voluptatem incidunt adipisci quas neque.\n\nAb hic et laboriosam sit fugiat. Aliquid rerum quia officiis voluptas. Aliquid sit sit ab quo ab laboriosam. Quae accusantium repellat ipsa assumenda et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(60, 'Voluptatem laudantium praesentium voluptas.', 'Qui perspiciatis ad cupiditate dignissimos tempore fugiat sed. Omnis culpa minima recusandae quam nihil incidunt est. Qui quia voluptatem qui quisquam autem ut consequatur voluptates.\n\nSed temporibus dolorum voluptates nihil ad. Itaque animi quasi nam omnis doloremque qui. Nulla atque adipisci accusantium est est ipsam. Sit nostrum consequatur recusandae nesciunt harum.\n\nOptio fugiat modi corporis doloribus inventore. Corrupti aperiam quis cum. Doloremque temporibus eum maxime in.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(61, 'Numquam rerum doloremque blanditiis pariatur consequuntur.', 'Est quo rerum aut id qui placeat vero. Officia laudantium soluta nam dolor dignissimos asperiores aut fugiat. Laudantium aut aut ipsum et. Impedit quaerat cum velit maxime id perspiciatis. Quia ad saepe ut alias autem magnam ut.\n\nReiciendis maiores repudiandae laudantium dolorem. Totam beatae eaque quis sed sit. Accusantium unde deserunt explicabo cumque.\n\nIpsa natus distinctio atque voluptas. Error eveniet enim illo veritatis eius molestiae. Accusantium sit beatae facilis ipsum modi et. Nam quo voluptas laborum ratione porro.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(62, 'Odio quisquam et eum.', 'Culpa accusamus illo sapiente et blanditiis voluptatem cupiditate adipisci. Impedit ut numquam iste nihil perspiciatis laborum non. Quibusdam possimus aut distinctio repellendus.\n\nAssumenda iure aut aut et ex. Nihil et quaerat totam provident vel voluptates. Id est a voluptatem aliquid ad iusto rerum.\n\nNon quasi adipisci numquam ut deserunt. Libero quae ipsam nemo tempore eum maxime tempora. Qui sit odit aut incidunt sapiente totam amet.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(63, 'Dolor animi et accusantium facere.', 'Omnis temporibus consequatur animi a tenetur. Ut dolore nostrum ipsam maxime itaque.\n\nQuis velit ut beatae reiciendis non. Mollitia ea totam totam saepe necessitatibus debitis veniam. Animi sequi et quia veritatis eligendi. Esse laudantium eum quibusdam atque et nemo numquam.\n\nVoluptatem quibusdam quae aut possimus quae repellat. Quia aut dolor ullam asperiores a et. Itaque in quaerat sed. Libero velit ut corporis possimus ex et.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(64, 'Aut et natus autem id.', 'Qui dolorum omnis eum non sit. Eveniet harum mollitia expedita atque aspernatur soluta qui ut. Nihil earum et corrupti facilis. Ad error aut fugit quis optio saepe et.\n\nBlanditiis sequi in quam eaque ducimus. Aperiam voluptatem consequatur ipsum alias eum.\n\nMinima commodi ullam dolores iste et. Occaecati autem et qui quibusdam consequatur. Eum ut tenetur corporis eum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(65, 'Ut assumenda dignissimos dolores.', 'Perspiciatis illo omnis iure. Aut unde voluptatem ut sunt dolor. Officiis placeat impedit nostrum voluptas.\n\nIure nisi enim necessitatibus recusandae consequatur dolorum provident. Officiis veritatis nobis vel qui non enim culpa. Voluptatem delectus tempora facere. Odit fuga in aut reiciendis atque quia deleniti.\n\nEt iusto molestiae maiores ut error ea itaque. Magnam enim modi exercitationem omnis maiores sunt rerum. Suscipit expedita rem reprehenderit molestiae temporibus ratione.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(66, 'Assumenda ut est consequatur sed et.', 'Dolorem eaque aut debitis alias nisi perferendis nam. Nihil quia provident nulla fuga incidunt. Facilis aliquam dicta magnam voluptas. Officiis tenetur at et est dolorem unde dolorem.\n\nEnim magni odio voluptas fugiat delectus occaecati. Deserunt officiis voluptatum neque delectus delectus. Ea qui distinctio maxime qui odio eum quibusdam.\n\nQui ab maiores eius itaque. Occaecati eos dolore ut et qui corrupti. Voluptas doloribus repudiandae temporibus est quasi autem autem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(67, 'Ratione et provident exercitationem.', 'Quibusdam sit in consequatur porro fuga unde. Excepturi a doloremque exercitationem ab et repellat. Occaecati quibusdam quod ea. Qui aliquid nihil sed impedit non reprehenderit consequuntur qui.\n\nCommodi et in qui pariatur ex reiciendis iure. Nam atque animi eos et. Dolores reiciendis ex ut saepe. Et et ab et eum voluptatum sit.\n\nCorporis possimus temporibus tenetur. Voluptates itaque harum sit voluptas harum rerum numquam. Est vel optio reiciendis perferendis eligendi architecto. Est et dolor ullam ipsam aut.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(68, 'Tempora non laborum tempora voluptates est.', 'Qui ipsam voluptatem eius voluptatem eos. Et labore incidunt autem at consequatur. Illo dolor quia voluptatem accusamus perspiciatis.\n\nMolestiae placeat ratione neque distinctio sit excepturi sit. Quis facilis deleniti labore. Nam blanditiis similique quo omnis voluptates quidem. Nostrum et aliquam et laudantium repudiandae reiciendis.\n\nOmnis eligendi eum repellendus vero. Deleniti optio animi enim est eius. Fuga quasi repellendus est deserunt. Fugit delectus tempore culpa saepe.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(69, 'Cumque voluptatibus accusantium.', 'Optio reprehenderit consequatur impedit assumenda voluptatem. Adipisci earum neque quia aut optio error inventore dolores. Quia et ut et quae sit cum. Quo temporibus beatae magni eum.\n\nQui inventore nisi qui voluptatem exercitationem nostrum et quis. Voluptatem dolorem sequi quia. Libero nostrum distinctio odio voluptates hic laudantium architecto.\n\nNihil eius eaque autem eum. Placeat ut sint totam quia. Voluptatem amet dolores voluptatem. Eaque voluptatibus qui id ad sit harum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(70, 'Totam facere laboriosam animi quo.', 'Error consequatur laudantium commodi quis. Saepe repellat cum sunt est unde repudiandae saepe culpa. Ipsum necessitatibus nemo quam expedita ratione qui nostrum quasi.\n\nAtque dolorum in mollitia aliquam ipsum et rerum. Consectetur rerum dolorem rem aut laboriosam tenetur fugit. Soluta pariatur aut reiciendis expedita vel. Eaque porro ratione nam sit distinctio ut harum.\n\nNisi pariatur magnam expedita voluptates ex non. Optio possimus ex dignissimos quas molestias. Quasi id modi sunt dolorem consequatur similique. Sed voluptatem eum unde quos minima id ullam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(71, 'Maxime ipsam soluta.', 'Excepturi eos molestiae id corporis amet. Nesciunt et est qui qui et neque perspiciatis. Modi quis non rerum minus saepe quaerat earum quaerat.\n\nLaudantium odit maxime et dolore suscipit provident. Harum iste minus ratione hic quia officia accusantium. Nulla earum illum quis inventore. Est reiciendis recusandae doloribus fuga.\n\nPerferendis non rem nemo sed quia praesentium quo fuga. Alias quia ut et. Iure vel est repellat quae laborum atque rem occaecati. Perspiciatis quod quis voluptatem nam cum voluptates ut.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(72, 'Provident eum ut ut.', 'Ad odit soluta architecto ratione exercitationem ab tempora. Fugiat et quis dolorem ducimus iusto veritatis vitae. Nisi omnis aut corporis accusamus distinctio amet laboriosam.\n\nNon modi omnis occaecati fugit. Et placeat qui accusantium aut. Illo aut eius qui maxime. Eum unde laudantium dolore ex cumque laudantium.\n\nVeritatis asperiores fugit esse. Quibusdam et ab dolorem quia doloribus assumenda.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(73, 'Dolorum qui in illo.', 'Omnis officia voluptates sed expedita asperiores et sint. Dolorem illo et corporis. Dicta deserunt laborum omnis dolorem ea molestiae consequatur.\n\nReprehenderit voluptatum aut similique. Aperiam accusamus et dolorum eveniet ducimus. Autem aperiam itaque commodi saepe velit sed.\n\nIure ex voluptatem veritatis. Assumenda officiis at sint quia eius pariatur debitis. Nemo non tenetur iure modi.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(74, 'Velit saepe sit.', 'Necessitatibus veniam corporis sint est non laborum. Et aliquam ratione deleniti veniam. Explicabo aut labore illo accusamus aut.\n\nMinima rerum praesentium autem perspiciatis commodi dolores optio illum. Quo mollitia aperiam ad harum dolorem et. Accusantium mollitia eius libero veniam voluptate.\n\nQuos amet hic consequatur accusamus. Tenetur quibusdam placeat aspernatur. Et dolor nihil et enim ipsam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(75, 'Modi ut eos soluta voluptas consequatur.', 'Nisi sit molestiae debitis omnis. Quod deleniti illum tenetur libero. Et sed dolor et maxime sed illo. Perspiciatis sapiente voluptas culpa vel facilis magnam tenetur. Labore pariatur dolor fugit amet voluptatem consequuntur.\n\nNecessitatibus illum ducimus voluptatem beatae eveniet dolor sequi. Voluptate consequuntur quia et. Natus sint in eos enim accusamus ex eveniet voluptatum. Ipsam sunt laudantium eaque porro voluptatibus debitis et.\n\nPorro amet nihil et pariatur in deserunt. Ratione rerum minima animi hic. Vitae alias accusantium hic sed expedita. Quaerat qui iste hic adipisci itaque odio.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(76, 'Dolorem facilis veniam molestiae.', 'Magni fugiat sed ex numquam reprehenderit. Quasi nulla est quisquam voluptas excepturi iure consectetur.\n\nEarum quia dolores maiores unde. Voluptatibus autem rerum omnis distinctio. Et eos autem in sed.\n\nDeserunt minima corrupti ab aut. Sit perspiciatis vel ullam veniam sed sunt. Non sequi eligendi dolorum libero. Nulla quis omnis corporis. Rerum ut quo consequuntur ex autem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(77, 'Illum molestiae enim optio eligendi.', 'Illum minus dolor dolore corporis ratione voluptatibus et. Enim autem sed aspernatur. Optio reiciendis tempora nostrum eligendi voluptas.\n\nExpedita aut ut et ea. Asperiores placeat nemo sed natus.\n\nNumquam magni iure sunt deleniti dignissimos accusamus. Quos vero animi quo velit optio et. Sit qui cupiditate natus architecto.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(78, 'Itaque et dolor temporibus nisi.', 'Aut sed et culpa ex saepe. Eligendi adipisci optio dolor omnis. Nisi nam molestias sed et.\n\nUt quod autem rerum sit et. Ad earum quis in aliquam temporibus eum sed. Expedita dicta et odio inventore voluptas consequatur quasi.\n\nIste quis fuga non nihil dolor assumenda labore. Enim magnam qui fugiat aut alias. Praesentium ducimus et sit dolores occaecati nam enim.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(79, 'Ab reprehenderit similique natus.', 'Nulla qui impedit quas. Fuga eos aperiam aliquid vel. Earum beatae doloremque animi nesciunt ea. Est nam quod ducimus tempore rem ut. A est id accusantium est aut enim.\n\nEligendi ipsa ullam consectetur error et. Quae fugiat suscipit minima qui similique voluptatem. Est voluptates molestiae voluptate aliquam iusto sed.\n\nVoluptatem nesciunt aliquid voluptatem qui. In perferendis nam voluptatibus modi nam voluptatibus sint. Nostrum debitis sapiente hic error. Et dolores corrupti recusandae ullam. Nam repellat dolorem est qui.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(80, 'Nulla dolorem minus eos architecto non.', 'Omnis accusantium aut et nisi. Nulla ab sit quo ipsam quod aut labore. Odio voluptate optio quae corporis dolor odit alias voluptatem.\n\nEt rem aut occaecati fugit et earum illum. Praesentium rerum quidem ut neque iusto ex provident. Facilis enim sit odit ut eius veniam dolores. Aut et ut unde consequatur quaerat.\n\nVoluptates praesentium et quo voluptatibus enim voluptates consequatur. Omnis consequatur officia ut dignissimos autem. Laborum tempora non commodi velit magnam.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(81, 'Quia adipisci in qui voluptas.', 'Rerum dolor adipisci odio repellendus quos enim ut dolorem. Deleniti qui qui id voluptas. Quo placeat ut hic sed.\n\nAliquam in nisi atque vel rerum sint suscipit. Ea reiciendis quia pariatur neque delectus voluptates autem. Minus blanditiis voluptatem aut ut incidunt aut dolore.\n\nQuod tempora id enim tempore corporis at. Sed in voluptatem maiores possimus provident eos rerum. Animi nihil autem illo pariatur quas. Vitae omnis vero qui perspiciatis occaecati non.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(82, 'Minus autem amet totam sit consequuntur.', 'In nisi rerum harum ipsa sit accusamus. Reprehenderit tempore autem deserunt aut veniam ducimus. Est est quaerat facere at ex est.\n\nAdipisci delectus reiciendis et nostrum amet. Reiciendis incidunt eum quisquam architecto. Quis et hic reprehenderit aut.\n\nBeatae ut quia sed inventore ea mollitia rerum. Ratione vero omnis at. Ut ipsa est voluptatem optio numquam amet ut. In autem animi beatae rerum cumque.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(83, 'Perferendis et eveniet exercitationem et voluptatem.', 'Ratione quas et quia qui. Sed est error velit molestiae. Vitae quas totam voluptatem laboriosam nam nesciunt. Quidem aut sit vero voluptates quia culpa temporibus.\n\nTenetur modi nostrum est harum perferendis aliquam sint. Quam atque deleniti qui repellat consequatur molestiae. Incidunt labore fugit iusto deleniti sed eligendi.\n\nEx cumque assumenda fugiat odit ut quae. Placeat vel tempora alias facere qui. Porro iure eos quia excepturi reprehenderit eum laudantium.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(84, 'Non eaque perspiciatis veniam consequatur velit.', 'Enim dolore eum sunt. Eos consectetur explicabo tempora veritatis hic enim. Suscipit vel sit error sunt consequatur quia. Magni ipsa non unde aut qui. Quam placeat sit sit a quo nulla corporis doloremque.\n\nEaque possimus veniam dolorem cum est a. Rerum aut qui eos repudiandae ut. Provident minus quaerat molestiae aut consectetur quam tenetur. Distinctio et ut consequuntur ipsum labore laudantium.\n\nUt et reiciendis atque corporis. At rem quo libero perferendis. Quod sunt distinctio vel dicta officiis voluptas. Adipisci cum neque soluta exercitationem pariatur repellat cum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(85, 'Sint et sit eos voluptatem quas.', 'Ab a ipsam quia perferendis. Qui nihil veritatis optio doloremque. Iusto est et animi et itaque porro reprehenderit.\n\nCum rerum rerum nihil quia. Aperiam quis ipsa atque inventore iste cum laborum. Aut vel expedita nihil cum.\n\nNatus voluptatem itaque nostrum omnis vitae reiciendis dolores. Temporibus rerum natus quisquam. Ut officiis molestiae tempore.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(86, 'Numquam doloremque et impedit.', 'Dignissimos iusto quo excepturi nam est ab. Ipsa natus beatae voluptatem tempora optio perferendis. Iusto maxime libero enim necessitatibus aut pariatur. Est facilis veniam aut beatae.\n\nCorrupti tempora voluptate deleniti eius. Commodi voluptatem exercitationem ut est ex qui. Perspiciatis ea enim accusantium fugit illum minima et. Fugiat excepturi voluptatem dignissimos dolor.\n\nPraesentium facilis qui aut corrupti. Minima corrupti omnis maxime nesciunt aut. Quisquam ut debitis optio laborum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(87, 'Incidunt numquam delectus velit tenetur.', 'Dicta qui ab eius. Quaerat in nobis earum expedita. Debitis enim numquam fugit suscipit. Nobis cum fugit modi quia vero earum.\n\nProvident nobis nobis aut iure unde debitis. Ut sapiente alias totam atque laudantium. Qui ab porro iste consequatur officiis hic est minus. Ratione sint in iste quis.\n\nMolestias possimus quia eum voluptate praesentium et. Alias voluptatem tempora vel dolores saepe quo amet iure. Vel labore ut itaque. Dolorem et at exercitationem saepe nobis.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(88, 'Et porro ipsum.', 'Doloremque omnis qui blanditiis dolore culpa placeat. Dicta dolorem iure velit. Quae quibusdam molestiae aut ipsum temporibus aut quo voluptatem. Maiores impedit aut pariatur fugiat.\n\nUt dolores aperiam ut ea. Occaecati nostrum blanditiis commodi excepturi inventore eligendi est. Consequatur laudantium quia itaque. Possimus quo repudiandae saepe vero voluptates.\n\nSint id molestiae assumenda. Eos vel quis aspernatur ut. A vitae est ipsa fuga optio. Distinctio odit mollitia dolor.', '2019-02-08 22:17:12', '2019-02-08 22:17:12');
INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(89, 'Possimus sed esse voluptas autem.', 'Accusamus aliquam suscipit et repellat doloremque. Culpa temporibus doloremque fuga quo. Accusantium aperiam sint sed minus quasi aliquam dolor. Ea quibusdam aut cum eos corrupti accusantium hic.\n\nEveniet quia iste ipsam earum veritatis accusamus et sed. Numquam voluptas explicabo quidem totam tempora totam sit. Enim voluptatum ea et ut. Facere iusto quo quia quibusdam.\n\nDolores reprehenderit culpa voluptates asperiores distinctio cum. Eveniet doloribus id nemo delectus illum. Commodi sit sit enim accusamus aut. Et perspiciatis ut aliquid amet non eaque.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(90, 'Autem voluptatem rem nihil et.', 'Aspernatur officiis error dicta nulla aspernatur. Eius enim voluptas commodi quidem doloribus vitae dicta. Ut deleniti temporibus sapiente debitis. Omnis error in voluptatem eum.\n\nQui earum voluptatem ut totam. Omnis eum quo velit. Ut et et aut tenetur est beatae omnis. Magni saepe porro minima pariatur vel et. Vitae nisi nam molestiae dolores eum id.\n\nExplicabo mollitia et enim porro ut. Maxime possimus ad molestiae porro nisi at voluptas. Officia officiis officia deleniti sit ut quo aut.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(91, 'Quia eaque qui sed temporibus animi.', 'Exercitationem ullam voluptatem dolor non nihil. Consequuntur laudantium ipsa quam fuga dolores maxime. Rerum inventore consequatur magnam ducimus aut quos placeat. Dolore enim quae iure accusamus.\n\nNemo hic eius tempore reiciendis ad. Iure aliquid aut qui eius blanditiis consequuntur. Incidunt pariatur animi nostrum dolorem saepe. Facere impedit velit rem tempora nulla.\n\nOdit est aspernatur molestiae voluptas similique quod est. Eaque numquam rerum veniam qui alias. Ut non ex voluptatem.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(92, 'Reprehenderit aut hic reprehenderit aut.', 'Rem commodi provident quia reprehenderit fuga aliquam vitae porro. Et fugit explicabo eveniet unde facilis facere. Impedit recusandae nam ut dolorum. Modi sint eveniet et nesciunt sed aperiam.\n\nAsperiores tempore at architecto amet nihil. Repudiandae voluptatem libero vel cumque. Et voluptas dolor soluta non tempora. Laudantium labore aut quia cumque pariatur.\n\nQuisquam et omnis quas ipsam rerum error eos dolor. Fugiat voluptas explicabo beatae ex est voluptatem minima recusandae. Autem enim accusamus qui. Occaecati rerum pariatur repudiandae voluptatum eum itaque quo non.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(93, 'Et aut ut mollitia non deleniti.', 'Ut quidem ut consequuntur dignissimos eum sed. Minus repudiandae et voluptates velit ipsa.\n\nVelit fugit et qui accusamus hic culpa. Nemo nihil ut provident.\n\nHarum voluptas nostrum repellendus rerum nemo laboriosam qui eum. In voluptatem aut quae placeat et aut et. Quia eius suscipit consectetur illum minima suscipit nostrum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(94, 'Rerum aut dolore.', 'Aperiam ut nam modi assumenda sunt quaerat. Eius hic beatae consectetur quia non. Expedita ut mollitia consequatur quos. Porro soluta aspernatur atque facere et et.\n\nSimilique sit dolores consequatur voluptates beatae rerum quia rerum. Quod adipisci sed blanditiis. Sit quia sint impedit. Atque natus et officiis quibusdam est ea.\n\nPlaceat sed rerum fugiat vitae saepe eum eveniet ipsa. Blanditiis perferendis voluptatum ut distinctio inventore natus. Rem ad voluptas illo beatae voluptas.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(95, 'Voluptate aut corrupti ad et.', 'Aut dignissimos fugit aperiam dignissimos quia. Eius sed qui omnis autem quasi. Sequi recusandae ab consequatur expedita ratione. Fuga quisquam enim maiores quae aut.\n\nAmet inventore doloremque autem aperiam sit. Consequuntur libero consequuntur iure animi nihil. Ut sunt aut quidem minima sed. Dolores omnis temporibus natus neque.\n\nMinima quasi atque amet voluptatem quidem nostrum. Consequatur architecto et saepe tenetur rem. Quaerat dolore alias laborum minus.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(96, 'Quam nobis illo explicabo neque aut.', 'Ipsam et dolores cumque quod dolor perspiciatis. Laboriosam dignissimos inventore atque cupiditate iure earum cupiditate.\n\nEos maiores reiciendis praesentium. Aut reprehenderit aut qui ipsum. Voluptas doloremque sed quos adipisci repellat et. Molestias qui sunt ut.\n\nAtque laboriosam nam omnis non necessitatibus non. Id ipsa et provident libero sed. Maiores facere mollitia excepturi voluptas fugiat quas. Quia ut deleniti assumenda est.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(97, 'Quis in quasi.', 'Sequi voluptate quaerat in odio qui molestiae blanditiis. Fuga autem ea natus.\n\nProvident tempore id sint reiciendis atque a possimus. Id maxime delectus facilis ducimus dolorem odit. Corporis illum nulla tenetur harum animi.\n\nUllam ut commodi corporis nisi rerum. Id veniam voluptatem ipsum.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(98, 'Atque recusandae amet qui perferendis quam.', 'Et dicta et assumenda laudantium. Facere aliquam soluta repellat. Rem voluptatem optio animi molestiae quis dolorem dignissimos.\n\nUt odio aut impedit accusantium dolorem magnam voluptatibus voluptas. Quo voluptatum cupiditate et recusandae rem quaerat. Excepturi excepturi neque est repudiandae ullam harum. Sed quod adipisci qui voluptas veritatis minus dolorem.\n\nOmnis reiciendis ut quisquam repudiandae. Et ipsam quaerat architecto rem quas ut dolor. Fugit ullam quisquam sed.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(99, 'Commodi minus expedita maiores.', 'Cupiditate et vel eum et. Magni voluptatem hic eum dolore odio deleniti enim. Qui neque inventore consequuntur labore eius.\n\nIn maiores voluptatem voluptas eius aut. Repellendus et voluptatem sequi adipisci est corrupti. Rerum minus rem cupiditate.\n\nTenetur corrupti atque in aut sapiente accusamus hic qui. Reprehenderit quia et autem neque. Aut sed id explicabo.', '2019-02-08 22:17:12', '2019-02-08 22:17:12'),
(100, 'Et magnam sint et natus.', 'Dolorem officia id porro id. Eos cupiditate debitis accusamus est assumenda animi voluptatum beatae. Enim eum a iusto ut explicabo velit aut. Saepe expedita rerum reiciendis et consequatur.\n\nConsequatur omnis vel fugit nam id ipsa. Mollitia perferendis repellendus inventore aspernatur. Quidem perferendis totam ducimus qui. Et sed blanditiis et et minus voluptatibus illo.\n\nNon et fugiat distinctio minus reiciendis. Vitae nulla mollitia exercitationem ullam praesentium. Aspernatur perspiciatis quo id dolor.', '2019-02-08 22:17:12', '2019-02-08 22:17:12');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
