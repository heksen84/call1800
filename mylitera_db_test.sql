-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 04 2018 г., 17:26
-- Версия сервера: 5.6.34
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mylitera_db_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Arts'),
(2, 'Baby'),
(3, 'Beauty and fragrances'),
(4, 'Books and magazines'),
(5, 'Business to business'),
(6, 'Clothing'),
(7, 'Computers'),
(8, 'Education'),
(9, 'Electronics and telecom'),
(10, 'Entertainment and media'),
(11, 'Financial services and products'),
(12, 'Food retail and service'),
(13, 'Gifts and flowers'),
(14, 'Government'),
(15, 'Health and personal care'),
(16, 'Home and garden'),
(17, 'Nonprofit'),
(18, 'Pets and animals'),
(19, 'Religion and spirituality (for profit)'),
(20, 'Retail (not elsewhere classified)'),
(21, 'Services - other'),
(22, 'Sports and outdoors'),
(23, 'Toys and hobbies'),
(24, 'Travel'),
(25, 'Vehicle sales'),
(26, 'Vehicle service and accessories'),
(27, 'Antiques'),
(28, 'Art and craft supplies'),
(29, 'Art dealers and galleries'),
(30, 'Camera and photographic supplies'),
(31, 'Digital art'),
(32, 'Memorabilia'),
(33, 'Music store (instruments and sheet music)'),
(34, 'Sewing'),
(35, 'Stamp and coin'),
(36, 'Stationary'),
(37, 'Vintage and collectibles'),
(38, 'Clothing'),
(39, 'Furniture'),
(40, 'Baby products (other)'),
(41, 'Safety and health'),
(42, 'Bath and body'),
(43, 'Fragrances and perfumes'),
(44, 'Makeup and cosmetics'),
(45, 'Audio books'),
(46, 'Digital content'),
(47, 'Educational and textbooks'),
(48, 'Fiction and nonfiction'),
(49, 'Magazines'),
(50, 'Publishing and printing'),
(51, 'Rare and used books'),
(52, 'Accounting'),
(53, 'Advertising'),
(54, 'Agricultural'),
(55, 'Architectural'),
(56, 'Chemicals and allied products'),
(57, 'Commercial photography'),
(58, 'Construction'),
(59, 'Consulting services'),
(60, 'Educational services'),
(61, 'Equipment rentals and leasing services'),
(62, 'Equipment repair services'),
(63, 'Hiring services'),
(64, 'Industrial and manufacturing supplies'),
(65, 'Mailing lists'),
(66, 'Marketing'),
(67, 'Multi-level marketing'),
(68, 'Office and commercial furniture'),
(69, 'Office supplies and equipment'),
(70, 'Publishing and printing'),
(71, 'Quick copy and reproduction services'),
(72, 'Shipping and packing'),
(73, 'Stenographic and secretarial support services'),
(74, 'Wholesale'),
(75, 'Children\'s clothing'),
(76, 'Men\'s clothing'),
(77, 'Women\'s clothing'),
(78, 'Shoes'),
(79, 'Military and civil service uniforms'),
(80, 'Accessories'),
(81, 'Retail (fine jewelry and watches)'),
(82, 'Wholesale (precious stones and metals)'),
(83, 'Fashion jewelry'),
(84, 'Computer and data processing services'),
(85, 'Desktops'),
(86, 'Digital content'),
(87, 'eCommerce services'),
(88, 'Maintenance and repair services'),
(89, 'Monitors and projectors'),
(90, 'Networking'),
(91, 'Online gaming'),
(92, 'Parts and accessories'),
(93, 'Peripherals'),
(94, 'Software'),
(95, 'Training services'),
(96, 'Web hosting and design'),
(97, 'Business and secretarial schools'),
(98, 'Child daycare services'),
(99, 'Colleges and universities'),
(100, 'Dance halls'),
(101, 'Elementary and secondary schools'),
(102, 'Vocational and trade schools'),
(103, 'Cameras'),
(104, 'Cell phones'),
(105, 'General electronic accessories'),
(106, 'Home audio'),
(107, 'Home electronics'),
(108, 'Security and surveillance'),
(109, 'Telecommunication equipment and sales'),
(110, 'Telecommunication services'),
(111, 'Telephone cards'),
(112, 'Memorabilia'),
(113, 'Movie tickets'),
(114, 'Movies (DVDs'),
(115, 'Music (CDs'),
(116, 'Cable'),
(117, 'Adult digital content'),
(118, 'Concert tickets'),
(119, 'Theater tickets'),
(120, 'Toys and games'),
(121, 'Slot machines'),
(122, 'Digital content'),
(123, 'Entertainers'),
(124, 'Gambling'),
(125, 'Online games'),
(126, 'Video games and systems'),
(127, 'Accounting'),
(128, 'Collection agency'),
(129, 'Commodities and futures exchange'),
(130, 'Consumer credit reporting agencies'),
(131, 'Debt counseling service'),
(132, 'Credit union'),
(133, 'Currency dealer and currency exchange'),
(134, 'Escrow'),
(135, 'Finance company'),
(136, 'Financial and investment advice'),
(137, 'Insurance (auto and home)'),
(138, 'Insurance (life and annuity)'),
(139, 'Investments (general)'),
(140, 'Money service business'),
(141, 'Mortgage brokers or dealers'),
(142, 'Online gaming currency'),
(143, 'Paycheck lender or cash advance'),
(144, 'Prepaid and stored value cards'),
(145, 'Real estate agent'),
(146, 'Remittance'),
(147, 'Rental property management'),
(148, 'Security brokers and dealers'),
(149, 'Wire transfer and money order'),
(150, 'Alcoholic beverages'),
(151, 'Catering services'),
(152, 'Coffee and tea'),
(153, 'Gourmet foods'),
(154, 'Specialty and miscellaneous food stores'),
(155, 'Restaurant'),
(156, 'Tobacco'),
(157, 'Vitamins and supplements'),
(158, 'Florist'),
(159, 'Gift'),
(160, 'Gourmet foods'),
(161, 'Nursery plants and flowers'),
(162, 'Party supplies'),
(163, 'Government services (not elsewhere classified)'),
(164, 'Drugstore (excluding prescription drugs)'),
(165, 'Drugstore (including prescription drugs)'),
(166, 'Dental care'),
(167, 'Medical care'),
(168, 'Medical equipment and supplies'),
(169, 'Vision care'),
(170, 'Vitamins and supplements'),
(171, 'Antiques'),
(172, 'Appliances'),
(173, 'Art dealers and galleries'),
(174, 'Bed and bath'),
(175, 'Construction material'),
(176, 'Drapery'),
(177, 'Exterminating and disinfecting services'),
(178, 'Fireplace'),
(179, 'Furniture'),
(180, 'Garden supplies'),
(181, 'Glass'),
(182, 'Hardware and tools'),
(183, 'Home decor'),
(184, 'Housewares'),
(185, 'Kitchenware'),
(186, 'Landscaping'),
(187, 'Rugs and carpets'),
(188, 'Security and surveillance equipment'),
(189, 'Swimming pools and spas'),
(190, 'Charity'),
(191, 'Political'),
(192, 'Religious'),
(193, 'Other'),
(194, 'Personal'),
(195, 'Educational'),
(196, 'Medication and supplements'),
(197, 'Pet shops'),
(198, 'Specialty or rare pets'),
(199, 'Veterinary services'),
(200, 'Membership services'),
(201, 'Merchandise'),
(202, 'Services (not elsewhere classified)'),
(203, 'Chemicals and allied products'),
(204, 'Department store'),
(205, 'Discount store'),
(206, 'Durable goods'),
(207, 'Non-durable goods'),
(208, 'Used and secondhand store'),
(209, 'Variety store'),
(210, 'Advertising'),
(211, 'Shopping services and buying clubs'),
(212, 'Career services'),
(213, 'Carpentry'),
(214, 'Child care services'),
(215, 'Cleaning and maintenance'),
(216, 'Commercial photography'),
(217, 'Computer and data processing services'),
(218, 'Computer network services'),
(219, 'Consulting services'),
(220, 'Counseling services'),
(221, 'Courier services'),
(222, 'Dental care'),
(223, 'eCommerce services'),
(224, 'Electrical and small appliance repair'),
(225, 'Entertainment'),
(226, 'Equipment rental and leasing services'),
(227, 'Event and wedding planning'),
(228, 'Gambling'),
(229, 'General contractors'),
(230, 'Graphic and commercial design'),
(231, 'Health and beauty spas'),
(232, 'IDs'),
(233, 'Importing and exporting'),
(234, 'Information retrieval services'),
(235, 'Insurance - auto and home'),
(236, 'Insurance - life and annuity'),
(237, 'Landscaping and horticultural'),
(238, 'Legal services and attorneys'),
(239, 'Local delivery service'),
(240, 'Lottery and contests'),
(241, 'Medical care'),
(242, 'Membership clubs and organizations'),
(243, 'Misc. publishing and printing'),
(244, 'Moving and storage'),
(245, 'Online dating'),
(246, 'Photofinishing'),
(247, 'Photographic studios - portraits'),
(248, 'Protective and security services'),
(249, 'Quick copy and reproduction services'),
(250, 'Radio'),
(251, 'Real estate agent'),
(252, 'Rental property management'),
(253, 'Reupholstery and furniture repair'),
(254, 'Services (not elsewhere classified)'),
(255, 'Shipping and packing'),
(256, 'Swimming pool services'),
(257, 'Tailors and alterations'),
(258, 'Telecommunication service'),
(259, 'Utilities'),
(260, 'Vision care'),
(261, 'Watch'),
(262, 'Athletic shoes'),
(263, 'Bicycle shop'),
(264, 'Boating'),
(265, 'Camping and outdoors'),
(266, 'Dance halls'),
(267, 'Exercise and fitness'),
(268, 'Fan gear and memorabilia'),
(269, 'Firearm accessories'),
(270, 'Firearms'),
(271, 'Hunting'),
(272, 'Knives'),
(273, 'Martial arts weapons'),
(274, 'Sport games and toys'),
(275, 'Sporting equipment'),
(276, 'Swimming pools and spas'),
(277, 'Arts and crafts'),
(278, 'Camera and photographic supplies'),
(279, 'Hobby'),
(280, 'Memorabilia'),
(281, 'Music store - instruments and sheet music'),
(282, 'Stamp and coin'),
(283, 'Stationary'),
(284, 'Vintage and collectibles'),
(285, 'Video games and systems'),
(286, 'Airline'),
(287, 'Auto rental'),
(288, 'Bus line'),
(289, 'Cruises'),
(290, 'Lodging and accommodations'),
(291, 'Luggage and leather goods'),
(292, 'Recreational services'),
(293, 'Sporting and recreation camps'),
(294, 'Taxicabs and limousines'),
(295, 'Timeshares'),
(296, 'Tours'),
(297, 'Trailer parks or campgrounds'),
(298, 'Transportation services - other'),
(299, 'Travel agency'),
(300, 'Auto dealer - new and used'),
(301, 'Auto dealer - used only'),
(302, 'Aviation'),
(303, 'Boat dealer'),
(304, 'Mobile home dealer'),
(305, 'Motorcycle dealer'),
(306, 'Recreational and utility trailer dealer'),
(307, 'Recreational vehicle dealer'),
(308, 'Vintage and collectibles'),
(309, 'New parts and supplies - motor vehicle'),
(310, 'Used parts - motor vehicle'),
(311, 'Audio and video'),
(312, 'Auto body repair and paint'),
(313, 'Auto rental'),
(314, 'Auto service'),
(315, 'Automotive tire supply and service'),
(316, 'Boat rental and leases'),
(317, 'Car wash'),
(318, 'Motor home and recreational vehicle rental'),
(319, 'Tools and equipment'),
(320, 'Towing service'),
(321, 'Truck and utility trailer rental'),
(322, 'Accessories');

-- --------------------------------------------------------

--
-- Структура таблицы `categories2`
--

CREATE TABLE `categories2` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `categories2`
--

INSERT INTO `categories2` (`id`, `name`) VALUES
(1, 'Airlines'),
(2, 'Banks'),
(3, 'Cable'),
(4, 'Car Rental'),
(5, 'Computer'),
(6, 'Consumer Service'),
(7, 'Credit Cards'),
(8, 'Credit Bureaus'),
(9, 'Cruise Ships'),
(10, 'Department Store'),
(11, 'Financial'),
(12, 'Government'),
(13, 'Hotels'),
(14, 'Insurance'),
(15, 'Internet'),
(16, 'Pharmacy'),
(17, 'Phone'),
(18, 'Retail'),
(19, 'Shipping'),
(20, 'Supermarket'),
(21, 'Tolls'),
(22, 'Travel'),
(23, 'Utility');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orgs`
--

CREATE TABLE `orgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(15) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `business_info` varchar(512) NOT NULL,
  `website` varchar(255) NOT NULL,
  `category_id` int(2) UNSIGNED NOT NULL,
  `country_id` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orgs`
--

INSERT INTO `orgs` (`id`, `number`, `company_name`, `business_info`, `website`, `category_id`, `country_id`) VALUES
(1, '123123123', '', 'desc', 'wefwef', 0, 0),
(2, '5555555', '', 'desc', '23к23к23к23', 0, 0),
(3, '34523434', '', 'desc', 'www.mail.com', 0, 0),
(4, '2341111', '', 'desc', 'wefwef', 0, 0),
(5, '333333', '', 'desc', 'fwefwe', 0, 0),
(6, 'tyj', 'tyj', 'tyj', 'this.form.website', 0, 0),
(7, 'tyj', 'tyj', 'tyj', 'this.form.website', 0, 0),
(8, '33333', 'sdfsd', '23r', '123', 0, 0),
(9, '33333', 'sdfsd', '23r', '123', 0, 0),
(10, '33333', 'sdfsd', '23r', '123', 0, 0),
(11, '33333', 'sdfsd', '23r', '123', 0, 0),
(12, '33333', 'sdfsd', '23r', '123', 0, 0),
(13, 'tyj', 'tyj', 'tyj', 'this.form.website', 0, 0),
(14, '636363636363', 'tyj', 'tyj', 'this.form.website', 0, 0),
(15, '44444444', 'tyj', 'tyj', 'this.form.website', 0, 0),
(16, '999999999999999', '56u', '56u', '56u', 0, 0),
(17, '999999999999999', '56u', '56u', '56u', 0, 0),
(18, 'rtnh', 'rtn', 'rtn', 'rtn', 0, 0),
(19, 'tyj', 'tyj', 'tyj', 'tyj', 0, 0),
(20, '00000000', 'visa', '12e12e', '12e12e', 0, 0),
(21, 'tyj', 'tyj', 'tyj', 'tyj', 0, 0),
(22, '55555555', 'visa', '23r23r23r', '23r23r23r', 0, 0),
(23, '34', '435', '345', '345', 0, 0),
(24, '546', '456', '456', '456', 0, 0),
(25, '456', '456', '456', '456', 0, 0),
(26, '34t', '34t', '34t', '34t', 0, 0),
(27, '45y', '45y', '45y', '45y', 0, 0),
(28, '345', '345', '345', '345', 13, 0),
(29, '123', '123', '123', '123', 16, 0),
(30, '123', '123', '123', '123', 14, 0),
(31, '123', '123', '123123', '123', 15, 1),
(32, '123', '123', '123', 'null', 18, 1),
(33, '234', '234', '234', '234', 15, 1),
(34, '123', 'visa', '123', '123', 15, 0),
(35, '123', 'apple', '123', '123', 17, 0),
(36, 'test', 'apple', '123', '123', 17, 1),
(37, '123', 'apple', '123', '123', 14, 0),
(38, '123', '123', '1231', '23', 322, 1),
(39, '123', '123', '1231', '23', 322, 1),
(40, '123', '123', '123', '123', 322, 1),
(41, '123', '1232131', '123', '23', 6, 1),
(42, '55555555', 'apple', 'aplle', 'apple.com', 18, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `searches`
--

CREATE TABLE `searches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `searches`
--

INSERT INTO `searches` (`id`, `name`) VALUES
(1, 'AT&T'),
(2, 'American Airlines'),
(3, 'Avis'),
(4, 'Bank of America'),
(5, 'Chase'),
(6, 'Citibank'),
(7, 'Com Ed'),
(8, 'Dish Network');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ilya', '123@mail.kz', '$2y$10$U1szB301bcGAeivr1qUkMe.TdPnjs7ySUVxNe6/ekm0Yw4NoZ3qoS', 'gCdLGY3Kb2Ri7Q6CDNYQDoCjZSN4tfPQf8aSi0S1RL88wM9O0XCpgQJzsjqK', '2018-03-10 20:44:48', '2018-03-10 20:44:48'),
(2, 'home', 'ilya84@yandex.ru', '$2y$10$8KCBK2JqojL5NbeKn.qbQePulXCkOOtoeTW0VzfndKPGh9iH.1Db2', 'eXEeo1FXrCoMUk5RH51w9FDaxPVEvpbW98yIinPBYMUsEPjdVot4GDSWLV57', '2018-03-18 00:06:47', '2018-03-18 00:06:47'),
(3, 'Ilya', 'heksen84@yandex.ru', '$2y$10$crubMm0VrP945dDjlZkfoeOrZ40.DnF8Y2HJ0J6cxTnu5IaM9tgba', 'H7DQfordBY1XiJ7w18QTVGZhRJ30nwM0V9M3jx3mJD3bDIwQvuFAJylWcoqz', '2018-03-18 08:32:56', '2018-03-18 08:32:56'),
(4, 'Anne Kwong', 'anne.denovolab@gmail.com', '$2y$10$Oi7obZZqfy3NJ31yhh7TyOKC5hngAVeA7nmxSiQ9VlCMFHBgAhKWS', NULL, '2018-03-25 03:17:44', '2018-03-25 03:17:44');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories2`
--
ALTER TABLE `categories2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orgs`
--
ALTER TABLE `orgs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT для таблицы `categories2`
--
ALTER TABLE `categories2`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `orgs`
--
ALTER TABLE `orgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
